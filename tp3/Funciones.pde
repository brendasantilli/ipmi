
float calcularDistancia(float x, float y) {
  return dist(x, y, width * 0.75, height * 0.5);
}

void calcularTamanosCuadrados() {
  anchoCuadrados = (width / 2) / float(cuadradosX);
  altoCuadrados = height / float(cuadradosY);
}

void seccionSuperiorIzquierda(float x, float y) {
  fill(luz);
  quad(x + anchoCuadrados / 2, y, x + anchoCuadrados, y,
    x + anchoCuadrados, y + altoCuadrados, x + anchoCuadrados / 2, y + altoCuadrados);
  fill(sombra);
  quad(x, y, x + anchoCuadrados, y,
    x + anchoCuadrados / 2, y + altoCuadrados / 2, x, y + altoCuadrados / 2);
}

void seccionSuperiorDerecha(float x, float y) {
  fill(luz);
  quad(x + anchoCuadrados / 2, y, x + anchoCuadrados, y,
    x + anchoCuadrados, y + altoCuadrados, x + anchoCuadrados / 2, y + altoCuadrados);
  fill(sombra);
  quad(x, y + altoCuadrados / 2, x + anchoCuadrados / 2, y + altoCuadrados / 2,
    x + anchoCuadrados, y + altoCuadrados, x, y + altoCuadrados);
}

void seccionInferiorIzquierda(float x, float y) {
  fill(luz);
  quad(x, y, x, y + altoCuadrados,
    x + anchoCuadrados / 2, y + altoCuadrados,
    x + anchoCuadrados / 2, y + altoCuadrados / 2);
  fill(sombra);
  quad(x, y, x + anchoCuadrados, y,
    x + anchoCuadrados, y + altoCuadrados / 2,
    x + anchoCuadrados / 2, y + altoCuadrados / 2);
}

void seccionInferiorDerecha(float x, float y) {
  fill(luz);
  quad(x, y, x, y + altoCuadrados,
    x + anchoCuadrados / 2, y + altoCuadrados, x + anchoCuadrados / 2, y);
  fill(sombra);
  quad(x + anchoCuadrados / 2, y + altoCuadrados / 2,
    x + anchoCuadrados, y + altoCuadrados / 2,
    x + anchoCuadrados, y + altoCuadrados, x, y + altoCuadrados);
}

void mousePressed() {
  cuadradosX = int(random(6, 18));
  cuadradosY = int(random(6, 18));
  calcularTamanosCuadrados();
}

void reiniciarVariables() {
  cuadradosX = 12;
  cuadradosY = 12;
  calcularTamanosCuadrados();
}

void keyPressed() {
  if (key == 'r') {
    reiniciarVariables();
  }
}
