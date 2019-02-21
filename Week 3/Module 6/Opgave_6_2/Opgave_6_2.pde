int metertje = 0;
int y_pos = 20;
int start_getal = 1;

void setup() {
  size(300, 300);
  tafel(1, 20, 20);
  
  while (metertje < 10) {
    tafel(start_getal, 20, y_pos);
    metertje++;
    y_pos += 20;
    start_getal++;
  }
}

//int getal = 1;
//int y_pos = 20;

void tafel(int getal, int x, int y) {
  while (getal < start_getal * 11) {
  fill(0);
  text(getal, x, y);
  getal = getal + start_getal;
  x += 20;
  }
}
