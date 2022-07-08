
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
int PAuto, PAuto2, PAuto3, luffyX, luffyY, puntaje, PAutoD, PAutoD2, PAutoD3, cont, m ;
float  tesoroX;
;
PImage[] autoArriba = new PImage[3];
PImage[] autoAbajo = new PImage[3];
PImage[] cofre = new PImage[5];
void setup() {
  size(800, 600);
  PAuto= 0;
  PAuto2= -250;
  PAuto3= -400;
  PAutoD= 550;
  PAutoD2= 800;
  PAutoD3= 1000;
  luffyX= 400;
  luffyY= 500;
  puntaje =0;
  cont=0;
  m=60;


  tesoroX= random (800); 

  luffy = loadImage("luffy.png");
  inicio = loadImage("inicio1.png");
  estado = "inicio";
  instrucciones = loadImage("instrucciones.png");
  fondo = loadImage("fondo.png");
  ganar = loadImage("ganar.png");
  perder = loadImage("perder.png");
  creditos = loadImage("creditos.png");
  kratos = createFont("godofwar.ttf",50);
  for ( int i = 0; i < autoAbajo.length; i++ ) {
    autoAbajo[i] = loadImage( "autode"+i+".png" );
  }
  for ( int i = 0; i < autoArriba.length; i++ ) {
    autoArriba[i] = loadImage( "autoiz"+i+".png" );
  }
  for ( int i = 0; i < cofre.length; i++ ) {
    cofre[i] = loadImage( "cofre"+i+".png" );
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
     text("Ayuda a Luffy a volver con sus amigos.Para\n hacerlo evita los autos mientras cruces\n la calle y junta tesoros del lago para sumar \n mas puntos. ",110,200);
     
    // JUEGO
  } else if ( estado.equals("juego") ) {
    cont++;
    image (fondo, 0, 0);
    autos();
    puntos(  600, 50, 30);
    cofres();
    choque();
    //luffy
    image (luffy, luffyX, luffyY);
  }
  if ( estado.equals("juego") && luffyY< 50 ) {
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
      PAuto= 0;
  PAuto2= -250;
  PAuto3= -400;
  PAutoD= 550;
  PAutoD2= 800;
  PAutoD3= 1000;
  luffyX= 400;
  luffyY= 500;
  puntaje =0;
  }
  if (key == 't' ) {
    estado = "creditos";
    image (creditos, 0, 0);
  }
}
