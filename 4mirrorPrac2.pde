float mx, my, pointX, pointY;
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
  pointX=mouseX-mx;
  pointY=mouseY-my;
  
    /*if(dist(pointX,pointY,0,0)>preD){
    r++;
  } else if(dist(pointX,pointY,0,0)==preD){
    r+= 0;
  } else if(r>4){
    r--;
  }*/
  
  fill(255-abs(pointX*255/mx), 0, abs(pointX*127/mx)+abs(pointY*127/my));
  ellipse(pointX, pointY, r, r);
  ellipse(-pointX, pointY, r, r);
  ellipse(pointX, -pointY, r, r);
  ellipse(-pointX, -pointY, r, r);
  
  ellipse(pointY, pointX, r, r);
  ellipse(-pointY, pointX, r, r);
  ellipse(pointY, -pointX, r, r);
  ellipse(-pointY, -pointX, r, r);
  preD = dist(pointX, pointY, 0, 0);
}
