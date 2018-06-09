float mx, my, X, Y;
float r;

void setup() {
  //size(1200, 800);
  fullScreen();
  mx=width/2;
  my=height/2; 
  background(255);
  r=8;
}

void draw() {
  translate(mx, my);
  X=mouseX-mx;
  Y=mouseY-my;
  
  r=dist(X, Y,0,0)*20;
  
  if(mousePressed){
    fill(255-abs(X*255/mx), 0, abs(X*127/mx)+abs(Y*127/my));
    stroke(100,100);
    eightMirrored();
    rotate(PI/6);
    
    eightMirrored();
    rotate(PI/6);
    eightMirrored();
  }
}

void eightMirrored(){
  ellipse(X, Y, r, r);
  ellipse(-X, Y, r, r);
  ellipse(X, -Y, r, r);
  ellipse(-X, -Y, r, r);
  
  ellipse(Y, X, r, r);
  ellipse(-Y, X, r, r);
  ellipse(Y, -X, r, r);
  ellipse(-Y, -X, r, r);
}
