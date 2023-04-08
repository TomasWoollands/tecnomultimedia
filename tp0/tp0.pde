// Woollands Tomas 85190/6
PImage gato;

void setup(){
  
gato = loadImage("gato1.png");
size(800,400);
background(225); 

//cuerpo
ellipse(630,314,200,400);

//orejas
triangle(581,58,536,105,518,24);
triangle(676,56,726,107,732,13);
fill(250,154,202);
triangle(686,61,719,95,725,29);
triangle(541,93,572,62,526,35);

//cabeza
 fill(255);
 ellipse(630,150,210,210);
 
 //ojos
 fill(154,212,250);
 ellipse(586,119,35,35);
 ellipse(670,119,35,35);
 fill(0);
  ellipse(585,119,5,30);
  ellipse(670,119,5,30);
  
//nariz
fill(250,154,202);
triangle(617,179,643,179,629,205);
fill(255,54,54);
triangle(632,198,637,190,631,190);
triangle(627,198,623,190,627,190);

//bigotes
fill(0);
line(644,188,702,171);
line(644,195,703,188);
line(644,204,697,205);
line(613,189,566,178);
line(613,196,567,197);
line(613,203,566,210);

//boca
line(629,204,629,217);
line(616,217,646,217);

 //foto
 image(gato,0,0,400,400);
 }
