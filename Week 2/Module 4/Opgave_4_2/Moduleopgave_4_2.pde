// Opgave 4.2
// Cris Cadinu

int tekstKwadrant1YPos, tekstKwadrant2YPos,
    tekstKwadrant1XPos, tekstKwadrant2XPos;

void setup() {
 size(1000,1000);
 background(0);
}

void draw() {
   background(0);
   textSize(10);
   fill(255);
   zegHalloVierMaal("Harry", "Marianne",  "Ludo", "Maaike");
}

void zegHallo(String naam, int xPos, int yPos) {
  text("Hallo " + naam + ", hoe gaat het met je?" , xPos, yPos);
  println(xPos, yPos);
}

void zegHalloVierMaal(String naam1, String naam2, String naam3, String naam4) {
  int tekstKwadrant1YPos = height / 4;
  int tekstKwadrant2YPos = height - height / 4;
  int tekstKwadrant1XPos = width / 20; 
  int tekstKwadrant2XPos = width / 2;
  zegHallo("Hallo " + naam1 + ", hoe gaat het met je?" , tekstKwadrant1XPos, tekstKwadrant1YPos);
  zegHallo("Hallo " + naam2 + ", hoe gaat het met je?" , tekstKwadrant2XPos, tekstKwadrant1YPos);
  zegHallo("Hallo " + naam3 + ", hoe gaat het met je?" , tekstKwadrant1XPos, tekstKwadrant2YPos);
  zegHallo("Hallo " + naam4 + ", hoe gaat het met je?" , tekstKwadrant2XPos, tekstKwadrant2YPos);

}
