int t;
float A;


void setup(){
  size(800,600,P3D);
  t=0;
  frameRate(60);
}

void draw(){
  background(0);
  stroke(170,140,60,100);
  //ambientLight(200,100,60,0,0,-1);
  pushMatrix();
  translate(width/2, height/2, 0);
  directionalLight(205,205,255,cos(A),0,sin(A));
  directionalLight(170,140,60,0,0,-1);
  //fill(220,100,60);
  sphere(145);
  popMatrix();
  t++;
  A=PI*t/360;
}
