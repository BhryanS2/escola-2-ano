#include <LiquidCrystal.h>
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void setup() {
  lcd.begin(16, 2);
  lcd.print("Carregando..");
  delay(1000);

  for (int positionCounter = 0; positionCounter < 13; positionCounter++) {
    lcd.scrollDisplayLeft();
    delay(150);
  }
  lcd.clear();
  lcd.print("Meu nome e:");
  lcd.setCursor(5, 1);
  delay(1000);
  lcd.print("Bhryan");
}

void loop() {
}