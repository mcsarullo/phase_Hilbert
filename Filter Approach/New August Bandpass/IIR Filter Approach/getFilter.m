function Hd = getFilter


N      = 10;    % Order
Fstop1 = 2;     % First Stopband Frequency
Fstop2 = 30;    % Second Stopband Frequency
Astop  = 100;   % Stopband Attenuation (dB)
Fs     = 3000;  % Sampling Frequency

h = fdesign.bandpass('n,fst1,fst2,ast', N, Fstop1, Fstop2, Astop, Fs);

Hd = design(h, 'cheby2', ...
    'SystemObject', true);


