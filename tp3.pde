
PImage inicio, instrucciones, fondo, luffy, ganaste, perdiste, creditos;
PFont berlin;
String estado;
int PAuto, PAuto2, PAuto3, PPatoX, PPatoY, puntos, PAutoD, PAutoD2, PAutoD3, cont, r ;
float  PezX;
;
PImage[] autoiz = new PImage[3];
PImage[] autode = new PImage[3];
PImage[] pez = new PImage[5];
void setup() {
  size(800, 600);
  PAuto= 0;
  PAuto2= -250;
  PAuto3= -400;
  PAutoD= 550;
  PAutoD2= 800;
  PAutoD3= 1000;
  PPatoX= 400;
  PPatoY= 500;
  puntos =0;
  cont=0;
  r=60;


  PezX= random (800); 

  luffy = loadImage("luffy.png");
  inicio = loadImage("inicio1.png");
  estado = "inicio";
  instrucciones = loadImage("instrucciones.png");
  fondo = loadImage("fondo.png");
  ganaste = loadImage("ganaste.png");
  perdiste = loadImage("perdiste.png");
  creditos = loadImage("creditos.png");
  berlin = createFont("godofwar.ttf",50);
  for ( int i = 0; i < autode.length; i++ ) {
    autode[i] = loadImage( "autode"+i+".png" );
  }
  for ( int i = 0; i < autoiz.length; i++ ) {
    autoiz[i] = loadImage( "autoiz"+i+".png" );
  }
  for ( int i = 0; i < pez.length; i++ ) {
    pez[i] = loadImage( "pez"+i+".png" );
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
     textFont(berlin);
     textSize(25);
     text("Ayuda a Luffy a volver con sus amigos.Para\n hacerlo evita los autos mientras cruces\n la calle y junta tesoros del lago para sumar \n mas puntos. ",110,200);
     
    // JUEGO
  } else if ( estado.equals("juego") ) {
    cont++;
    image (fondo, 0, 0);
    autos();
    puntos(  600, 50, 30);
    peces();
    colision();
    //PATO
    image (luffy, PPatoX, PPatoY);
  }
  if ( estado.equals("juego") && PPatoY< 50 ) {
    estado.equals("ganaste");
    image (ganaste, 0, 0);
    puntos(  450, 330, 50);
  }

  if ( estado.equals("perdiste")  ) {

    image (perdiste, 0, 0);
    puntos(  450, 330, 50);
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
    PPatoY-= 50;
    puntos+=5;
  }
  if (key =='s' ) {
    PPatoY += 50;
  }
  if (key == 'a' ) {
    PPatoX -= 50 ;
  }
  if (key == 'd' ) {
    PPatoX += 50 ;
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
  PPatoX= 400;
  PPatoY= 500;
  puntos =0;
  }
  if (key == 't' ) {
    estado = "creditos";
    image (creditos, 0, 0);
  }
}
