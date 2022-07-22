y = downsample(eeg30000Hz, 180);
int = y(1000:6000);
b = bandpass(int, [4 12], 166.66666);

hold on
plot(int)
plot(b)
plot(angle(hilbert(b)))
xlim([0 2500]);