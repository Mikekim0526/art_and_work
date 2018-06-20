int concentration;
int t;
float ang;

void setup() {
  size(100, 100, P3D); 
  concentration = 600;  // Try 1 -> 10000
  background(70);
  frameRate(120);
}
void draw() {
  noStroke(); 
  spotLight(251, 252, 226, 50,50,400, 
    0, 0, -100, PI/45, concentration);
  //spotLight(251, 252, 226, 140*cos(ang), 50, 300*sin(ang), 
  //  0, 0, -1, PI/45, concentration);
  pushMatrix();
  translate(80, 50, 0); 
  sphere(30);
  popMatrix();
  pushMatrix();
  translate(30, 30, 0);
  sphere(15);
  popMatrix();
  translate(20, 60, -30);
  sphere(20);
  t+=3;
  ang=PI*t/360;
}
