float mx, my, X, Y;
float r,n,k;

void setup() {
  size(1200, 800);
  mx=width/2;
  my=height/2;
  background(255);
  frameRate(30);
  r=8;
  n=16;
  k=1;
}

void draw() {
  X=mouseX-mx;
  Y=mouseY-my;
  translate(mx, my);
 
  r=dist(X, Y,0,0)*3/50;
  
  pushMatrix();
  if(mousePressed){
    fill(255-abs(X*255/mx), 0, abs(X*127/mx)+abs(Y*127/my));
    eightMirrored();
  }
  popMatrix();
  rotate(PI/3);
  k++;
}

void eightMirrored(){
  ellipse(X, Y, r, r);
  ellipse(-X, -Y, r, r);
  
  //ellipse(Y, X, r, r);
  //ellipse(-Y, -X, r, r);
}
