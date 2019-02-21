void horizontal_line(float y) {
  float start_positie_staaf = height - height / 3;
  float start_positie_lijn = start_positie_staaf - 50;
  line(0, start_positie_lijn - y, width, start_positie_lijn - y);
}

float bmi_calculator(float gewicht, float lengte) {
  float local_bmi = gewicht / (lengte * lengte) * 10;
  return local_bmi;
}

void tekenTekst(String gewichtType, int xPositieTekst, int yPosTekst) {
  int vergrotings_factor = 4;
  float start_positie_staaf = height - height / 3;
  float start_positie_lijn = start_positie_staaf;
  float start_positie_tekst = start_positie_lijn - 5;
  fill(255);
  text(gewichtType, xPositieTekst, start_positie_tekst - yPosTekst * vergrotings_factor);
}


void tekenStaafDiagram(int kleur, int xPos, int breedte) {
  float bmi = bmi_calculator( xPos_slider_lengte, xPos_slider_gewicht);
  float start_positie_staaf = height - height / 3;
  
  fill(kleur);
  stroke(255,255,255);
  line(0, start_positie_staaf, width, start_positie_staaf);
  rect(width /2 - xPos, start_positie_staaf, breedte, -bmi * 400);
  
}

void tekenBalkVoorSliderLengte(float yPos, float hoogte) {
  float breedte_balk = width - width / 3;
  float xPos_balk_lengte = width / 2 - breedte_balk / 2;
  float yPos_balk_lengte = height - yPos;
  fill(255);
  rect(xPos_balk_lengte, yPos_balk_lengte, breedte_balk, hoogte);
}

void tekenBalkVoorSliderGewicht(float yPos, float hoogte) {
  float breedte_balk = width - width / 3;
  float xPos_balk_gewicht = width / 2 - breedte_balk / 2;
  float yPos_balk_gewicht = height - yPos;
  
  fill(255);
  rect(xPos_balk_gewicht, yPos_balk_gewicht, breedte_balk, hoogte);
}

void tekenSliderLengte() {
  float breedte_slider = width / 30;
  
  fill(#6FBFDB);
  rect(xPos_slider_lengte, yPos_slider_lengte, breedte_slider, hoogte_slider);
}

void tekenSliderGewicht() {
  float breedte_slider = width / 30;
  
  fill(#6FBFDB);
  rect(xPos_slider_gewicht, yPos_slider_gewicht, breedte_slider, hoogte_slider);
}

void isGekliktOpSliderLengte() {
  float breedte_slider = width / 30;
  
  if ((mouseX > xPos_slider_lengte && mouseX < xPos_slider_lengte + breedte_slider) && (mouseY > yPos_slider_lengte && mouseY < yPos_slider_lengte + hoogte_slider)) {
      isGekliktOpSliderLengte = true;
      println("Zit nu op lengte");
  }
}

void isGekliktOpSliderGewicht() {
  float breedte_slider = width / 30;
  
  if ((mouseX > xPos_slider_gewicht && mouseX < xPos_slider_gewicht + breedte_slider) && (mouseY > yPos_slider_gewicht && mouseY < yPos_slider_gewicht + hoogte_slider)) {
      isGekliktOpSliderGewicht = true;
      println("Zit nu op gewicht");
  }
}

void sliderLengteBeweegt() {
  float breedte_slider = width / 30;
  
  if (isGekliktOpSliderLengte) {
    xPos_slider_lengte = constrain(mouseX, 100, 500 - breedte_slider);
  }
}

void sliderGewichtBeweegt() {
  float breedte_slider = width / 30;
  
  if (isGekliktOpSliderGewicht) {
    xPos_slider_gewicht = constrain(mouseX, 100, 500 - breedte_slider);
  }
}

void tekstSliderLengte() {
  fill(255);
  text("Lengte(cm): " + xPos_slider_lengte * 1.5, 0, height - 125);
}

void tekstSliderGewicht() {
  fill(255);
  text("Gewicht(kg): " + xPos_slider_gewicht *  2, 0, height - 85);
}
