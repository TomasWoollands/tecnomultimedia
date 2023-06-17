void degradee(int lx,int ly,int ancho, int alto){
  for(int l=ly; l<ly+alto; l++){
    float tono = l*255/alto;
    stroke(tono);
    line(lx,l, lx+ancho,l);
  }
}

void resetear(){
  cant = 15;
}
