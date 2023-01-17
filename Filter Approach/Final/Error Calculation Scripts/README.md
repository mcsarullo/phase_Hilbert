accuracy.m - Calculates the number of instances of delays in the system occuring within each interval of time as specified by the histogram. This was calculated by first detecting the peak of the sawtooth (for phase) of the MATLAB baseline and the Teensy, and calculating the difference in samples between the two peaks.

diffInPhase.m - Calculates the absolute error between MATLAB baseline and Teensy. A spike is usually witnessed when one sawtooth regresses from +pi to -pi before another, thus making the horizontal length of the spike (measured in samples) representing the delay. 
