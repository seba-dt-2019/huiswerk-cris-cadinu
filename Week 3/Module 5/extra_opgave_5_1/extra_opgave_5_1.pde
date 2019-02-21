void setup() {   
  bmiJack();   
  bmiJill();   
  bmiHill(); 
} 
 
void bmiJack() {       
  voerBmiGegevensIn("Jack", 85, 1.80);   
} 

void bmiJill() {      
  voerBmiGegevensIn("Jill", 65, 1.65);   
} 
 
void bmiHill() {   
  voerBmiGegevensIn("Hill", 10000, 30.0);   
} 
 
void voerBmiGegevensIn(String naam, float massa, float lengte) {   
  float bmi;
  bmi = massa / (lengte*lengte); 
  println(naam + " weegt " + massa + " en is " + lengte + " lang (BMI = " + bmi + ")");
}
