x = eeg30000Hz

sampleNum = 1;
[b,a] = sos2tf(SOS,G);

in = x(sampleNum);

    outBP = filter(b,a,x);

    if(bufferCounter < bufLen) { // STARTUP
      firBuffer[bufferCounter] = outBP;
      bufferCounter++;
      if(bufferCounter >= bufLen - lag + 1 && bufferCounter < bufLen) {
        realLag[bufferCounter - lag] = outBP;
      }
    }
    else {
      
      for(int j = 0; j < lag; j++) { // FIFO REFILL
        realLag[j] = realLag[j + 1];
      }
      for(int k = 0; k < bufLen-1; k++) { // FIFO REFILL
        firBuffer[k] = firBuffer[k + 1];
      }
      realLag[lag] = outBP;
      firBuffer[400] = outBP;


      tmp = 0;
      for(int i = 0; i < bufLen; i++) {
        tmp += h[bufLen-1-i] * firBuffer[i];
      }

      
      outH = tmp;
      
      p = atan2(outH, realLag[0]);
      if(p > desiredPhase - 0.05 && p < desiredPhase + 0.05 && checkWave == true) {
%something to show signal
        checkWave = false;
      }
      else {
        if(desiredPhase > -3) {
          if(p < desiredPhase - 0.1) {
            checkWave = true;
          }
        }
        else {
          if(p > desiredPhase + 0.1) {
            checkWave = true;
          }
        }

      }


      
      
      
    }