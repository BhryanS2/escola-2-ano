/*
crie um  circuito com 3 LEDs nas cores verde, amarelo  e vermelho. O
acionamento dos LEDs deve ser feito de acordo com o valor lido de um potenciômetro liga 
a uma entrada analógica do Arduino, conforme o Quadro 1
*/
const int RedPin = 13;
const int GreenPin = 12;
const int YellowPin = 11;

const int InputPin = A0;
int PotenciometerValue = 0;

void setup() {
  pinMode(RedPin, OUTPUT);
  pinMode(GreenPin, OUTPUT);
  pinMode(YellowPin, OUTPUT);
  pinMode(InputPin, INPUT);
}
void loop() {
  PotenciometerValue = analogRead(InputPin);
  if (PotenciometerValue < 300) {
    digitalWrite(RedPin, LOW);
    digitalWrite(GreenPin, HIGH);
    digitalWrite(YellowPin, LOW);
  }
  else if (PotenciometerValue < 600) {
    digitalWrite(RedPin, LOW);
    digitalWrite(GreenPin, HIGH);
    digitalWrite(YellowPin, HIGH);
  }
  else {
    digitalWrite(RedPin, HIGH);
    digitalWrite(GreenPin, HIGH);
    digitalWrite(YellowPin, HIGH);
  }
  delay(1000);
}