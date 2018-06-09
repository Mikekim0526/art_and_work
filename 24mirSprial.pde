float mx, my, X, Y;
float r;

void setup() {
  //size(1200, 800);
  fullScreen();
  mx=width/2;
  my=height/2; 
  background(255);
  r=5;
}

void draw() {
  translate(mx, my);
  X=mouseX-mx;
  Y=mouseY-my;
  
  r=dist(X, Y,0,0)/20;
  
  if(mousePressed && mouseButton == LEFT){
    fill(255-abs(X*255/mx), 0, abs(X*127/mx)+abs(Y*127/my));
    stroke(100,100);
    eightMirrored();
    rotate(PI/12);
    
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
  }
    if(mousePressed && mouseButton == RIGHT){
    fill(255, 255-abs(X*255/mx), abs(X*127/mx)+abs(Y*127/my));
    stroke(100,100);
    eightMirrored();
    rotate(PI/12);
    
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
    rotate(PI/12);
    eightMirrored();
  }
}

void eightMirrored(){
  ellipse(X, Y, r, r);
  ellipse(-X, -Y, r, r);

}
