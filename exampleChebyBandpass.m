    thetaFiltParam.FreqRange = [4 16];         
    thetaFiltParam.FilterOrd = 4;
    thetaFiltParam.Ripple = 20;
    
    [b a] = cheby2(thetaFiltParam.FilterOrd, thetaFiltParam.Ripple, ...
                thetaFiltParam.FreqRange/(lfpSampleRate/2),'bandpass');
    Eegf = filtfilt(b,a,Eeg);
    Eegf = Eegf - mean(Eegf);

    Hilb = hilbert(Eegf);