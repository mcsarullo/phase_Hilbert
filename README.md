# phase_Hilbert
Obtaining phase values of theta rhythms using the Hilbert Transform.



fastInput.ino - C file that communicates with the Arduino to read in analog input at about 1.2 ms per entry.

successfulGraphing.m - MATLAB file that successfully graphs analog input and its respective phase. However, it suffers from the fact that plotting in MATLAB takes significantly more time than it takes to read analog data from the Serial port, making the plotting delayed, but the input still real-time. 
