PImage imagenHoz;
void setup(){
  size(800,400);
  imagenHoz = loadImage("Hoz.jpg");
}
void draw(){
background(70,80,80);
noStroke();
//LUZ
fill(255);
ellipse(555,125,250,200);
//MANGO
fill(100,50,50);
ellipse(575,280,37,150);
fill(234,215,200);
ellipse(575,345,30,40);
//HOZ
fill(234,215,200);
rect(560,160,30,75);
ellipse(550,130,257,201);
//CUBREhaciaFONDO
fill(70,80,80);
ellipse(525,125,240,170);
rect(424,120,136,115);
//LINEAS MANGO
strokeWeight(3);
stroke(90,40,40);
line(561,245,588,245);
line(560,255,589,255);
line(559,265,590,265);
line(558,275,591,275);
line(558,285,591,285);
line(559,295,590,295);
line(560,305,589,305);
line(561,315,588,315);
//BRILLOS
noStroke();
fill(255, 221, 89);
triangle(615,20,605,35,625,35);
triangle(615,50,605,35,625,35);
triangle(630,10,625,20,635,20);
triangle(630,30,625,20,635,20);
//IMAGEN REFERENCIA
image(imagenHoz,0,0,400,400); 
}
