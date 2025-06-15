//https://youtu.be/wV0i1_KqZtg
//Aragón Julieta - Comisión 2

PImage imagen;
int cant = 20;
float tam;
boolean restarted = false;
boolean cambiarColores = false;
int cuadroX;
int cuadroY;


color colorRojo = color(220, 0, 0);
color colorNaranja = color(255, 150, 0);
color colorBlanco = color(255);
color colorRosa = color(255, 170, 200);
color colorFucsia = color(215, 0, 135);

void setup() {
  size(800, 400);
  imagen = loadImage("cuadradito.png");
  tam = width / cant;
}

void draw() {
  image(imagen, 0, 0, 400, 400);
  translate(width / 2, 0);
  
  for (int x = 0; x < cant - 1; x++) {
    for (int y = 0; y < cant - 1; y++) {
      if ((x + y) % 2 == 0) {
        
        if (mouseX >= 0 && mouseX < width && mouseY >= 0 && mouseY < height) {
          cuadroX = floor(mouseX / tam);
          cuadroY = floor(mouseY / tam);
        }

        
        if (estaDentroDelCuadro(x, y)) {
          fill(160, 32, 240); 
        } else {
          fill(255); 
        }

        rect(x * tam, y * tam, tam, tam);

        if (cambiarColores) {
          switch ((x + y) % 5) {
            case 0:
              fill(colorRojo); break;
            case 1:
              fill(colorNaranja); break;
            case 2:
              fill(colorBlanco); break;
            case 3:
              fill(colorRosa); break;
            case 4:
              fill(colorFucsia); break;
          }
        } else {
          fill(0);
        }

        ellipse(x * tam + tam / 2, y * tam + tam / 2, tam * 0.4, tam * 0.4);
        
 
        dibujarExtra(x, y);

      } else {
        fill(0);
        rect(x * tam, y * tam, tam, tam);

        if (cambiarColores) {
          switch ((x + y) % 5) {
            case 0:
              fill(colorRojo); break;
            case 1:
              fill(colorNaranja); break;
            case 2:
              fill(colorBlanco); break;
            case 3:
              fill(colorRosa); break;
            case 4:
              fill(colorFucsia); break;
          }
        } else {
          fill(255);
        }

        ellipse(x * tam + tam / 2, y * tam + tam / 2, tam * 0.4, tam * 0.4);
      }
    }
  }
}
void dibujarExtra(int x, int y) {
  float d = dist(mouseX, mouseY, x * tam, y * tam);
  if (d < 30) {
    fill(random(255), random(255), random(255), 150);
    ellipse(x * tam + tam / 2, y * tam + tam / 2, tam * 0.2, tam * 0.2);
  }
}
  boolean estaDentroDelCuadro(int x, int y) {
  return (x == cuadroX && y == cuadroY) || 
         (x == cuadroX + 1 && y == cuadroY) || 
         (x == cuadroX && y == cuadroY + 1) || 
         (x == cuadroX + 1 && y == cuadroY + 1);
}

void mousePressed() {
  if (mouseX >= 0 && mouseX <= 800 && mouseY >= 0 && mouseY <= 800) {
    restarted = true;
    setup();
    cambiarColores = false;
  }
}

void keyPressed() {
  if (key == ' ') {
    cambiarColores = !cambiarColores;
  }
}
