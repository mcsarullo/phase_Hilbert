comboSine.m - MATLAB for creating artificial sine waves for experimentation without signal generator. 

BP_Filter.ino - C for Bandpass filter with some hard-coded waves already included.

FilterDesignManual.ino - original C file for Hilbert filter with hard-coded coefficient values. Replicates MATLAB output (and documentation) nearly perfectly. 7/15/22 - Now calculates phase

Working_Without_Analog.ino - combines the bandpass, hilbert filters with phase extraction. About 10 ms per 1300 entries (7.6 microseconds per entry).


FIFO.ino - FIFO approach to data WITHOUT analog input at this point. 3-4ms processing time per entry.
