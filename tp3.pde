// 
PImage inicio ;
PImage instrucciones ;
PImage creditos;
PImage luffy ;
PImage fondo ;
PImage ganar ;
PImage perder ;
PFont kratos;
String estado;
int Auto, Auto2, Auto3, luffyX, luffyY, puntaje, AutoD, AutoD2, AutoD3, cont, m ;
float  tesoroX;
PImage[] autoArriba = new PImage[3];
PImage[] autoAbajo = new PImage[3];
void setup() {
  size(800, 600);
  Auto= 0;
  Auto2= -240;
  Auto3= -410;
  AutoD= 530;
  AutoD2= 810;
  AutoD3= 1000;
  puntaje =0;
  luffyX= 400;
  luffyY= 500; 
  cont=0;
  m=60;
   
  luffy = loadImage("luffy.png");
  inicio = loadImage("inicio1.png");
  estado = "inicio";
  instrucciones = loadImage("instrucciones.png");
  fondo = loadImage("fondo.png");
  ganar = loadImage("ganar.png");
  perder = loadImage("perder.png");
  creditos = loadImage("creditos.png");
  kratos = createFont("godofwar.ttf",50);
  tesoroX= random (700);
  for ( int i = 0; i < autoAbajo.length; i++ ) {
    autoAbajo[i] = loadImage( "autoAbajo"+i+".png" );
  }
  for ( int i = 0; i < autoArriba.length; i++ ) {
    autoArriba[i] = loadImage( "autoArriba"+i+".png" );
  }
 
}

void draw() {
 
  // INICIO
  if ( estado.equals("inicio") ) { 
    image (inicio, 0, 0,800,600);
    // instrucciones
  } else if ( estado.equals("instrucciones") ) {
    image (instrucciones, 0, 0); 
     fill(255,4,4);
     textFont(kratos);
     textSize(25);
     text("Ayuda a Luffy a volver con sus amigos.Para\n hacerlo evita los autos mientras cruces\n la calle. ",30,200);
     
    // JUEGO
  } else if ( estado.equals("juego") ) {
    cont++;
    image (fondo, 0, 0);
    autos();
    puntos(90, 580, 30);   
    choque();
    //luffy
    image (luffy, luffyX, luffyY);
  }
  if ( estado.equals("juego") && luffyY< 150 ) {
    estado.equals("ganaste");
    image (ganar, 0, 0);
    puntos(  435, 330, 45);
  }

  if ( estado.equals("perder")  ) {

    image (perder, 0, 0);
    puntos(  250, 200, 40);
  }
}


// rect( 300,320,200,80); medida del boton



void mouseClicked() {
  if ( estado.equals("inicio") && mouseX >= 300 &&  mouseY >= 320 &&  mouseX <= 300+200 &&  mouseY <= 320+80);
  {
    estado = "instrucciones";
  }
}
void keyPressed() {
  if (key =='w' ) {
    luffyY-= 50;
    puntaje+=5;
  }
  if (key =='s' ) {
    luffyY += 50;
  }
  if (key == 'a' ) {
    luffyX -= 50 ;
  }
  if (key == 'd' ) {
    luffyX += 50 ;
  }
  if (key == 'r' ) {
    estado = "juego";
  }
  if (key == 'i' ) {
    estado = "inicio";
      Auto= 0;
  Auto2= -240;
  Auto3= -410;
  AutoD= 540;
  AutoD2= 810;
  AutoD3= 1000;
  luffyX= 400;
  luffyY= 500;
  puntaje =0;
  }
  if (key == 't' ) {
    estado = "creditos";
    image (creditos, 0, 0);
  }
}
