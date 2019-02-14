// Opgave 4.2
// Cris Cadinu

int tekstKwadrant1YPos, tekstKwadrant2YPos,
    tekstKwadrant1XPos, tekstKwadrant2XPos,
    yPosL, yPosR, xPosL, xPosR;

void setup() {
 size(1000,1000);
 background(0);
}

void draw() {
   background(0);
   textSize(10);
   fill(255);
   zegHalloVierMaal("Harry", "Marianne", 4,  "Ludo", "Maaike", 4);
}

void zegHallo(String naam, int xPos, int yPos) {
  text("Hallo " + naam + ", hoe gaat het met je?" , xPos, yPos);
  println(xPos, yPos);
}

void zegHalloVierMaal(String naam1, String naam2, int yPosL, String naam3, String naam4, int yPosR) {
  zegHallo("Hallo " + naam1 + ", hoe gaat het met je?" , kwadrantPositieTekst(xPosL=20), kwadrantPositieTekst(yPosL));
  zegHallo("Hallo " + naam2 + ", hoe gaat het met je?" , kwadrantPositieTekst(xPosR=2), kwadrantPositieTekst(yPosL));
  zegHallo("Hallo " + naam3 + ", hoe gaat het met je?" , kwadrantPositieTekst(xPosL=20), kwadrantPositieTekst(yPosR));
  zegHallo("Hallo " + naam4 + ", hoe gaat het met je?" , kwadrantPositieTekst(xPosR=2), kwadrantPositieTekst(yPosR));

}

void kwadrantPositieTekst(int yPosL, int yPosR, int xPosL, int xPosR) {
  int tekstKwadrant1YPos = height / yPosL;
  int tekstKwadrant2YPos = height - height / yPosR;
  int tekstKwadrant1XPos = width / xPosL; 
  int tekstKwadrant2XPos = width / xPosR;
}
