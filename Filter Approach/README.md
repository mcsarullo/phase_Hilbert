comboSine.m - MATLAB for creating artificial sine waves for experimentation without signal generator. 

BP_Filter.ino - C for Bandpass filter with some hard-coded waves already included.

FilterDesignManual.ino - original C file for Hilbert filter with hard-coded coefficient values. Replicates MATLAB output (and documentation) nearly perfectly. 7/15/22 - Now calculates phase

allCombined.ino - combines the bandpass, hilbert filters with phase extraction. About 1.2ms per entry.

NOTE: Apparently the teensy 4.0 has a higher quality processor than the mega. I may experiment using the teensy for processing, and the program would be the same. The only library I use is compatible with all arduino devices, and my hilbert/phase things are my own pure C code so it would likely work. 
