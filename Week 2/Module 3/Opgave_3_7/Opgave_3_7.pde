
final int BOX_KLEUR = #FEFF05;
final int BOX2_KLEUR = #EA9F9F;
int textKleur = #FF0000;
int hoogte = 50;
int breedte = 250;
int xPos; 
int yPos;
int xPosText;
int yPosText;
int credits;
int xPosTextCredits;
int yPosTextCredits;
int correctieTextBoxX;
int correctieTextBoxY;


void setup() {
  size(350,350);
  xPos = width / 2 - breedte / 2;
  yPos = height / 2 - hoogte / 2;
  correctieTextBoxX = breedte / 2 - 80;
  correctieTextBoxY = hoogte / 2 + 20;
  xPosText = xPos + correctieTextBoxX;
  yPosText = yPos + correctieTextBoxY;
  xPosTextCredits = xPos + 30;
  yPosTextCredits = yPos - 25;
  fill(BOX_KLEUR);
  rect(xPos, yPos, breedte, hoogte);
  fill(BOX2_KLEUR);
  rect(xPos, yPos - 70, breedte, hoogte);
  credits = 25;
  println("Nieuwe pos" + xPosTextCredits, yPosTextCredits);
  println (xPos, yPos);
  smooth();
}

void draw() {
  println (xPos, yPos);
  println(mouseX, mouseY);
  fill(255);
  textSize(25);
  text("Credits: " + credits, xPosTextCredits, yPosTextCredits);
}

void mouseClicked() {
  fill(BOX_KLEUR);
  rect(xPos, yPos, breedte, hoogte);
  fill(BOX2_KLEUR);
  rect(xPos, yPos - 70, breedte, hoogte);
  fill(textKleur);
  text("(" + mouseX + " - " + mouseY + ")", xPosText, yPosText);
  if (mouseX % 2 == 0 && mouseY % 2 == 0) {
     credits++;
  }
  else if (mouseX % 2 != 0 && mouseY % 2 != 0) {
      credits = credits - 1;
  if (credits == 0);
    credits = 25;
  }
  {
  }
}
