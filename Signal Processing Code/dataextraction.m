%% Author: Ian Edwards
%The script focuses on SONAR experimentation to measure velocity of objects
%with doppler shift.

%% Clear variables and command window

clear all;
close all;
clc;

myDir = uigetdir; %gets directory
myFiles = dir(fullfile(myDir,'*.mat')); %gets all wav files in struct

fid = fopen( 'med_freq128_3.csv', 'w' );
fprintf( fid, '%s,%s, %s, %s, %s\n', 'File name', 'Max speed - custom method', 'Average Speed - custom method', 'Max speed - power spectrum', 'Average speed - power spectrum');
% fprintf( fid, '%s,%s, %s\n', 'File name','Max speed - power spectrum', 'Average speed - power spectrum');
fclose(fid);
for k = 1:length(myFiles)
  baseFileName = myFiles(k).name;
  fullFileName = fullfile(myDir, baseFileName);
  fprintf(1, 'Now reading %s\n', fullFileName);
  load(fullFileName, 'data', 'Fc_Hz', 'Fs', 'TimeDuration_s');
  % all of your actions for filtering and plotting go here

threshold = -35;
NumSamplesPerFrame = 2^12;
OverlapFactor = 0.9;        

Ts = 1/Fs;                           % Sampling period
t = 0:Ts:(TimeDuration_s);           % time vector for pulse
v_factor = (343/Fc_Hz)/2;
% Pure sinusoid 
TxSignal = sin(2*pi*Fc_Hz*t); 

[TxSignal, data, data_bpf, data_notch, data_shifted, data_out, t] = processDoppler(Fs, Fc_Hz, TimeDuration_s, TxSignal, data);

%y is now just the response from doppler shifts. Compute spectrogram.
[S, f, t_s] = Compute_STFT(data_out,Fs/8, NumSamplesPerFrame, OverlapFactor);
[P1,F,T]=pspectrum(data_out,Fs/8,'spectrogram','FrequencyResolution',128, 'FrequencyLimits',[0 4000],'MinThreshold',-90);
freqs = medfreq(P1, F);
dv1 = freqs * v_factor;
for i = 1:length(dv1)
    if dv1(i) < 1
        dv1(i) = 0;
    end
end
dv1= smoothdata(dv1,'movmean',2);
max_speed = max(dv1,[],'omitnan');
avg = max(movmean(dv1, 2, 'omitnan'));

for i = 2:length(f)-1 % despeckle
    for j = 2:length(t_s)-1
       if ((20*log10(abs(S(i,j-1))) <= threshold) && (20*log10(abs(S(i,j+1))) <= threshold)) || (20*log10(abs(S(i,j))) < threshold)
           S(i,j) = 0.0000001; 
       end
    end
end

for i = 1:length(f)
    if (f(i) < 5.83e-3*Fc_Hz) %5.83e-3 ignores things below 1m/s. 2.92e-3 ignores below 0.5 m/s
        S(i, :) = 0.0000001; 
    end
end
S = 20*log10(abs(S));
S = smoothdata(S, 'movmean', [10 10]); 
datan = norm_db(S);

max_frequencies = zeros(length(t_s),1);
for frame = 1:length(t_s)
    [max_S, index] = max(S(:, frame)); %gets max fourier domain magnitude in frame.
    if (max_S > threshold) && (f(index) < Fc_Hz/3)
        max_frequencies(frame) = f(index); %store corresponding frequency value
    else
        max_frequencies(frame) = 0;
    end
end
instant_v = max_frequencies*v_factor;
instant_v = smoothdata(instant_v,'movmean',5);
max_v = max(instant_v);
avg_v = max(movmean(instant_v, 5));

fid = fopen( 'med_freq128_3.csv', 'a' );
fprintf( fid, '%s,%f,%f, %f, %f\n', baseFileName, max_v, avg_v, max_speed, avg);
end
fclose( fid );
disp('Done!');


