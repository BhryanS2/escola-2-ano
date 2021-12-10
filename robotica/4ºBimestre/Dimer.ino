/*
Dimmer
Descriçã: 
Controle o brilho de um LED usando uma saída PWM do Arduino 
A saída a qual o LED estiver conectado, deverá ser proporcional a um valor lido de um potenciômeto, 
ou seja, girando o eixo do potenciômetro no sentido horário ou anti-horário, o LED ficará mais
claro ou mais escuro. Assim, se o valor lido for 0, o LED estará totalmente apagado (brilho
mínimo). Se o valor lido for 1023, o LED estará totalmente aceso (brilho máximo). Valores
intermediários provocarão um brilho proporcional. Dica: como a função analogRead retorna
valores de 0 a 1023 e a função  analogWrite recebe valores de 0 a 255, pode-se utilizar a
função  map()  para  transformar  uma  escala  de  0  a  1023  em  uma  escala  de  0  a  255,  ou,
simplesmente dividir o valor lido por 4.
Componentes necessários:
• 01 Led;
• 01 Resistor 300 ;
• 01 Potenciômetro 10 k.
*/

const int led = 13;
const int pot = A0;

void setup() {
  pinMode(led, OUTPUT);
  pinMode(pot, INPUT);
}

void loop() {
  int valor = map(analogRead(pot), 0, 1023, 0, 255);
  analogWrite(led, valor);
  delay(500);
}