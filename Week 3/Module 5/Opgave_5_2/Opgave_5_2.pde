void setup(){
  println(berekenAantalRollenBehang(10, 2, 0.52, 10));
}

// Geef de waarde in meters
void draw(){
}

float berekenAantalRollenBehang(float breedte_muur, float hoogte_muur, float breedte_rol, float lengte_rol) {
   
  return  ceil(breedte_muur / (lengte_rol / hoogte_muur * breedte_rol));
}
