# huiswerk-cris-cadinu
Module opdracht 3 en 4

# Beschrijving

In deze README zet ik ook ontwerp/analyse opdracht.

## Module opdracht 3

### Variabelen:						        Beschrijving:

final int ZWART = #000000; 				Dit is de achtergrondkleur van het scherm
final int WIT = #FFFFFF;				  De kleur wit vastgezet
final int GROEN = #ADF5E3;				De kleur groen vastgezet
int KLEUR_ROBOT;					        De kleur van de robot
int KLEUR_LADING;					        De kleur van de lading
int xPos_robot;					          De positie op de x-as van de robot				
int yPos_robot;					          De positie op de y-as van de robot
int breedte_robot;					      De breedte van de robot
int hoogte_robot;					        De hoogte van de robot
int xPos_lading;					        De positie op de x-as van de lading
int yPos_lading;					        De positie op de y-as van de lading
int diameter_cirkel;					    De diameter van de lading (cirkel)
int middelpunt_robot;					    Het middelpunt van de robot
int middelpunt_lading;				    Het middelpunt van de lading


### Events:

keyPressed()

- Verplaatsing van de robot.

Op het moment dat de gebruiker de pijltjestoetsen indrukt dan moet de robot (vierkant) in de gewenste richting verplaatsen. Gewenste richtingen zijn: UP, DOWN, LEFT, RIGHT.
De gewenste richting is te realiseren door de positie op de assen met, in dit geval, 2 te vergroten.

- Oppakken lading

Op het moment dat de gebruiker met de robot  (vierkant) op de lading (cirkel) staat en op Enter drukt dan dient de robot de lading mee te nemen.

Met op de lading staan bedoel ik het volgende: als het middelpunt van de robot hetzelfde is als het middelpunt van de lading, neem dan de lading mee.

- Loslaten lading

Op het moment dat dat de gebruiker op Enter drukt dient de robot de lading los te laten.

## Module opdracht 4

### Analyse en ontwerp module opgave 4

### Variabelen:
Data type		Naam variabele		      Werking
int			    breedte_Startknop		    Dit is de breedte van de START/STOP knop
int			    hoogte_Startknop		    Dit is de hoogte van de START/STOP knop
int 			  xPosStartKnop		        Positie van de START/STOP knop op de x-as
int 			  yPosStartKnop		        Positie van de START/STOP knop op de y-as
int			    xPosStartTekst		      Positie van de START/STOP tekst op de x-as	
int			    yPosStartTekst		       Positie van de START/STOP tekst op de y-as
int			    xPosCirkel			        Positie van de bullseye op de x-as
int			    yPosCirkel			        Positie van de bullseye op de y-as
int			    aantal_raak			        Score voor het aantal raak geklikt
int			    aantal_mis			        Score voor het aantal mis geklikt
int			    lengte_tekst			      Lengte van het tekstblok			
int			    ROOD				            Kleur rood
int			    GROEN			              Kleur groen

boolean		  isGeklikt			          Check of er geklikt is op de START/STOP knop
boolean		  raakGeklikt			        Check of er raak is geklikt op de bullseye
boolean		  misGeklikt			        Check of de bullseye is gemist
boolean		  status				          Status van de START/STOP knop
boolean		  status2			            Extra status van de START/STOP knop

String			START				            De tekst START
String			STOP				            De tekst STOP

float			  diameter_groot		      Diameter van de grootste cirkel van de bullseye
float			  diameter_middel		      Diameter van de middelse cirkel van de bullseye
float			  diameter_klein		      Diameter van de kleinste cirkel van de bullseye
float			  straal				          De straal van de grootste cirkel



### Events:				
mouseClicked()

Elke keer als er onder bepaalde condities op de muis wordt geklikt moet er iets gebeuren.

- Als er geklikt wordt op de START/STOP knop dan moet START wijzigen in STOP en  moet vice versa
  en moet de bullseye over de x-as verplaatsen.

- Als er op de bullseye wordt geklikt dan moet de score van raakGeklikt omhoog gaan.

- Als er mis wordt geklikt dan moet de score van misGeklikt omhoog gaan.

### Methoden:
tekenBullseye()

Deze  methode tekent de bullseye. Dit doet hij door 1 middelste cirkel op de grootste cirkel te tekenen met een rode kleur en de kleinste cirkel op de middelste cirkel te tekenen met een witte kleur.

