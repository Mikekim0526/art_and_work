int ink=1;
int Tclick;
boolean click=false;

int x, y;
int radian;
int alpha;
int duration=1;

IntList px, py;
IntList rd;
IntList ap;

void setup() {
  size(600, 400);
  background(80, 120, 200, 80);
  frameRate(30);

  px = new IntList();
  py = new IntList();
  rd = new IntList();
  ap = new IntList();

  px.set(1, -width);
  py.set(1, -height);
  rd.set(1, 0);
  ap.set(1, 0);
  
  Tclick=-120*duration;

  dropSet();
}

void draw() {
  background(80, 120, 200, 240);
  fill(200, 0, 0);

  if (click==true) {
    Tclick=frameCount;
  }

  if (frameCount-Tclick<100*duration) {
    dropMute();
  } else {
    dropSet();
  }

  if (frameCount<250) {
    for (int i=frameCount; i>0; i--) {
      px.set(i+1, px.get(i));
      py.set(i+1, py.get(i));
      drop(i);
    }
  } else {
    for (int i=250; i>0; i--) {
      px.set(i+1, px.get(i));
      py.set(i+1, py.get(i));
      drop(i);
    }
  }


  px.set(1, mouseX);
  py.set(1, mouseY);

  println(frameCount, "/", click, "///", ap.get(10), "   ", rd.get(10));
}

void drop (int i) {
  if (ink==1) {
    fill(255, 0, 0, ap.get(i));
    stroke(255, 0, 0, ap.get(i));
  } else if (ink==2) {
    fill(0, 255, 0, ap.get(i));
    stroke(40, 200, 0, 1.5*ap.get(i));
  } else if (ink==3) {
    fill(200, 160, 20, 1.5*ap.get(i));
    noStroke();
  } else {
    fill(20, ap.get(i));
  }
  ellipse(px.get(i), py.get(i), rd.get(i), rd.get(i));
}

void dropSet() {
  for (int n=duration*50; n>0; n--) {
    radian= int(sq(n)/(duration*20));
    rd.set(n, radian);
    alpha=int(50-sqrt(n*40/duration));
    ap.set(n, alpha);
  }
  for (int n=250; n>duration*50; n--) {
    rd.set(n, 0);
    ap.set(n, 0);
  }
}

void dropMute() {
  if (frameCount-Tclick<50*duration) {
    for (int n=frameCount-Tclick; n>0; n--) {
      ap.set(n, 0);
      rd.set(n, 0);
    }
  } else if (frameCount-Tclick==50*duration) {
    if (ink<4) {
      ink++;
    } else {
      ink=1;
    }
  } else if (frameCount-Tclick<100*duration) {
    for (int n=0; n<frameCount-Tclick-50*duration; n++) {
      radian= int(sq(n)/(duration*20));
      rd.set(n, radian);
      alpha=int(50-sqrt(n*40/duration));
      ap.set(n, alpha);
    }
  }
}

void mousePressed() {
  click=true;
}

void mouseReleased() {
  click=false;
}
