// Cris Cadinu
// Module opgave 3
// 10-02-2019



final int ZWART = #000000;
final int WIT = #FFFFFF;
final int GROEN = #ADF5E3;
int KLEUR_ROBOT;
int KLEUR_LADING;

int xPos_robot;
int yPos_robot;

int breedte_robot;
int hoogte_robot;

int xPos_lading;
int yPos_lading;

int diameter_cirkel;
int straal;

int middelpunt_lading;

boolean oppakkenLading = false;

void setup() {
  background(ZWART);
  size(500, 500);
  KLEUR_ROBOT = WIT;
  KLEUR_LADING = GROEN;
  xPos_robot = 0;
  yPos_robot = 0;
  breedte_robot = 50;
  hoogte_robot = 50;
  xPos_lading = 250;
  yPos_lading = 250;
  diameter_cirkel = 50;  
  straal = diameter_cirkel / 2;
}

void draw() {
  background(ZWART);
  robot();
  lading();
}

void robot() {
  fill(KLEUR_ROBOT);
  rect(xPos_robot, yPos_robot, breedte_robot,hoogte_robot);
}

void lading() {
  fill(KLEUR_LADING);
  circle(xPos_lading, yPos_lading, diameter_cirkel);
}

void keyPressed() {
    switch (key) {
      case CODED: 
        switch (keyCode) {
          case UP:
            yPos_robot = constrain(yPos_robot - 1, 0, height);
            break;
          
          case DOWN:
            yPos_robot = constrain(yPos_robot +1, 0, height - hoogte_robot);
            break;
            
          case LEFT:
            xPos_robot = constrain(xPos_robot - 1, 0, width);
            break;
          
          case RIGHT:
            xPos_robot = constrain(xPos_robot + 1, 0, width - breedte_robot);
            break;
        }
        break;
        
     case ENTER: 
       if ((xPos_robot == xPos_lading - straal) && (yPos_robot == yPos_lading - straal)) { 
           oppakkenLading =! oppakkenLading;
       }
       break;
     }
     
     if (oppakkenLading) {
       xPos_lading = xPos_robot + straal;
       yPos_lading = yPos_robot + straal;
    }
}
    
