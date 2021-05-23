//Applied some IntLists : px, py, rd, mode to record (x,y) coordinate and distance, clickness of every drop point.
//Made setRingInfo function : record information about mouse coordinate and clickness every moment.
//Made drawRings function : call oneRing function with rings' information from Lists - px, py, rd, mode
//add List ap : alpha of dropped color fluid
//Next : make more seeming like water drop -> not constant depth and distance

PImage pebbles;

IntList px, py;
IntList rd;
IntList ap;
IntList mode;

int cFrame=0;
int duration = 60;
int thickness = 5;
int period = 5;
boolean click = false;

void setup() {
  size(900, 600);
  frameRate(60);
  pebbles = loadImage("pebbles.jpg");
  pebbles.resize(900, 600);
  image(pebbles, 0, 0);
  noStroke();

  px = new IntList();
  py = new IntList();
  rd = new IntList();
  ap = new IntList();
  mode = new IntList();

  px.set(1, width/2);
  py.set(1, height/2);
  rd.set(1, 0);
  ap.set(1, 0);
  mode.set(1, 0);

  cFrame = -duration;

  setRingDistance();
}

void draw() {
  image(pebbles, 0, 0);

  setRingInfo();
  drawRings();
}

void setRingDistance() {
  float alpha =0;
  for (int i=duration; i>0; i--) {
    alpha = 50-sqrt(i/2*duration);
    rd.set(i, i);
    ap.set(i, int(alpha));
  }
}

void setRingInfo() {
  if (mouseX>duration && mouseX<width-duration
    && mouseY>duration && mouseY<height-duration
    && click  && frameCount%period==1) {
    px.set(1, mouseX);
    py.set(1, mouseY);
    mode.set(1, 1);
  } else {
    mode.set(1, 0);
  }
}

void drawRings() {
  if (frameCount<duration) {
    for (int i=frameCount; i>0; i--) {
      px.set(i+1, px.get(i));
      py.set(i+1, py.get(i));
      mode.set(i+1, mode.get(i));
      if (mode.get(i)==1) {
        oneRing(px.get(i), py.get(i), i, thickness);
        fill(255, 0, 0, ap.get(i));
        ellipse(px.get(i), py.get(i), 2*(thickness+i), 2*(thickness+i));
      }
    }
  } else {
    for (int i=duration; i>0; i--) {
      px.set(i+1, px.get(i));
      py.set(i+1, py.get(i));
      mode.set(i+1, mode.get(i));
      if (mode.get(i)==1) {
        oneRing(px.get(i), py.get(i), i, thickness);
        fill(255, 0, 0, ap.get(i));
        ellipse(px.get(i), py.get(i), 2*(thickness+i), 2*(thickness+i));
      }
    }
  }
}

void oneRing(int x, int y, int dist, int thick) {
  loadPixels();

  for (int a=0; a<360; a++) {
    for (int d=0; d<thick; d++) {
      pixels[int(x+cos(a*PI/360)*(dist+d)) + int(y-sin(a*PI/360)*(dist+d))*width]
        = pebbles.get(int(x+cos(a*PI/360)*dist), int(y-sin(a*PI/360)*dist));
      pixels[int(x+cos(a*PI/360)*(dist+d)) + int(y+sin(a*PI/360)*(dist+d))*width]
        = pebbles.get(int(x+cos(a*PI/360)*dist), int(y+sin(a*PI/360)*dist));
    }
  }

  updatePixels();
}


void mousePressed() {
  cFrame = frameCount;
  click = true;
  println(mouseX, mouseY);
}

void mouseReleased() {
  click = false;
}
