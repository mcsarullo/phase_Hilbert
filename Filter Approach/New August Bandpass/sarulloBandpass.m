
x = downsample(eeg30000Hz, 180);
cLen = length(h2);
fs = 30000;
bp = bandpass(x, [6 10], fs);

lowpass = sarulloBP(x,lp);
a = sarulloBP(lowpass, hp);
hilb = sarulloBP(a, coeffs);

phase = atan2(hilb, a);



subplot(3,1,1)
hold on
plot(a)
%plot(x)
%plot(phase, 'Color', 'k')
title('My Bandpass Filter @ fs = 30kHz; 8001 tap FIR')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 51000])
%ylim([-200 200])

subplot(3,1,2)
hold on
plot(bp)
plot(x)
title('MATLAB Baseline')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 51000])
%ylim([-200 200])

subplot(3,1,3)
hold on
plot(phase, 'Color', 'k')
plot(angle(hilbert(bp)), 'Color','c')
title('MATLAB Baseline + Mine OVERLAY')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 51000])
ylim([-4 4])



