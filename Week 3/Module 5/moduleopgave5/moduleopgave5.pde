// Moduleopgave 2
// Cris Cadinu
// 05-02-2019

float black = (000000);
float white = (255);

float breedte_balk;
float xPos_slider_lengte;
float xPos_slider_gewicht;

float yPos_slider_lengte;
float yPos_slider_gewicht;

float hoogte_slider;

int minimale_lengte;
int maximale_lengte;

int minimaal_gewicht;
int maximaal_gewicht;


int vergrotings_factor = 4;

boolean isGekliktOpSliderLengte = false;
boolean isGekliktOpSliderGewicht = false;

//initial setup
void setup() {
  size(600, 600);
  background(black);
  breedte_balk = width - width / 3;
  xPos_slider_lengte = width / 2 - breedte_balk / 2;
  xPos_slider_gewicht = width / 2 - breedte_balk / 2;
  yPos_slider_lengte = height - 150;
  yPos_slider_gewicht = height - 100;
  hoogte_slider = 30;
  minimale_lengte = 150;
  maximale_lengte = 250;

  minimaal_gewicht = 10;
  maximaal_gewicht = 200;
}

//loop every frame
void draw() {
  background(000000);
  float breedte_slider = width - width / 3;
  float bmi = bmi_calculator(xPos_slider_lengte, xPos_slider_gewicht);
  tekenStaafDiagram(#ED8888, 50, 100);
  horizontal_line(25);
  horizontal_line(50);
  horizontal_line(70);
  tekenTekst("Ondergewicht", 25, 14);
  tekenTekst("Normaal gewicht", 25, 20);
  tekenTekst("Overgewicht", 25, 26);
  tekenTekst("Obees", 25, 33);
  tekenBalkVoorSliderLengte(150, 30);
  tekenBalkVoorSliderGewicht(100, 30);
  tekenSliderLengte();
  tekenSliderGewicht();
  sliderLengteBeweegt();
  sliderGewichtBeweegt();
  println(xPos_slider_lengte, xPos_slider_gewicht);
  tekstSliderLengte();
  tekstSliderGewicht();
}

void mousePressed() {
  isGekliktOpSliderLengte();
  isGekliktOpSliderGewicht();
  sliderLengteBeweegt();
  sliderGewichtBeweegt();
}

void mouseReleased() {
  isGekliktOpSliderLengte = false;
  isGekliktOpSliderGewicht = false;
}
