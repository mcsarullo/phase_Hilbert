void setup() {
  Serial.begin(57600);
}
int n = 3500;
int values[3500];

void loop() {
  for(int i = 0; i < n; i++) {
    Serial.println(analogRead(A0));
  }
}
