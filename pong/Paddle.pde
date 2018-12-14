class Paddle{
  PVector position;
  float rectSize;
  
  
  Paddle(PVector _position){
    position = _position; 
    
    rectSize = 200;
  }
  
  void update(){
    position.y = mouseY;
  }
  
  void display(){
    rectMode(CENTER);
    fill (random (0,255));
    rect(position.x, position.y, 10, rectSize);
    
  }
  
  
  
  
}
