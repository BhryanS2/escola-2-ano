// C++ code
const int redPin = 13;
const int greenPin = 12;
const int yellowPin = 11;

char input;
/*
O estado do led green deve inverter quando receber o caractere 'a'
B = !yellow
C = !red
*/
void setup() {
  Serial.begin(9600);
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(yellowPin, OUTPUT);
}

void loop() {
  if (Serial.available() > 0) {
    input = Serial.read();
    if (input == 'a') {
      digitalWrite(greenPin, !digitalRead(greenPin));
    }
    if (input == 'b') {
      digitalWrite(yellowPin, !digitalRead(yellowPin));
    }
    if (input == 'c') {
      digitalWrite(redPin, !digitalRead(redPin));
    }
  }
}