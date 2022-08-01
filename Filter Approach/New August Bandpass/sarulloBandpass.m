
x = eeg30000Hz(1:5000000);
cLen = length(h2);
fs = 30000;
bp = bandpass(x, [6 10], fs);

a = sarulloBP(x,h2);






subplot(3,1,1)
hold on
plot(a)
title('My Bandpass Filter @ fs = 30kHz; 8001 tap FIR')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 200000])

subplot(3,1,2)
hold on
plot(bp)
title('MATLAB Baseline')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 200000])

subplot(3,1,3)
hold on
plot(a)
plot(bp)
title('MATLAB Baseline + Mine OVERLAY')
xlabel('Samples')
ylabel('Magnitude')
xlim([50000 200000])



