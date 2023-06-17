// Tomas Woollands 85190/6
// https://youtu.be/t46Tc4u5Odw
int cant = 15;
int tam;
PImage foto; 
void setup() {
  size(800,400); 
  foto = loadImage("foto1.JPG");
}

void draw() {
  degradee(0,0,800,400);
   tam = width/cant;
     
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      
      if( (i+j)%2==0 ){  
      strokeWeight(1);
      stroke(random(0,255),random(0,255),random(0,255));
        line( i*tam, j*tam, 600, 200 );
      }else{        
        strokeWeight(3);
        stroke(random(0,255));
        line( i*tam, j*tam,600, 200 );  
        
    }
   }
  }
  image(foto,0,0,400,400);
}

void mousePressed(){
  cant ++ ;
}
void keyPressed(){
 resetear();
}
