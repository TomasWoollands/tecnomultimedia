//Woollands Tomas 85190/6

PImage fondo;
PImage foto2;
PImage foto3;
PImage foto4;
PImage foto5;
float cuenta, tono;
PFont fuenteDescargada;
int pantalla;
int posX ;


void setup() {
  size(600,500);
  
  fondo = loadImage("foto1.jpg");
  foto2 = loadImage ("foto2.jpg");
  foto3 = loadImage("foto3.jpg");
  foto4 = loadImage("foto4.jpg");
  foto5 = loadImage("foto5.jpg");
  
  fuenteDescargada = createFont("godofwar.ttf",50);
  textFont(fuenteDescargada,60);
  textAlign(CENTER);
  tono = 1; 
  cuenta = 3;
  
}

void draw(){
  background(0);
  image(foto3,0,0,600,500);
 
// Titulo
  if (tono>255||tono<1) {
cuenta *= -1;
}
tono += cuenta;
fill(212, 175, 55, tono);
  textSize(60);
  text("GOD OF WAR",width/2, 250);
  textSize(50);
  text("Credits",width/2,300);
  
///Botones diseño
   
  stroke(255,0,0);
  fill(212, 175, 55);
  rect(30,420,100,40);
  fill(255,4,4);
  textSize(15);
  text("Production",80,445);
  
  fill(212, 175, 55);
  rect(170,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Art",220,447);
  
  fill(212, 175, 55);
  rect(320,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Sound",370,447);
  
  fill(212, 175, 55);
  rect(470,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("voices",520,447);
  
   if(mouseX > 30 && mouseY > 420 && mouseX < 130 && mouseY < 460){
    cursor(HAND);
  }else if (mouseX > 170 && mouseY > 420 && mouseX < 270 && mouseY < 460) {
    cursor(HAND);
  } else if (mouseX > 320 && mouseY > 420 && mouseX < 420 && mouseY < 460) {
    cursor(HAND);
  } else if (mouseX > 470 && mouseY > 420 && mouseX < 570 && mouseY < 460) {
    cursor(HAND);
    } else {
    cursor(ARROW);
    }
 
   
// PANTALLAS
 if (pantalla == 1) {
    image(fondo,0,0,600,500);

   stroke(255,0,0);
  fill(212, 175, 55);
  rect(30,420,100,40);
  fill(255,4,4);
  textSize(15);
  text("Production",80,445);
  
  fill(212, 175, 55);
  rect(170,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Art",220,447);
  
  fill(212, 175, 55);
  rect(320,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Sound",370,447);
  
  fill(212, 175, 55);
  rect(470,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("voices",520,447);

    fill(212, 175, 55);
    smooth();
    textSize(40);
    text("Production",posX,100);
    textSize(25);
    text("Whitneu Wade \n Kenneth T. ROY \n Kevin A. Brown \n William Weissbaum", 20, posX, 250, 250);
    text("J.J.Griffith Springer \n matthew Cappiello \n Grace Modino ",350,posX,250,250);

    if (posX <= 150) {
      posX+=3;
    }
  } else if (pantalla == 2) {
    image(foto2,0,0,600,500);
    stroke(255,0,0);
  fill(212, 175, 55);
  rect(30,420,100,40);
  fill(255,4,4);
  textSize(15);
  text("Production",80,445);
  
  fill(212, 175, 55);
  rect(170,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Art",220,447);
  
  fill(212, 175, 55);
  rect(320,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Sound",370,447);
  
  fill(212, 175, 55);
  rect(470,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("voices",520,447);

    fill(212, 175, 55);
    smooth();
    textSize(40);
    text("ART",posX,100);
    textSize(25);
    text("Andrew Kim \n Izzy \n Andy Park \n Jung Park", 20, posX, 250, 250);
    text("Paul Coda \n John A. Dobbie \n Shane Estansilado ",350,posX,250,250);
    
    if (posX <= 150) {
      posX+=2;
     }
   } else if (pantalla == 3) {
  image(foto4,0,0,600,500);
  stroke(255,0,0);
  fill(212, 175, 55);
  rect(30,420,100,40);
  fill(255,4,4);
  textSize(15);
  text("Production",80,445);
  
  fill(212, 175, 55);
  rect(170,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Art",220,447);
  
  fill(212, 175, 55);
  rect(320,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Sound",370,447);
  
  fill(212, 175, 55);
  rect(470,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("voices",520,447);

  fill(212, 175, 55);
  smooth();
  textSize(40);
  text("Sound",posX,100);
  textSize(25);
  text("Gene Semel \n Phillip Kovats \n Paul Fox \n chris Hegstrom", 20, posX, 250, 250);
  text("Steve Johnson \n Joanna Orland \n Derrick Espino \n Emile Mika ",350,posX,250,250);
    
   if (posX <= 150) {
     posX+=2;
    }
 } else if (pantalla == 4) {
  image(foto5,0,0,600,500);
  stroke(255,0,0);
  fill(212, 175, 55);
  rect(30,420,100,40);
  fill(255,4,4);
  textSize(15);
  text("Production",80,445);
  
  fill(212, 175, 55);
  rect(170,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Art",220,447);
  
  fill(212, 175, 55);
  rect(320,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("Sound",370,447);
  
  fill(212, 175, 55);
  rect(470,420,100,40);
  fill(255,4,4);
  textSize(25);
  text("voices",520,447);

  fill(212, 175, 55);
  smooth();
  textSize(40);
  text("Voices",posX,100);
  textSize(25);
  text("Scott Martin Gershin \n Janet Rankin \n William Beaman \n Erica Mehallo", 20, posX, 250, 250);
  text("Justin Langley \n Charlie Gondak \n David Natale \n Bob Rankin \n Chad Bedell ",350,posX,250,250);
 
  if (posX <= 150) {
      posX+=2;
    }
   }
  }
   
void mouseClicked(){
  if (mouseX > 30 && mouseY > 420 && mouseX < 130 && mouseY < 460) {
    pantalla = 1;
    posX = -165;
    
  } else if (mouseX > 170 && mouseY > 420 && mouseX < 270 && mouseY < 460) {
    pantalla = 2;
    posX = -165;
    
  } else if (mouseX > 320 && mouseY > 420 && mouseX < 420 && mouseY < 460) {
    pantalla = 3;
    posX = -165;
    
  } else if (mouseX > 470 && mouseY > 420 && mouseX < 570 && mouseY < 460) {
    pantalla = 4;
    posX = -165;   
  }
 }
