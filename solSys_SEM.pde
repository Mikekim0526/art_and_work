float X,Y;
float t,y,m,n;

void setup(){
  size(600,600,P3D);
  frameRate(300);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  fill(200,100,60);
  stroke(0,50);
  sphere(height/10);
  
  y=n*PI/360;
  m=n*PI/30;
  
  X=270*cos(y);
  Y=270*sin(y);
  fill(50,200,200);
  ellipse(X,Y, height/20, height/20);
  delay(100);
  
  fill(200,180,100);
  ellipse(X+27*cos(m),Y+27*sin(m), height/60, height/60);
  n+=2;
}
