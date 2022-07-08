void autos() {
//AUTOS ARRIBA
 image(autoArriba [0], Auto++, 350 );
  if (cont >= 50) {
    image(autoArriba [1], Auto2++, 350 );
    if (cont >= 100 ) {
      image(autoArriba [2], Auto3++, 350 );
    }
    if (Auto> 800) {
      Auto= 0;
    }
    if (Auto2> 800) {
      Auto2= -200;
    }
    if (Auto3> 800) {
      Auto3= -300;
    }
    //AUTOS ABAJO
    image(autoAbajo [0], AutoD--, 200 );
    if (cont >= 50 ) {
      image(autoAbajo [1], AutoD2--, 200 );
      if (cont >= 100 ) {
        image(autoAbajo [2], AutoD3--, 200 );
      }
    }
  }

  if (AutoD < 0) {
    AutoD= 550;
  }
  if (AutoD2< 0) {
    AutoD2= 750;
  }
  if (AutoD3< 0) {
    AutoD3= 950;
  }
}

void puntos(int x, int y, int t) {
  textFont(kratos);
  textSize(t);
  fill(174, 250, 93);
  text( "Puntaje:" +puntaje, x, y);
}

void choque() {
  if (dist(luffyX, luffyY, AutoD--, 200) <= 60) {
    estado="perder";
  } else if (dist(luffyX, luffyY, AutoD2--, 200) <= m) {
    estado="perder";
  } else if (dist(luffyX, luffyY, AutoD3--, 200) <= m) {
    estado="perder";
  } else if (dist(luffyX, luffyY, Auto++, 350) <= m) {
    estado="perder";
  } else if (dist(luffyX, luffyY, Auto2++, 350) <= m) {
    estado="perder";
  } else if (dist(luffyX, luffyY, Auto3++, 350) <= m) {
    estado="perder";
  }
}
