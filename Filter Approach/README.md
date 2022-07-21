comboSine.m - MATLAB for creating artificial sine waves for experimentation without signal generator. 

BP_Filter.ino - C for Bandpass filter with some hard-coded waves already included.

FilterDesignManual.ino - original C file for Hilbert filter with hard-coded coefficient values. Replicates MATLAB output (and documentation) nearly perfectly. 7/15/22 - Now calculates phase

Working_Without_Analog.ino - combines the bandpass, hilbert filters with phase extraction. About 10 ms per 1300 entries (7.6 microseconds per entry).

FIFO.ino - FIFO approach to data WITHOUT analog input at this point. 3-4ms processing time per entry.

FIFO_RT.ino - FIFO approach to data USING REAL TIME analog input. 5-6ms processing time per entry. Currently phase shifted and needs to be fixed.

FIFO_RT_DIG.inno - FIFO approach with real data. Digital signals outputted from teensy at phase values changeable in code (one variable). 5-6ms delay on non-interested entries, 8-9ms delay on entries of interest.
