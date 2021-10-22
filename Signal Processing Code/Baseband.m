%clear all;
%close all ;
%Adapted from Ndumiso Khumalo's code.
%Ian Edwards 2021
%Baseband

function Baseband = Baseband(x,fc,fs, plt)

    %sampling parameters                     
    dt = 1/fs;
    T = size(x,1)/fs;
    t = 0: dt: T-dt;
    N = length(x);
     
    %baseband
    It = x.*cos(2*pi*fc*t)';
    Qt = x.*sin(2*pi*fc*t)';
    xbb = complex(It,-Qt);
    
    %low pass filter to remove 2Wo
%    % cutoff frequency Filter at centre frequency, no ball
%     will be thrown at speed of sound to produce fd = 2fc...
    [M_lpf,P_lpf] = butter(6,fc/(fs/2),'low');
    xbb = filter(M_lpf,P_lpf,xbb);
    
    Xw_bb = fft(xbb);
    
    Baseband = xbb;
    %plot baseband signal
    
    if(plt ==1)
        figure; 
    subplot(2,1,1)
    plot(t,real(xbb))   
    title("Time Domain signal of baseband shifted signal");
    xlabel("Time (s)")
    ylabel("Magnitude");
    
    fshift = (-N/2:N/2-1)*(fs/N);
    yshift = fftshift(Xw_bb);
    
    subplot(2,1,2)
    plot(fshift/1e3,(abs(yshift)))
    title("FFT")
    xlabel("Frequency(kHz)")
    ylabel("Amplitude")
    end
    
end