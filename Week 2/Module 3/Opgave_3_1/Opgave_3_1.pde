int black = #000000;
int back = #C5FAF0;
int textSize = 50;

void setup() {
  size(400,400);
  background(back);
}
  
void draw() {
  background(back);
  int sec = millis();
  textSize(textSize);
  text(sec / 1000, width / 2 - textSize / 2, height / 2 + textSize / 2);
}
