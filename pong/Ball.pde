class Ball{
  float x,y;
  float xSpeed, ySpeed; 
  float size; 
  
  Ball(float _x, float _y){
    x = _x; 
    y = _y;
    
    xSpeed = random (-5,5);
    ySpeed = random (-2,5);
    
    size = 50;
  }
  
  //bounce paddle 
 void bounceP(){
   xSpeed *= -1.1;
   ySpeed *= 1.1;
 }
  //bounce top and bottom
  void bounceY(){
    ySpeed = -ySpeed;
  }
  
  void bounceX(){
    xSpeed = -xSpeed;
  }
  //display
  
  void display(){
    fill (0,255,200);
    ellipse (x, y, size, size);
  }
  
  //move (initial move)
  void move(){
    xSpeed += xSpeed; 
    ySpeed += ySpeed;
  }
  
  //restart
    //reset the bball 
   // subtract score 
   
   void reset(){
     x = width/2; 
     y = height/2;
   }
   

   
   
  
}
