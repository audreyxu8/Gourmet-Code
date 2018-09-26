int circleSize; 
int xPos, yPos; 
color circleColor, bgColor; 
int distance;

boolean isCircleOn ; 

void setup(){
  size(500,500);
  bgColor = color(200,30,255);
  background (bgColor);
  
  xPos = width/2;
  yPos = height/2; 
  
  circleSize = 100;
  
}

void draw(){
  fill (circleColor);
  background (bgColor);
ellipse (xPos, yPos, circleSize, circleSize);

distance = int(dist (xPos, yPos, mouseX, mouseY));

if (distance<circleSize/2) {
  circleColor = color(0,255,0);
} else {
  circleColor = color (0);
}

if(isCircleOn==true) {
  bgColor = 0;
} else { 
  bgColor = 150; 
}

}

void mousePressed (){ 
  if (distance <circleSize/2) {
    isCircleOn = !isCircleOn;
    println (isCircleOn);
  }
}
//  if (distance <circleSize/2) {
//  bgColor= 255;
//} else { 
//  bgColor=100;