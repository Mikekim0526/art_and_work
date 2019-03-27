int x, y;
int time;

IntList px;
IntList py;
IntList tm;

color ink[] = new color[1];
int alpha[] = new int[1];
int timing[] = new int[1];

void setup() {
  size(600, 400);
  background(80, 120, 200, 80);
  frameRate(20);

  px = new IntList();
  py = new IntList();
  tm = new IntList();
  
  px.set(0, 0);
  py.set(0, 0);
  tm.set(0, 0);
  
  timing[0]=0;
  alpha[0]=50;
}

void draw() {
  time++;
  fill(200, 0, 0);

  px.set(frameCount, mouseX);
  py.set(frameCount, mouseY);
  tm.set(frameCount, frameCount);

  for (int i=0; i<frameCount; i++) {
    drop(px.get(i), py.get(i), tm.get(i));
    
  }
}

void drop (int x, int y, int t) {
  fill(200, 0, 0, 20);
  noStroke();
  ellipse(x, y, t++, t++);
}
