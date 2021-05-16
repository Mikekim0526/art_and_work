//making circle waves due to the water drop effects
//Now : made "oneRing" function to create sequential drop wave
// -> the rings have x, y, r=diameter, dep=depth of every ring
//Next : make more seeming like water drop -> not constant depth and distance

boolean click = false;
PImage pebbles;
int diameter = 50;
int cMouseX, cMouseY;
int cFrame=0;
int duration = 50;

void setup() {
  size(600, 400);
  frameRate(60);

  pebbles = loadImage("pebbles.jpg");
  pebbles.resize(600, 400);

  image(pebbles, 0, 0);
}

void draw() {
  image(pebbles, 0, 0);

  loadPixels();
  if (frameCount -cFrame <= duration && frameCount > 300) {
    oneRing(cMouseX, cMouseY, frameCount-cFrame, 5);
    updatePixels();
  }
}

void oneRing(int x, int y, int r, int dep) {
  for (int a=0; a<360; a++) {
    for (int d=0; d<dep; d++) {

      pixels[int(x+cos(a*PI/360)*(r+d)) + int(y-sin(a*PI/360)*(r+d))*width]
        = pebbles.get(int(x+cos(a*PI/360)*r), int(y-sin(a*PI/360)*r));
      pixels[int(x+cos(a*PI/360)*(r+d)) + int(y+sin(a*PI/360)*(r+d))*width]
        = pebbles.get(int(x+cos(a*PI/360)*r), int(y+sin(a*PI/360)*r));
    }
  }
}

void mousePressed() {
  if (click==false) {
    cMouseX = mouseX;
    cMouseY = mouseY;
    cFrame = frameCount;
  }
  click = true;
  println(mouseX, mouseY);
}

void mouseReleased() {
  click = false;
}
