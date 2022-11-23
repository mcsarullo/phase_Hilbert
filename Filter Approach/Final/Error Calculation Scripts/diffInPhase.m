%Include bar graph

% Calculations stem from offline data

% let a_f[] = arduino data for filtered data
% let a_p[] = arduino data for phase

% let f = filtered MATLAB
% let p = phase MATLAB

% 30kHz
pointer = 10000;
bands = 1000;


x = downsample(eeg30000Hz, 10);
fs = 3000;
lag = 401;
f_baseline = bandpass(x, [6 10], fs);
p_baseline = angle(hilbert(f_baseline));
p_baseline = p_baseline(1:length(p_baseline)-lag+1);

[b,a] = sos2tf(SOS,G);
f = filter(b,a,x);
f = f(lag:length(f));
p = angle(hilbert(f));

diff = abs(p-p_baseline);

% PLOTS

subplot(4,1,1)
hold on
title('Filtered Data Overlay');
plot(f_baseline)
plot(f)
%plot(a_f)
xlim([pointer-bands, pointer+bands]);

subplot(4,1,2)
hold on
title('Phase Overlay');
plot(p_baseline)
plot(p)
%plot(a_p)

xlim([pointer-bands, pointer+bands]);

subplot(4,1,3)
hold on
title('Absolute Error Between MATLAB (baseline) and Teensy 4.0 (Visualized as Bar Graph)');
bar(1:15000, diff(1:15000));

xlim([pointer-bands, pointer+bands]);

subplot(4,1,4)
hold on
title('Absolute Error Between MATLAB (baseline) and Teensy 4.0');
plot(1:15000, diff(1:15000));
yline(0);

xlim([pointer-bands, pointer+bands]);


