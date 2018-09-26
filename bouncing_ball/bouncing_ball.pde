float x,y;
int size = 100;
float xSpeed, ySpeed; 

void setup(){ 
  size (500,500); 
  
  xSpeed = random (1,5); 
  ySpeed = random (1,5);
 
  x= width/2;
  y= height/2;
} 

void draw (){ 
  // if u dont want thhat trail then 
  // background (0);
  
 if (xSpeed == ySpeed) {
   xSpeed = random (1,5); 
  ySpeed = random (1,5);
 }
 
  ellipse (x,y,size,size);
  
  if (x>width - size/2 || x< size/2){ 
    xSpeed = xSpeed * -1;
  }
   if (x>height - size/2 || y< size/2){ 
    ySpeed = ySpeed * -1;
  }
  x = x + xSpeed; 
  y = y + ySpeed;
}
  