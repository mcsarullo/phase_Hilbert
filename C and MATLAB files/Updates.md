# phase_Hilbert
Obtaining phase values of theta rhythms using the Hilbert Transform.



fastInput.ino - C file that communicates with the Arduino to read in analog input at about 1.2 ms per entry using the COM6 Port.

successfulGraphing.m - MATLAB file that successfully graphs analog input and its respective phase. However, it suffers from the fact that plotting in MATLAB takes significantly more time than it takes to read analog data from the Serial port, making the plotting delayed, but the input still real-time. Graphing piece can be taken out for max efficiency.

DigitalWrite_COM5.ino - C file that writes digital input to the second Arduino. (Right now it's configured for LED). Also features a conditional based on output from the corresponding MATLAB file.

DigitalWrite_COM5.m - MATLAB file that successfully writes data to the COM5 Serial Port based on input from the corresponding C file.
