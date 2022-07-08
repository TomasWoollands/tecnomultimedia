void autos() {
  //AUTOS ARRIBA

  image(autoArriba [0], PAuto++, 350 );
  if (cont >= 50) {
    image(autoArriba [1], PAuto2++, 350 );
    if (cont >= 100 ) {
      image(autoArriba [2], PAuto3++, 350 );
    }
    if (PAuto> 800) {
      PAuto= 0;
    }
    if (PAuto2> 800) {
      PAuto2= -200;
    }
    if (PAuto3> 800) {
      PAuto3= -300;
    }
    //AUTOS ABAJO
    image(autoAbajo [0], PAutoD--, 200 );
    if (cont >= 50 ) {
      image(autoAbajo [1], PAutoD2--, 200 );
      if (cont >= 100 ) {
        image(autoAbajo [2], PAutoD3--, 200 );
      }
    }
  }

  if (PAutoD < 0) {
    PAutoD= 550;
  }
  if (PAutoD2< 0) {
    PAutoD2= 750;
  }
  if (PAutoD3< 0) {
    PAutoD3= 950;
  }
}

void puntos(int x, int y, int t) {
  textFont(kratos);
  textSize(t);
  fill(2, 15, 234);
  text( "Puntaje:" +puntaje, x, y);
}
void cofres() {
  image(cofre [0], tesoroX, 100 );
  image(cofre [1], tesoroX *2, 150 );
  image(cofre [2], tesoroX+10, 70 );
  image(cofre [3], tesoroX *2, 100 );
  image(cofre [4], tesoroX-30, 150 );
  if (dist(luffyX,luffyY, tesoroX, 100) <= m) {
    puntaje+=30;
  } else if (dist(luffyX, luffyY, tesoroX *2, 150) <= m) {
    puntaje+=30;
  } else if (dist(luffyX, luffyY, tesoroX+10, 70) <= m) {
    puntaje+=30;
  } else if (dist(luffyX, luffyY, tesoroX *2, 100) <= m) {
    puntaje+=30;
  } else if (dist(luffyX, luffyY, tesoroX-30, 150 ) <= m) {
    puntaje+=30;
  }
}
void choque() {
  if (dist(luffyX, luffyY, PAutoD--, 200) <= 60) {
    estado="perder";
  } else if (dist(luffyX, luffyY, PAutoD2--, 200) <= m) {
    estado="perder";
  } else if (dist(luffyX, luffyY, PAutoD3--, 200) <= m) {
    estado="perder";
  } else if (dist(luffyX, luffyY, PAuto++, 350) <= m) {
    estado="perder";
  } else if (dist(luffyX, luffyY, PAuto2++, 350) <= m) {
    estado="perder";
  } else if (dist(luffyX, luffyY, PAuto3++, 350) <= m) {
    estado="perder";
  }
}
