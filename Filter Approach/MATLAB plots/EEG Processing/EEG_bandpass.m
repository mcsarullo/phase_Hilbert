y = downsample(eeg30000Hz, 18);
b = bandpass(y(1000:101000), [4 12], 166.66666);

hold on
plot(y)
plot(b)
plot(angle(hilbert(b)))
xlim([45000 46000])