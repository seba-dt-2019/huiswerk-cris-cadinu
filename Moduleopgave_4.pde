// Module opgave 4
// Cris Cadinu
// 14-02-2019

int breedte_StartKnop, hoogte_StartKnop, 
xPosStartKnop, yPosStartKnop,
xPosStartTekst, yPosStartTekst,
xPosCirkel, yPosCirkel,
aantal_raak, aantal_mis,
lengte_tekst, ROOD, GROEN;

boolean isGeklikt = false, // Checkt of er geklikt is
        raakGeklikt = false, // Checkt of er op de bullseye is geklikt
        misGeklikt = false, // Checkt of de bullseye is gemist
        status = false, // Kijkt wat de status is van  de START knop
        status2 = true; // Om ervoor te zorgen dat hij weer correct van START naar STOP gaat
        
String  START = "START",
        STOP = "STOP";

float diameter_groot, // diameter van de grootste cirkel binnen de bullseye
      diameter_middel, // diameter van de middelste cirkel van de bullseye
      diameter_klein, // diameter van de kleinste cirkel van de bullseye
      straal; // straal van de grootste cirkel (55)





void setup() {
  size(600, 600);
  smooth();
  background(0);
  breedte_StartKnop = 100;
  hoogte_StartKnop = 50;
  xPosStartKnop = width / 2 - breedte_StartKnop / 2;
  yPosStartKnop = height - hoogte_StartKnop;
  xPosStartTekst = xPosStartKnop;
  yPosStartTekst = yPosStartKnop;
  xPosCirkel = 0 + 55 / 2;
  yPosCirkel = height / 2;
  aantal_raak = 0;
  aantal_mis = 0;
  lengte_tekst = 100;
  diameter_groot = 55;
  diameter_middel = 40;
  diameter_klein = 20;
  straal = diameter_groot / 2;
  GROEN = #B2FFCC;
  ROOD = #FF0000;
}

void draw() {
  background(0);
  fill(255);
  text("Aantal raak: " + aantal_raak + "   Aantal mis: " + aantal_mis, width / 10 + lengte_tekst, height / 10);
    if (isGeklikt == true) { // Als isGeklikt op true staat dan begint de bullseye te bewegen
      xPosCirkel = xPosCirkel + 3; 
      START = STOP;
      GROEN = ROOD; // De START knop wordt een STOP knop
      }
    if (status == false) { // Zet de isGeklikt weer terug op false om de bullseye te kunnen stoppen
       isGeklikt = false;
    }
    
    if (status2 == true) {
      START = "START";
      GROEN = #B2FFCC;
    }
    if (raakGeklikt == true) { // Als raakGeklikt true is dan wordt de score met 1 verhoogd
       aantal_raak++;
     }
     
    if (misGeklikt == true) { // Als er niet op de bullseye wordt geklikt dan gaat de mis-score omhoog
       aantal_mis++;
     }
  raakGeklikt = false; // Om doortellen te voorkomen zetten we deze weer op false
  misGeklikt = false; // Om doortellen te voorkomen zetten we deze weer op false
  tekenBullsEye(); // Functie waarbij de bullseye wordt getekend wordt aangeroepen
  fill(GROEN);
  rect(xPosStartKnop, yPosStartKnop, breedte_StartKnop, hoogte_StartKnop);
  fill(0);
  textSize(20);
  textAlign(CENTER, BOTTOM);
  text(START, width / 2, height);
  if (xPosCirkel == width) { // Hiermee gaat de bullseye weer terug naar de startpositie
       xPosCirkel = 0;
  }
}

void mouseClicked() {
  println(status);
  if ((mouseX > xPosStartKnop && mouseX < xPosStartKnop + breedte_StartKnop) && (mouseY < height && mouseY > height - hoogte_StartKnop)) { // Als de muiscursor op de START/STOP knop staat dan verandert de isGeklikt- en status-status
  isGeklikt = true;
  status =! status;
  status2 =! status2;
  }
  
  if ((mouseX > xPosCirkel - straal && mouseX < xPosCirkel + straal) && (mouseY < yPosCirkel + straal && mouseY > yPosCirkel - straal)) { // Als er op de bullseye wordt geklikt dan verandert de raakGeklikt-status
  raakGeklikt = true;
  }
  else if (mouseX < xPosStartKnop || mouseX > xPosStartKnop + breedte_StartKnop || mouseY < height - hoogte_StartKnop && (mouseX > xPosCirkel + straal || mouseX < xPosCirkel - straal || mouseY < yPosCirkel - straal || mouseY > yPosCirkel + straal)) {// Als er mis wordt geklikt EN als er buiten de START/STOP knop wordt geklikt dan wordt misGeklikt true {
    misGeklikt =  true; // Door het haakje te openen na de eerste && kunnen de condities elkaar niet overschrijven. Op deze manier MOETEN beide condities waar zijn.
  } 
}


void tekenBullsEye() { // Hier wordt de bullseye getekend
  fill(255);
  circle(xPosCirkel, yPosCirkel, diameter_groot);
  fill(#FF0000);
  circle(xPosCirkel, yPosCirkel, diameter_middel);
  fill(255);
  circle(xPosCirkel, yPosCirkel, diameter_klein);
}
