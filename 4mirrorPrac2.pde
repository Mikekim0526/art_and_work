float mx, my, d;
float pointX, pointY;
int r;

void setup() {
  size(1200, 800);
  mx=width/2;
  my=height/2;
  background(255);
  r=8;
}

void draw() {
  translate(mx, my);
  pointX=mouseX-mx;
  pointY=mouseY-my;
  fill(255-pointX*255/mx,255-pointY*255/my, pointX*127/mx+pointY*127/my);
  ellipse(pointX, pointY, r, r);
  ellipse(-pointX, pointY, r, r);
  ellipse(pointX, -pointY, r, r);
  ellipse(-pointX, -pointY, r, r);
}
