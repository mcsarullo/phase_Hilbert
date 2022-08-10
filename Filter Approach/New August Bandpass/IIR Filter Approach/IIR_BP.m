pointer = 15000;
bands = 30000;
x = downsample(eeg30000Hz, 10);
x = x(1:1000000);
%cLen = length(h2);
fs = 3000;
bp = bandpass(x, [6 10], fs);


[b, a] = sos2tf(SOS,G);

output = filtfilt(SOS, G, x);
%output = sarulloIIR(x,b,a)

u = [0:1/3000:2000 * pi];


subplot(3,1,1)
hold on
plot(output, 'Color', 'k')
%plot(x-mean(x))
plot(100 * sin(2 * pi * 7 * u))
legend('IIR OUTPUT')
title('My IIR Bandpass Filter @ 3 kHz Sampling Rate Cheby II; 24 taps')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer pointer+bands])
%ylim([-200 200])

subplot(3,1,2)
hold on
plot(bp)
plot(output)
legend('MATLAB bandpass()', 'My IIR Filter')
title('MATLAB Baseline with IIR Output Overlay')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer pointer+bands])
%ylim([-200 200])

subplot(3,1,3)
hold on
plot(angle(hilbert(output)), 'Color', 'k')
plot(angle(hilbert(bp)), 'Color','c')
title('MATLAB Baseline + Mine OVERLAY - PHASE; Both computed using angle() and hilbert()')
legend('My IIR Filter','MATLAB')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer pointer+bands])
ylim([-4 4])
