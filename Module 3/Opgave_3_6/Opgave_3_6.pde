
final int BOX_KLEUR = #FEFF05;
final int BOX2_KLEUR = #EA9F9F;
int textKleur = #FF0000;
int hoogte = 50;
int breedte = 250;
int xPos = width / 2 - breedte / 2; 
int yPos = height / 2 - hoogte / 2;
int xPosText = xPos + breedte / 2;
int yPosText = yPos + hoogte / 2 - 10;


void setup() {
  size(350,350);
  xPos = width / 2 - breedte / 2;
  yPos = height / 2 - hoogte / 2;
  xPosText = xPos + breedte / 2;
  yPosText = yPos + hoogte / 2 - 10;
  fill(BOX_KLEUR);
  rect(xPos, yPos, breedte, hoogte);
}

void draw() {
}

void mouseClicked() {
  fill(BOX_KLEUR);
  rect(xPos, yPos, breedte, hoogte);
  fill(255);
  textSize(30);
  fill(textKleur);
  textAlign(CENTER, TOP);
  if (mouseX % 2 == 0 && mouseY % 2 == 0) {
    text("(" + mouseX + " - " + mouseY + ")", xPosText, yPosText);
  }
}
