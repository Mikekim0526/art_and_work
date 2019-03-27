int t;
float A;

void setup() {
  size(800, 600, P3D);
  t=0;
  frameRate(60);
}

void draw() {
  background(200);
  fill(255);
  stroke(170, 140, 60, 100);
  //ambientLight(200,100,60,0,0,-1);
  pushMatrix();
  translate(width/2, height/2, -200);
  //directionalLight(170, 165, 5, cos(A), 0, sin(A));
  directionalLight(100, 100, 100, 0, 0, -1);
  for(int i=0; i<360; i+=52){
    spotLight(200, 185, 10, -150+t+120*cos(PI*i/180), 120*sin(PI*i/180), 850, 0, 0, -1, PI/18, 600);
  }
  //spotLight(200,10,10, 120*cos(A), 120*sin(A), 855, 0, 0, -1, PI/18, 600);
  sphere(145);
  popMatrix();
  
  pushMatrix();
  translate(width/2+70, height/2, 0);
  sphere(40);
  popMatrix();
  t+=3;
  A=PI*t/360;
}
