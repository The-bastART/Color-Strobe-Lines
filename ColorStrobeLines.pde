int lin_num=150;

float t=1000.0;

float x1(float t) {
  return sin(t/10)*10+sin(t/5)*20-tan(t/50)*100;
}
  
float y1(float t) {
  return cos(t/50)*100-sin(t/10)*150;
}
  
float x2(float t) {
  return tan(t/20)*200+sin(t)*20;
}
  
float y2(float t) {
  return tan(t/20)*200+cos(t/12)*20+sin(t/2)*100;
}

void setup() {
    background(0);
    //size(1920,1080);
    fullScreen();
    frameRate(100);
}

void mouseClicked(){
  clear();  
}

void draw() {
  //clear();
  //frameRate(1+(width/(1+mouseX)));
  //translate(width/2, height/2);
  //translate(sin(frameCount)*random(1000),cos(frameCount)*random(800));
  translate(mouseX,mouseY);
  rotate(tan(frameCount)*random(100));
  //stroke(x1(t*t)*2,x2(t+t),y1(t));
  stroke(100-sin(frameCount)*50,100-cos(frameCount)*50,100-tan(frameCount)*50);
  strokeWeight(1);
  
  for (int i=0; i<lin_num; i++){
    line(x1(t+i),y1(t+i),x2(t+i),y2(t+i));
  }
  for (int i=0; i<lin_num; i++){
    line(x1(t+i+20),y1(t+i+20),x2(t+i),y2(t+i+20));
  }
  for (int i=0; i<lin_num; i++){
    line(x1(t+i+40),y1(t+i),x2(t+i+40),y2(t+i+40));
  }

  
  t+=0.1;
}
  
