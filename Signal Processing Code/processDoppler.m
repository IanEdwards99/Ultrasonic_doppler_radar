%% Author: Ian Edwards
%The function processes data for a CW Doppler RADAR operating at carrier
%frequency Fc_Hz. It produces all the Doppler frequencies from a received
%signal.

function [TxSignal, data, data_bpf, data_notch, data_shifted, data_out, t] = processDoppler(Fs, Fc_Hz, TimeDuration_s, TxSignal, data)
    c = 343; % [m/s]  ->speed of sound wave
    Ts = 1/Fs; % Sampling period
    t = 0:Ts:(TimeDuration_s); % time vector for pulse
    
    % Fs -> Sample rate [Hz]
    % Fc_Hz -> Carrier Frequency [Hz]
    % Time_Duration_s -> Transmit time (signal duration)
    % Tx_Signal -> Transmitted signal
    % data -> Received signal

    %Shifted over by 0.2 seconds because there is a delay from transmission to
    %receiving. Received signal comes in 0.2 seconds later.
    start = 0.2/(1/Fs);
    TxSignal = TxSignal(start:end-1);
    data = data(start:end-1);
    t = 0.2:Ts:TimeDuration_s;
    N = length(t);

    %% Process received signal into usable format

    % Remove DC offset and noise around DC with BPF - dont want it shifted when we
    % baseband shift.
    % First Passband Frequency make this Fc - 0.554*Fc
    Fpass1 = Fc_Hz-0.554*Fc_Hz;
    % First Stopband Frequency Fpass1 - 100
    Fstop1 = Fpass1 - 100;
    % Second Passband Frequency make this Fc + 0.554*Fc
    Fpass2 = Fc_Hz+0.554*Fc_Hz;
    % Second Stopband Frequency make this Fpass2 + 100
    Fstop2 = Fpass2 + 100;       

    [b,a] = butter(6, [Fstop1 Fstop2]/(Fs/2),'bandpass');
    data_bpf = filter(b,a, data);

    %------------------------------------------------------------------------
    % Create notch filter around Fc_Hz to remove clutter.
    % creating notch filter coeficcients:
    w0=Fc_Hz/(Fs/2);
    bw=w0/1000;
    [b,a]=iirnotch(w0,bw);
    
    data_notch = data_bpf - mean(data_bpf);
    data_notch = filter(b,a, data_notch);
    %------------------------------------------------------------------------
    % base band shift signal. DC offset has been removed.
    data_shifted = Baseband(data_notch, Fc_Hz, Fs, 0);
    
    % Down sample since only frequencies close to 0 Hz are relevant now.
    data_out = downsample(data_shifted, 8);
end








