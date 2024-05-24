color violeta, verde;
int posX, posY, midY, avanza, tamFont, textAlpha;
int maxAlpha = 255;
int fadeVelocidad = 5;
float pantalla, contador, cambioPantalla, d;
PImage intro, shinji, evangel, silla, pcinco;
PFont ArialBlack;

void setup() {
  size(640, 480);
  violeta = color(100, 20, 100);
  verde = color(0, 255, 30);
  posX = width / 2;
  posY = height;
  midY = 360;
  avanza = 4;
  tamFont = 10;
  textAlpha = 0;
  pantalla = 1;
  contador = 0;
  cambioPantalla = 180;
  intro = loadImage("intro.jpg");
  shinji = loadImage("shinji.jpg");
  evangel = loadImage("evangel.png");
  silla = loadImage("silla.png");
  pcinco = loadImage("pcinco.png");
  ArialBlack = loadFont("Arial-Black-48.vlw");
}

void draw() {
  println(contador);
  imageMode(CENTER);
  textFont(ArialBlack);
  noStroke();
  if (pantalla == 1) {
    textAlign(CENTER, TOP);
  } else {
    textAlign(LEFT);
  }

  if (pantalla == 1) {
    image(intro, 320, 240, 640, 480);
    if (tamFont < 60) {
      tamFont++;
    }
    textSize(tamFont);
    fill(100, 10, 10);
    text("NEON GENESIS \nEVANGELION", 317, 303);
    fill(200, 0, 0);
    text("NEON GENESIS \nEVANGELION", 320, 300);
    contador++;
    if (contador >= cambioPantalla) {
      contador = 0;
      pantalla += 1;
    }
  } else if (pantalla == 2) {
    posX -= 5;
    image(shinji, 320, 240, 640, 480);
    textSize(30);
    if (posX < 20) {
      fill(0, 0, 70, 230);
      rect(0, 375, 640, 125, 5);
      fill(255);
      text("Evangelion sigue la historia\n" +
        "del adolescente Shinji Ikari.", 20, 420);
    } else {
      fill(0, 0, 70, 230);
      rect(posX - 20, 375, 640, 125, 5);
      fill(255);
      text("Evangelion sigue la historia\n" +
        "del adolescente Shinji Ikari.", posX, 420);
    }
    contador++;
    if (contador >= cambioPantalla) {
      contador = 0;
      pantalla += 1;
    }
  } else if (pantalla == 3) {
    cambioPantalla = 250;
    image(evangel, 320, 240, 640, 480);
    fill(90, 180, 240, 230);
    rect(10, 320, 540, 200, 20);
    textSize(25);
    fill(255);
    if (posY > midY) {
      posY -= avanza;
    }
    text("Éste es reclutado por su padre para\n" +
      "pilotar el robot EVA01 y proteger la\n" +
      "Tierra de los Ángeles, cuyo objetivo\n" +
      "es generar un evento apocalíptico.", 30, posY);
    contador++;
    if (contador >= cambioPantalla) {
      contador = 0;
      pantalla += 1;
    }
  } else if (pantalla == 4) {
    cambioPantalla = 300;
    image(silla, 320, 240, 640, 480);
    if (textAlpha < maxAlpha) {
      textAlpha += fadeVelocidad;
      if (textAlpha > maxAlpha) {
        textAlpha = maxAlpha;
      }
    }
    fill(60, 0, 30, 200);
    rect(0, 320, 640, 250);
    textSize(25);
    fill(255, textAlpha);
    text("Mientras esto sucede, Shinji también debe\n" +
      "lidiar con sus propios problemas personales\n" +
      "y sus complejas relaciones con el resto\n" +
      "de los personajes.", 20, 360);
    contador++;
    if (contador >= cambioPantalla) {
      contador = 0;
      pantalla += 1;
    }
  } else if (pantalla == 5) {
    if (contador == 0) {
      textAlpha = 0;
    }
    cambioPantalla = 300;
    image(pcinco, 320, 240, 640, 480);
    fill(230, 230, 230, 200);
    rect(0, 300, 640, 250);
    textSize(25);
    if (textAlpha < maxAlpha) {
      textAlpha += fadeVelocidad;
      if (textAlpha > maxAlpha) {
        textAlpha = maxAlpha;
      }
    }
    fill(10, 50, 30, textAlpha);
    text("Evangelion explora temas profundos\n" +
      "como la soledad, la identidad, la depresión\n" +
      "y el significado de la existencia humana,\n" +
      "entre momentos emocionales intensos\n" +
      "y giros en la trama.", 30, 340);
    contador++;
    if (contador >= cambioPantalla) {
      contador = 0;
      pantalla += 1;
    }
  } else if (pantalla == 6) {
    background(30, 5, 0);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(50);
    text("¿Ya te convencí\npara que la veas?", width/2, 200);
    if (mouseX > 250 && mouseX < 390 && mouseY > 300 && mouseY < 360) {
      fill(verde);
    } else {
      fill(violeta);
    }
    rect(250, 300, 140, 60, 10);
    fill(255);
    textSize(15);
    text("Reiniciar", 320, 330);
    if (mouseX > 250 && mouseX < 390 && mouseY > 300 && mouseY < 360 && mousePressed) {
      contador = 0;
      pantalla = 1;
      posX = width/2;
      posY = height;
      tamFont = 10;
      textAlpha = 0;
    }
  }
}
