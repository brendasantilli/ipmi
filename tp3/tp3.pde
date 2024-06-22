// https://youtu.be/UKGMpOZyA-o

PImage img;
int cuadradosX, cuadradosY;
float anchoCuadrados, altoCuadrados;
color luz, sombra;

void setup() {
  size(800, 400);
  img = loadImage("op.jpg");
  cuadradosX = 12;
  cuadradosY = 12;
  luz = color(185, 172, 208);
  sombra = color(80, 70, 140);
  calcularTamanosCuadrados();
}

void draw() {
  background(255);

  image(img, 0, 0, 400, 400);

  for (int i = 0; i < cuadradosX; i++) {
    for (int j = 0; j < cuadradosY; j++) {
      float x = width / 2 + anchoCuadrados * i;
      float y = altoCuadrados * j;
      if (x >= 400) {
        float d = calcularDistancia(x + anchoCuadrados / 2, y + altoCuadrados / 2);
        if (d < 55) {
          fill(color(220, 90, 10));
        } else if (d < 150) {
          fill(color(190, 0, 10));
        } else if (d < 200) {
          fill(color(139, 0, 0));
        } else {
          fill(color(80, 20, 10));
        }
        noStroke();
        rect(x, y, anchoCuadrados, altoCuadrados);
      }

      if (i < 6 && j < 6) {
        seccionSuperiorIzquierda(x, y);
      } else if (i >= 6 && j < 6) {
        seccionSuperiorDerecha(x, y);
      } else if (i < 6 && j >= 6) {
        seccionInferiorIzquierda(x, y);
      } else {
        seccionInferiorDerecha(x, y);
      }
    }
  }
}
