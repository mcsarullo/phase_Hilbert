FIR_HILBERT.m - MATLAB file that can perform the Hilbert Transform on filtered (bandpassed) data in a manner that can be replicated with the C programming language. As such, it does not use angle() or hilbert() functions.

IIR.fda - MATLAB filter designer presets for use in bandpassing the 30 kHz data with a 3 kHz sampling frequency.

IIR_2k.fda - MATLAB filter designer presets for use in bandpassing the 20 kHz data with a 2.5 kHz sampling frequency.

BOTH .fda FILES ARE USED FOR ACQUIRING A SOS MATRIX AND G ARRAY. Use sos2tf(SOS, G) to convert into b[] and a[] coeff. arrays.

IIR_BP.m - IIR bandpass filter that uses functions that can be easily replicated with the C programming language. As such, it does not use bandpass(). 
