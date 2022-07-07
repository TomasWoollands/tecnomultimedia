void autos() {
  //AUTOS IZ

  image(autoiz [0], PAuto++, 350 );
  if (cont >= 50) {
    image(autoiz [1], PAuto2++, 350 );
    if (cont >= 100 ) {
      image(autoiz [2], PAuto3++, 350 );
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
    //AUTOS DER
    image(autode [0], PAutoD--, 200 );
    if (cont >= 50 ) {
      image(autode [1], PAutoD2--, 200 );
      if (cont >= 100 ) {
        image(autode [2], PAutoD3--, 200 );
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
  textFont(berlin);
  textSize(t);
  fill(2, 15, 234);
  text( "Puntaje:" +puntos, x, y);
}
void peces() {
  image(pez [0], PezX, 100 );
  image(pez [1], PezX *2, 150 );
  image(pez [2], PezX+10, 70 );
  image(pez [3], PezX *2, 100 );
  image(pez [4], PezX-30, 150 );
  if (dist(PPatoX, PPatoY, PezX, 100) <= r) {
    puntos+=30;
  } else if (dist(PPatoX, PPatoY, PezX *2, 150) <= r) {
    puntos+=30;
  } else if (dist(PPatoX, PPatoY, PezX+10, 70) <= r) {
    puntos+=30;
  } else if (dist(PPatoX, PPatoY, PezX *2, 100) <= r) {
    puntos+=30;
  } else if (dist(PPatoX, PPatoY, PezX-30, 150 ) <= r) {
    puntos+=30;
  }
}
void colision() {
  if (dist(PPatoX, PPatoY, PAutoD--, 200) <= 60) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAutoD2--, 200) <= r) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAutoD3--, 200) <= r) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAuto++, 350) <= r) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAuto2++, 350) <= r) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAuto3++, 350) <= r) {
    estado="perdiste";
  }
}
