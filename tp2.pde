// Tomas Woollands 85190/6
// https://youtu.be/5qzMtqeo0lg
int cant = 15;
int tam;
void setup() {
  size(600,600); 
}

void draw() {
  degradee(0,0,600,600);
   tam = width/cant;
   
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      
      if( (i+j)%2==0 ){  
      strokeWeight(1);
      stroke(random(0,255),random(0,255),random(0,255));
        line( i*tam, j*tam, width/2, height/2 );
      }else{        
        strokeWeight(3);
        stroke(random(0,255));
        line( i*tam, j*tam,width/2, height/2 );            
    }
   }
  }
}

void mousePressed(){
  cant ++ ;
}
void keyPressed(){
 resetear();
}
