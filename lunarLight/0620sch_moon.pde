int t;
float A;

void setup() {
  size(800, 600, P3D);
  t=0;
  frameRate(60);
}

void draw() {
  background(0);
  stroke(170, 140, 60, 100);
  //ambientLight(200,100,60,0,0,-1);
  pushMatrix();
  translate(width/2, height/2, -200);
  directionalLight(205, 205, 255, cos(A), 0, sin(A));
  directionalLight(170, 140, 60, 0, 0, -1);
  spotLight(0,0,0, cos(A), 0, sin(A), 0, 0, -1, PI/30, 600);
  sphere(145);
  popMatrix();
  
  pushMatrix();
  translate(width/2+70, height/2, 0);
  sphere(40);
  popMatrix();
  t+=3;
  A=PI*t/360;
}
