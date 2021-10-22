%% Author: Ian Edwards
%The script focuses on SONAR experimentation to measure velocity of objects
%with doppler shift.

%% Clear variables and command window

clear all;
close all;
clc;

%% Parameters

c = 343;                            % [m/s]  ->speed of sound wave
Fc_Hz = 40e3;                        % [Hz]
% Fc_Hz = 12e3;

TimeDuration_s = 5;                  % [s]  
Fs = 192e3;    
% Fs = 44.1e3;                         % [Hz]   ->Sampling rate. So 44 100 samples are obtained in one second
% Fs = 192e3; or 44.1                % Max sample rate for XONAR U5 soundcard.
Ts = 1/Fs;                           % Sampling period
t = 0:Ts:(TimeDuration_s);           % time vector for pulse                      % Number of samples taken.

% Compute the spectrogram 
NumSamplesPerFrame =  2^(12);           % Ensure its a power of 2
OverlapFactor = 0.9;                    % Overlap factor of 50% between successive frames

%% Generate the transmit signal

% Pure sinusoid 
TxSignal = sin(2*pi*Fc_Hz*t);

%% Play out transmit signal through the speakers
% soundsc(TxSignal,Fs, 24) % Transmit the signal. 24 is resolution in bits

% % Record received samples from the microphone
% % 
% RecLength_samples = length(TxSignal);
% RecLength_s = RecLength_samples*1/Fs; 
% recObj = audiorecorder(Fs,24,1); %Use only channel 1
% recordblocking(recObj, RecLength_s);  % Records audio for a fixed number of seconds
% data = getaudiodata(recObj);   % Store recorded audio signal in double-precision array
% save('testing.mat', 'data');
load('issue.mat', 'data', 'TimeDuration_s')

%Shifted over by 0.2 seconds because there is a delay from transmission to
%receiving. Received signal comes in 0.2 seconds later.

start = 0.2/(1/Fs); %divide timestamp by delay amount to get sample nr.
TxSignal = TxSignal(start:end-1);
data = data(start:end-1);
t = 0.2:Ts:TimeDuration_s;
N = length(t);
data(1:5)=0;
data(end-5:end)=0;

delta_f = 1/(N*(1/Fs));
if mod(N,2)==0    % case N even
    f_axis = (-N/2:(N/2-1))*delta_f;    
else   % case N odd
    f_axis = (-(N-1)/2 : (N-1)/2)*delta_f; 
end 

%% Process received signal into usable format

%Remove DC offset and noise around DC with BPF - dont want it shifted when we
%baseband shift.
% 
Fpass1 = Fc_Hz-0.554*Fc_Hz;        % First Passband Frequency make this Fc - 0.554*Fc
Fstop1 = Fpass1 - 100;        % First Stopband Frequency Fpass1 - 100
Fpass2 = Fc_Hz+0.554*Fc_Hz;       % Second Passband Frequency make this Fc + 0.554*Fc
Fstop2 = Fpass2 + 100;       % Second Stopband Frequency make this Fpass2 + 100

[b,a] = butter(6, [Fstop1 Fstop2]/(Fs/2),'bandpass');
data2 = filter(b,a, data);

% % figure;
% % freqz(b,a, faxis, Fs);
% % title('Frequency response of BPF around upper and lower Doppler frequencies');


%creating notch filter coeficcients - filter out 40 kHz clutter
w0=Fc_Hz/(Fs/2);
bw=w0/1000;
[b,a]=iirnotch(w0,bw);

% % figure;
% % freqz(b,a, faxis, Fs);
% % title('Frequency response of 40 kHz notch filter attentuating received clutter');


%Remove clutter, (which is now at 0 Hz)
data3 = data2 - mean(data2);
data3 = filter(b,a, data3);

% ------------------------------------------------------------------------

% base band shift signal. DC offset has been removed.
data_shifted = Baseband(data3, Fc_Hz, Fs, 0);
RX = (fftshift(abs(fft(data_shifted)))); %FFT of baseband shifted signal

% Down sample
y_down = downsample(data_shifted, 8);
N = length(y_down);
delta_f = 1/(N*(1/Fs/8));
% f_axis = (0:(N/2-1))*deltaf; 
if mod(N,2)==0    % case N even
    faxis = (-N/2:(N/2-1))*delta_f;    
else   % case N odd
    faxis = (-(N-1)/2 : (N-1)/2)*delta_f; 
end 

figure;
plot(faxis, (8/(Fs))*fftshift(abs(fft(y_down))));
title("Final downsampled signal");

k = (343/Fc_Hz)/2;
% y is now just the response from doppler shifts. Compute spectrogram.
[S, f, t_s] = Compute_STFT(y_down,Fs/8, NumSamplesPerFrame, OverlapFactor);
[P1,F,T]=pspectrum(y_down,Fs/8,'spectrogram','FrequencyResolution',128,'MinThreshold',-60);


pspectrum(y_down,Fs/8,'spectrogram','FrequencyResolution',128,'MinThreshold',-60);
dv1=medfreq(P1,F)*k;

for i = 1:length(dv1)
    if dv1(i) < 0
        dv1(i) = 0;
    end
end

dv1= smoothdata(dv1,'movmean',5);
disp('Max: ');
disp(max(abs(dv1),[], 'omitnan'));
disp('Avg: ');
disp(mean(abs(dv1), 'omitnan'));
% 
figure;
hold on
plot(T, abs(dv1));
yline(max(abs(dv1)), 'r');
yline(mean(abs(dv1), 'omitnan'), 'b--');
title("median approach");
hold off

datan = abs(S);
datan = datan-min(datan(:));
datan = datan/max(datan(:));
datan = 20*log10(datan);

for i = 2:length(f)-1
    for j = 2:length(t_s)-1
       if datan(i,j) < -60
           datan(i,j) = -100;
       end
    end
end

% % Plot the spectrogram 
% v = f.*k;
% figure; imagesc(t_s,v,datan, [-60, 0]);
% ylim([0 10])
% xlabel('Time (s)');
% ylabel('Doppler Frequency (kHz)');
% grid on;
% colorbar;
% colormap('jet');
% set(gca,'YDir','normal')

datan = smoothdata(datan, 'movmedian', 50);

% Calculate velocities (max, avg, instantaneous)
max_frequencies = zeros(length(t_s),1);
for frame = 1:length(t_s)
    [max_S, index] = max(datan(:, frame)); %gets max fourier domain magnitude in frame.
    if (max_S > -60)
        max_frequencies(frame) = f(index); %store corresponding frequency value
    else
        max_frequencies(frame) = 0;
    end
end
k = (343/Fc_Hz)/2;

max_v = max(abs(max_frequencies))*k;
disp('Max: ');
disp(max_v);
avg_v = mean(abs(max_frequencies))*k;
disp('avg: ');
disp(avg_v);
instant_v = max_frequencies*k;

instant_v = smoothdata(instant_v, 'movmean', 3);

v3 = smoothdata(instant_v,'movmean',10);
figure;
hold on
plot(t_s, instant_v);
yline(max_v, "r");
yline(avg_v, "b--");
title("My approach");
hold off

% Plot the spectrogram 
v = f.*k;
figure; imagesc(t_s,v,datan, [-60, 0]);
ylim([0 10])
title("Spectrum after smoothing")
xlabel('Time (s)');
ylabel('Doppler Frequency (kHz)');
grid on;
colorbar;
colormap('jet');
set(gca,'YDir','normal')

TX = abs(fftshift(real(fft(TxSignal))))*Ts;
figure;
subplot(5,1,1);
plot(f_axis/1e3, TX); %Get correct amplitude by multipling by delta t - time domain sample spacing.
title("FFT of Transmitted Signal");
xlabel("Frequency (kHz)");
ylabel("Magnitude");
subplot(5,1,2);
plot(f_axis/1e3, abs(fftshift(real(fft(data))))*Ts);
title("FFT of received signal");
xlabel("Frequency (kHz)");
ylabel("Magnitude");
subplot(5,1,3);
plot(f_axis/1e3, abs(fftshift(real(fft(data2))))*Ts);
title("FFT of DC filtered signal");
xlabel("Frequency (kHz)");
ylabel("Magnitude");
subplot(5,1,4);
plot(f_axis/1e3, fftshift(abs(fft(data3)))*Ts);
title("FFT of notch filtered signal");
xlabel("Frequency (kHz)");
ylabel("Magnitude");
subplot(5,1,5);
plot(f_axis/1e3, RX*Ts);
title("FFT of baseband shifted notch filtered signal - doppler frequencies");
xlabel("Frequency (kHz)");
ylabel("Magnitude");








