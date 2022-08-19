pointer = 100000;
bands = 30000;
x = downsample(eeg30000Hz, 10);
x = x(1:1000000);
%cLen = length(h2);
fs = 3000;
bp = bandpass(x, [6 10], fs);


[b,a] = sos2tf(SOS,G);

output = filter(b,a,x);
hilbby = filter(coeffs, 1, output);

u = 0:1/3000:2000 * pi;
sinwave = 100 * (sin(2 * pi * 10 * u) + sin(2 * pi * 20 * u));
outputSin = sosfilt(SOS, sinwave);

subplot(3,1,1)
hold on
plot(output, 'Color', 'k')
%plot(x)
plot(x-mean(x))
%plot(sinwave);
%plot(outputSin);
legend('IIR OUTPUT')
title('My IIR Bandpass Filter @ 3 kHz Sampling Rate Cheby II; 4 taps')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer, pointer+bands])
%ylim([-200 200])

subplot(3,1,2)
hold on
plot(bp)
plot(output)

%legend('MATLAB bandpass()', 'My IIR Filter')
title('MATLAB Baseline with IIR Output Overlay')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer pointer+bands])
%ylim([-200 200])

subplot(3,1,3)
hold on
plot(atan2(hilbby(1:length(hilbby)-10),output(11:length(hilbby))), 'Color', 'k')
plot(angle(hilbert(bp)), 'Color','c')
title('MATLAB Baseline + Mine OVERLAY - PHASE; Both computed using angle() and hilbert()')
legend('My IIR Filter','MATLAB')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer pointer+bands])
ylim([-4 4])
