void setup() {   
  float a = 2;   
  float b = 5;   
  float c = -7;    
  
  float kwadraatB = berekenKwadraatb(b);
  float minB = berekenMinb(kwadraatB); 
  float discriminant = berekenDiscriminant(a, b, c);
  float wortelDiscriminant = berekenWortelDiscriminant(discriminant);   
  float noemer = berekenNoemer(a);
  
  float oplossing1 = (minB + wortelDiscriminant) / noemer;   
  float oplossing2 = (minB - wortelDiscriminant) / noemer;  
  
  println(oplossing1);   
  println(oplossing2); 
} 
 
float berekenDiscriminant(float lokaal_a, float lokaal_b, float lokaal_c) {
  float kwadraatb = berekenKwadraatb(lokaal_b);
  
  return kwadraatb - 4*lokaal_a*lokaal_c; 
} 
 
float berekenWortelDiscriminant(float discriminant) { 
  return (float)Math.sqrt(discriminant);
} 
 
float berekenMinb(float kwadraatB) {   
  return -kwadraatB; 
} 
 
float berekenKwadraatb(float lokaal_b) {   
  return lokaal_b*lokaal_b; 
} 
 
float berekenNoemer(float a) {   
  return 2*a; 
}
