//WOOLLANDS TOMAS 85190/6
PFont fuente;
PImage bostezo;
PImage gato;
PImage gato4;
PImage gato3;
PImage gato5;
int marcaEnElTiempo;
int estado;
int x;
float vel;
float posX;
float posY;
float tono, cuenta;
boolean izquierda;

void setup(){
  size( 640, 480 );
  fuente = loadFont("Ebrima-Bold-42.vlw");
  gato = loadImage("canela2.jpg");
  bostezo = loadImage("bostezo.jpg");
  gato3 = loadImage("gato caminando.jpg");
  gato4 = loadImage("narizdegato.jpg");
  gato5 = loadImage("gato-feliz.jpg");
  estado = 0;
  x = 10;
  vel = 3;
  posY = 600;
  posX = width;
  tono = 1;
  cuenta = 3;
  izquierda = true;
}

void draw(){
  
  int diferenciaTemporal = millis() - marcaEnElTiempo;
  
  //maquina de estados
  if( estado == 0 ){  //ESTADO
    image(gato,0,0,640,480);
    textFont(fuente);
    textSize(60);    
    fill(0);    
    text("5 DATOS CURIOSOS \n SOBRE EL GATO ",x,200);
    if( x >= 70 ){  //borde derecha
    izquierda = true;
    if( vel < 10 ){        
    }
  }
  if( x <= 5 ){  //borde izquierda
    izquierda = false;
    if( vel < 10 ){      
    }
  }
  //
  if( izquierda ){
    x -= vel;
    
  } else {
    x += vel;   
  }
    
    //
    if( diferenciaTemporal >= 3000 ){  //3 segundos  //EVENTO
      estado = 1;
      marcaEnElTiempo = millis();
    }
    //pantalla 2
  }else if (estado == 1 ){
     image(bostezo,0,0,640,480);  //fondo
     textFont(fuente);
     textSize(40);
     fill(0);
     text("Los gatos a veces bostezan\npara poner fin a la\nconfrontación con otro\nanimal. Es básicamente su\nforma de dejar en visto\nal oponente. ",5,posY);
     posY -= vel;
     if (posY < -300) { // que vuelva el texto a su posicion 
    posY = 600;
     }
    //
    if( diferenciaTemporal >= 5*1000 ){  //5 segundos
      estado = 2;
      marcaEnElTiempo = millis();      
    }   
    //pantalla 3
  }else if (estado == 2 ){
   image(gato3,0,0,640,480);  //fondo
   textFont(fuente);
     textSize(35);
     fill(0);
     text("Los gatos caminan de una forma\núnica.Primero mueven ambas\npatasdel lado derecho y luego\nambos los izquierdo. Solo hay tres\nanimales que lo hacen, los gatos,\ncamellos y las jirafas. ",posX,200);
     posX -= vel;
     if (posX < -420) { // si el texto se salió de la ventana
    posX = width; // vuelve a la posición inicial
  }

     
    //
    if( diferenciaTemporal >= 7*1000 ){  //7 segundos
      estado = 3;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 3 ){
    image(gato4,0,0,640,480);  //fondo
    textFont(fuente);
     textSize(35);
     fill(0);
     if (tono>255||tono<1) {
       cuenta *= -1;
   }
      tono += cuenta;
     fill(212, 175, 55, tono);
     text("La nariz de cada gato\nen el mundo tiene una huella única\ncomo una huella digital humana.",10,200);
    //
    if( diferenciaTemporal >= 10000 ){  //10 segundos
      estado = 4;
      marcaEnElTiempo = millis();      
    }   
  
    //
  }else{
   image(gato5,0,0,640,480);
   textFont(fuente);
     textSize(60);
     fill(random(255),random(255),random(255));
     text("Fin",300,300,200,200);
     stroke(255,0,0);
  fill(212, 175, 55);
  rect(30,420,100,40);
  fill(255,4,4);
  textSize(15);
  text("reiniciar",50,445);
  }
}


void mouseClicked(){
   if (mouseX > 30 && mouseY > 420 && mouseX < 130 && mouseY < 460) {
    estado = 0;
   }
}
