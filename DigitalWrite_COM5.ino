#include <stdio.h>
#include <string.h>


int outputPin = 13;

void setup() {
  Serial.begin(57600);
  pinMode(outputPin, OUTPUT); // allows for digital output
}

char buf[50]; // declares buffer

void loop() {
  if(Serial.available() > 0) { // only reads if serial data is available to save processing time
    //Serial.println(millis()); // timing
    int rlen = Serial.readBytesUntil('\n', buf, 50); // reads line of data from MATLAB
    char val[50] = "1200"; // 1200 is the value used to test if the Arduino is actually recognizing the MATLAB output

    if(strcmp(buf, val) == 0) { // Checks if value from MATLAB is correct (1200)
          digitalWrite(outputPin, HIGH);
          //delay(5000); // delays can be changed, just used this for testing.
          digitalWrite(outputPin, LOW);
          //delay(500);
    }
    memset(buf, 0, sizeof buf); // resets buffer
    //Serial.println(millis());
  }
    
}
