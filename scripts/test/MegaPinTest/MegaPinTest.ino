void setup() {
}



void loop() {
  
  for(int i=0;i<22;i++){
    pinMode(i, OUTPUT);
    digitalWrite(i, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(200);              // wait for a second
    digitalWrite(i, LOW);    // turn the LED off by making the voltage LOW
  }
  
  for(int i=22;i<53;i=i+2){
    pinMode(i, OUTPUT);
    digitalWrite(i, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(200);              // wait for a second
    digitalWrite(i, LOW);    // turn the LED off by making the voltage LOW
  }

  for(int i=23;i<54;i=i+2){
    pinMode(i, OUTPUT);
    digitalWrite(i, HIGH);   // turn the LED on (HIGH is the voltage level)
    delay(200);              // wait for a second
    digitalWrite(i, LOW);    // turn the LED off by making the voltage LOW
  }



  pinMode(A0, OUTPUT);
  pinMode(A1, OUTPUT);
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  pinMode(A4, OUTPUT);
  pinMode(A5, OUTPUT);
  pinMode(A6, OUTPUT);
  pinMode(A7, OUTPUT);
  pinMode(A8, OUTPUT);
  pinMode(A9, OUTPUT);
  pinMode(A10, OUTPUT);
  pinMode(A11, OUTPUT);
  pinMode(A12, OUTPUT);
  pinMode(A13, OUTPUT);
  pinMode(A14, OUTPUT);
  pinMode(A15, OUTPUT);
  digitalWrite(A0, HIGH);delay(200);digitalWrite(A0, LOW);
  digitalWrite(A1, HIGH);delay(200);digitalWrite(A1, LOW);
  digitalWrite(A2, HIGH);delay(200);digitalWrite(A2, LOW);
  digitalWrite(A3, HIGH);delay(200);digitalWrite(A3, LOW);
  digitalWrite(A4, HIGH);delay(200);digitalWrite(A4, LOW);
  digitalWrite(A5, HIGH);delay(200);digitalWrite(A5, LOW);
  digitalWrite(A6, HIGH);delay(200);digitalWrite(A6, LOW);
  digitalWrite(A7, HIGH);delay(200);digitalWrite(A7, LOW);
  digitalWrite(A8, HIGH);delay(200);digitalWrite(A8, LOW);
  digitalWrite(A9, HIGH);delay(200);digitalWrite(A9, LOW);
  digitalWrite(A10, HIGH);delay(200);digitalWrite(A10, LOW);
  digitalWrite(A11, HIGH);delay(200);digitalWrite(A11, LOW);
  digitalWrite(A12, HIGH);delay(200);digitalWrite(A12, LOW);
  digitalWrite(A13, HIGH);delay(200);digitalWrite(A13, LOW);
  digitalWrite(A14, HIGH);delay(200);digitalWrite(A14, LOW);
  digitalWrite(A15, HIGH);delay(200);digitalWrite(A15, LOW);
  
  
}