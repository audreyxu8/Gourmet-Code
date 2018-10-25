

void setup() {
  size(600, 600);
}

void draw() {
  int yPosition = (height/2) + frameCount ;
  ellipse(width/2, yPosition, 100, 100);

  if (yPosition > height) {
    yPosition = width/2;
  } 
  //else {
  //  yPosition+=10;
  //}
}
