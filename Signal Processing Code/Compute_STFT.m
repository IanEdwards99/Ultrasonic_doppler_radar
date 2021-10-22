% Short Time Fourier Transform (STFM) Function written by EEE4022 students in 2020 to compute a spectrogram

% Authors: Nadir Aboobaker and Zahier Parker 
% Reviewed: Dr Abdul Gaffar
% Year: 2020/2021
% Adapted by Ian Edwards 2021
function [S, f, t] = Compute_STFT(y,fs, N, OverlapFactor)

% Inputs
%  y - signal of interest (can be real values or complex values)
%  fs  - sampling frequency of the signal in Hz
%  N - Number of samples in a single frame. Should be a power of 2 
%  OverlapFactor - Overlap between successive frames (decimal value). Example: 0.5 means there is 50% overlap of samples between successive  frames
%
% Outputs
% S - computed spectrogram (matrix, complex numbers)
% f = frequency vector (Hz)
% t - time vector (s)
zpad = 10*N;
c = 343;    %Speed of propagation
y = y(:);                                    % Coverting the signal y to a column-vector 
ylen = size(y,1);                            % Signal Length
WindowFunction = hamming(N); 
Overlap_NumSamples = floor(OverlapFactor*N); % convert to integer value 

% Calculate the number of frames to be taken, given the signal size and amount of overlap
hop = N - Overlap_NumSamples; %Window size - overlap amount
NumFrames = 1+floor((ylen-N)/(hop)); 

% Initiation of the STFT matrix to store frames after FFT 
% S = zeros(zpad,NumFrames); 
S = zeros(zpad/2+1,NumFrames); %only positive frequencies

% Executing the STFT 
for CounterFrameNum = 0:(NumFrames-1)
    y_AfterWindowing = y(1+CounterFrameNum*hop : N+CounterFrameNum*hop).*WindowFunction;  % windowing of the sampled data that moves 'overlap' samples for respective frame  
%     Y = fftshift(fft(y_AfterWindowing, zpad));               % fftshift used because the frequency axis has both positive and negative values
      Y =  fft(y_AfterWindowing, zpad);
      Y = Y(1:zpad/2+1)*2; 
    S (:, 1+CounterFrameNum) = Y;                      % Updating STFT matrix  
end 

% Calculating frequency and time vectors 
% Time axis (s)
t = (0:hop:(NumFrames-1)*hop)/fs;
% Frequency axis (Hz)
f = (0:1:(zpad/2))*fs/zpad;
end 