// Module opgave 6
// Cris Cadinu
// 19-02-2019

PImage jongetje, meisje;


void setup () {
  size(500, 500);
  background(255);
  
  jongetje = loadImage("jongetje.png");
  meisje = loadImage("meisje.png");
}

void draw() {
}

void mouseClicked() {
  background(255);
  familie();
}

void familie() {
  int X = 0;
  int Y = 0;
  while (Y < height) {
      int controle = 1;
      do {
        PImage [] lijst = {jongetje, meisje};
        int keuze = int (random(lijst.length));
        image (lijst[keuze],X,Y);
        controle = keuze;
        X += 50;
        println(X + " , " + Y);
      } while (controle != 0);
      Y += 50;
      X = 20;
  }
}
