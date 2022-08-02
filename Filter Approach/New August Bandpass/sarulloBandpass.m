
x = eeg30000Hz(1:2000000);
cLen = length(h2);
fs = 30000;
bp = bandpass(x, [6 10], fs);

a = sarulloBP(x,h2);
hilb = sarulloBP(a, coeffs);

phase = atan2(hilb, a);



subplot(3,1,1)
hold on
plot(a)
plot(x)
plot(phase, 'Color', 'k')
title('My Bandpass Filter @ fs = 30kHz; 8001 tap FIR')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 250000])
ylim([-200 200])

subplot(3,1,2)
hold on
plot(bp)
plot(x)
title('MATLAB Baseline')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 250000])
ylim([-200 200])

subplot(3,1,3)
hold on
plot(phase, 'Color', 'k')
plot(angle(hilbert(bp)), 'Color','c')
title('MATLAB Baseline + Mine OVERLAY')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 250000])
ylim([-4 4])



