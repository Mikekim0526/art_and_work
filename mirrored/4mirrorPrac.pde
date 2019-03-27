float x,y,d;
int r;

void setup(){
  size(1200,800);
  x=width/2;
  y=height/2;
  background(255);
  r=3;
}

void draw(){
  if(abs(mouseX-x)>d){
    r++;
  } else if(abs(mouseX-x)<d){
    r--;
  }
  ellipse(mouseX,  mouseY,r,r);
  ellipse(width-mouseX, mouseY,r,r);
  ellipse(width-mouseX, height-mouseY,r,r);
  ellipse(mouseX, height-mouseY,r,r);
  d=abs(mouseX-x); 
}
