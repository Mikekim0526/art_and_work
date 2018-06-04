float mx, my, X, Y;
float r;
float preD;

void setup() {
  size(1200, 800);
  mx=width/2;
  my=height/2;
  background(255);
  r=8;
}

void draw() {
  translate(mx, my);
  X=mouseX-mx;
  Y=mouseY-my;
  
    /*if(dist(X,Y,0,0)>preD){
    r++;
  } else if(dist(X,Y,0,0)==preD){
    r+= 0;
  } else if(r>4){
    r--;
  }*/
  r=dist(X, Y,0,0)*3/50;
  
  if(mousePressed){
    fill(255-abs(X*255/mx), 0, abs(X*127/mx)+abs(Y*127/my));
    eightMirrored();
    rotate(PI/4);
    
    eightMirrored();
    rotate(PI/-4);
  }
  preD = dist(X, Y, 0, 0);
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
