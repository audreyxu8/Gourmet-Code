//rectangle conditionals
int rectX;
int rectY;
int rectSize;
float dist; 

boolean rectPressed = false;

//interactive button
int x; 
int y; 
int x2, y2; 
int size; 


boolean buttonClicked; 

//ball
float a,b;
float aSpeed, bSpeed; 




void setup() {
  size (800, 800); 



  rectX = width/4;
  rectY = height/4;
  rectSize = 400;

  x = width/2; 
  y = height/2; 
  x2= 100; 
  y2= 100; 
  size = 300;
  
  aSpeed = random (1,5); 
  bSpeed = random (1,5);
 
  a= width/2;
  b= height/2;
}

void draw () {

  if (rectPressed) {
    background(0);
  } else {
    background(200, 0, 255);
  }


  if (calcDist(rectX, rectY)< rectSize/4) {
    fill(0, 0, 200);
  } else {
    fill(0, 255, 0);
  }
  rect(rectX, rectY, rectSize, rectSize);




    if (buttonClicked) {
      fill(0, 0, 255); 
      rect(300, 300, 400, 400);
    } else {


      ellipse(x, y, size, size);  
      ellipse(x2, y2, size, size); 
      println(calcDist(x, y));
    }
  
   if (aSpeed == bSpeed) {
   aSpeed = random (1,5); 
  bSpeed = random (1,5);
 }
 
 fill(255,50,50);
  ellipse (a,b,size,size);
  
  if (a>width - size/2 || a< size/2){ 
    aSpeed = aSpeed * -1;
  }
   if (a>height - size/2 || b< size/2){ 
    bSpeed = bSpeed * -1;
  }
  a = a + aSpeed; 
  b = b + bSpeed;
}
  



 void mousePressed() {
    if (calcDist(x, y) <= 50) {
      buttonClicked = !buttonClicked;
    }
    if (calcDist(x2, y2) <=size/2) {
      buttonClicked =!buttonClicked;
    }
    dist = dist(mouseX, mouseY, rectY, rectX);

    if (dist < rectSize/2) {
      rectPressed = !rectPressed;
    }


  }
  

  float calcDist(int xPos, int yPos) {
      dist = dist(mouseX, mouseY, xPos, yPos);
      return dist;
    }