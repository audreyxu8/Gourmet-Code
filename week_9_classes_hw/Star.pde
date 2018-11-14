class Star{
  float size;
  color starColor;
  float xPos;
  float yPos;
  float xSpeed;

Star(float _xPos, float _yPos, float _xSpeed){
  xPos = _xPos;
  yPos = _yPos;
  xSpeed = _xSpeed;
}

void display (color _starColor, float _size){
  size = _size;
  fill (_starColor); 
ellipse (xPos, yPos, 20+1*5, 30);
  
}

void grow(){
  if (size > 5){
  size = -0.5; }
 else { 
   size = +0.5;
 }
}

void shoot(){
  xPos = xPos + xSpeed;
}

}
