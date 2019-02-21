final int ZIJDE = 15; 
final int AANTAL = 5;

final color WIT = #FFFFFF;


 
void setup() {   
  size(800, 800);   
  background(WIT);

  float grootte_groot_vierkant = ZIJDE * AANTAL;
  float positieX = width / 2 - (grootte_groot_vierkant / 2);
  float positieY = height / 2 - (grootte_groot_vierkant / 2);
  
  tekenGrootVierkant(positieX, positieY, grootte_groot_vierkant, grootte_groot_vierkant);
  tekenVerticaleRij(positieX, positieY, ZIJDE, AANTAL);
}

void tekenKleinVierkant(float x, float y, int zijde) {
  fill(#FF0000);
  rect(x, y, zijde, zijde);
}

void tekenGrootVierkant(float positiefX, float positiefY, float breedte, float hoogte) {
  rect(positiefX, positiefY, breedte, hoogte);
}

void tekenHorizontaleRij(float x, float y, int zijde, int aantal) {
  int teller = 0;
  while (teller < aantal) {
    tekenKleinVierkant(x, y, zijde);
    x += ZIJDE;
    teller++;
  }
}

void tekenVerticaleRij(float x, float y, int zijde, int aantal) { 
  int teller = 0;
  while (teller < aantal) {
    tekenHorizontaleRij(x, y, zijde, aantal);
    y += ZIJDE;
    teller++;
  }
}
