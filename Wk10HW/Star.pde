class Star{
  //data 
  PVector position; 
  PVector velocity; 
  PVector gravity;
  
  color c; 
  
  float size;
  
  //constructor
  Star(){
    position = new PVector(mouseX, mouseY);
    // x speed, y speed
    velocity = new PVector(random(-10,10), random (-5,5));
    gravity = new PVector (0,.2);
    
  }
  
  //methods
  void shoot(){
    position.add(velocity);
  }
  
  void gravity(){
    velocity.add(gravity);
  }
  

  
  void display(float _size){ 
    
    c = color (map(position.x, 0, 255, 0, 100),
    0, map(position.y, 100, 255, 100, 255));
    fill (c);
    
    //same size balls 
    size = _size; 
  
     size = map (position.y, 0, height, 50, height);
 
    
    ellipse (position.x, position.y, size, size);

  }
  

  
  
  
}
