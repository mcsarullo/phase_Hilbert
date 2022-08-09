pointer = 2500;
bands = 100;
x = downsample(eeg30000Hz, 180);
%cLen = length(h2);
fs = 166.66666;
bp = bandpass(x, [6 10], fs);

lowpass = sarulloBP(x,lp, 'a');
a = sarulloBP(lowpass, hp, 'a');

%a = sarulloBP(x, bCoeffs);

hilb = sarulloBP(a, coeffs, 'h');

phase = atan2(hilb, a);



subplot(3,1,1)
hold on
plot(x)
plot(a)
plot(bp, 'Color', 'k')
%plot(x)
%plot(phase, 'Color', 'k')
title('My Bandpass Filter @ fs = 166.666 Hz')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer pointer+bands])
%ylim([-200 200])

subplot(3,1,2)
hold on
plot(bp)
%plot(x)
title('MATLAB Baseline')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer pointer+bands])
%ylim([-200 200])

subplot(3,1,3)
hold on
plot(phase, 'Color', 'k')
plot(angle(hilbert(bp)), 'Color','c')
title('MATLAB Baseline + Mine OVERLAY')
xlabel('Samples')
ylabel('Magnitude')
xlim([pointer pointer+bands])
ylim([-4 4])



