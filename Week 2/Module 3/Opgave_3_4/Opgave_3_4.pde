



final int BOX_KLEUR = #FEFF05;
int textKleur = #FF0000;
int hoogte = 50;
int breedte = 250;
int xPos = 350 / 2 - breedte / 2;
int yPos = 350 / 2 - hoogte / 2;
int xPosText = xPos + breedte / 2;
int yPosText = yPos + hoogte / 2 - 10;


void setup() {
  size(350,350);
  //xPos = width / 2 - breedte / 2;
  //yPos = height / 2 - hoogte / 2;
  //xPosText = xPos + breedte / 2;
  //yPosText = yPos + hoogte / 2 - 10;
  fill(BOX_KLEUR);
  rect(xPos, yPos, breedte, hoogte);
  
}

void draw() {
}

void mouseClicked() {
  println(mouseX);
  fill(BOX_KLEUR);
  rect(xPos, yPos, breedte, hoogte);
  fill(textKleur);
  textSize(30);
  textAlign(CENTER, TOP);
  if (mouseX % 2 == 0) {
    text("(" + mouseX + " - " + mouseY + ")", xPosText, yPosText);
}
}
