class Particle{
  //data 
  PVector position; 
  PVector velocity; 
  PVector gravity;
  
  color c; 
  
  float size;
  
  //constructor
  // not setting parameters cuz position is always varied??
  Particle(){
    position = new PVector(mouseX, mouseY);
    // x speed, y speed
    velocity = new PVector(random(-5,5), random (1,5));
    gravity = new PVector (0,.1);
    
  }
  
  void fall(){
    position.add(velocity);
  }
  
  void gravity(){
    velocity.add(gravity);
  }
  
  void bounce(){
    velocity.y = -velocity.y; 
  }
  
  void sideBounce(){
    velocity.x = -velocity.x;
  }
  
  void display(float _size){
    //noStroke();
   
    c = color (map(position.x, 100, 255, 100, 255),
    0, map(position.y, 100, 255, 100, 255));
    fill (c);
    
    //same size balls 
    //size = _size; 
    
    //lol mapping it to position 
     size = map (position.y, 0, height, 10, height);
    
    //map to the velocity
    //size = map (velocity.y, 0, 100, 10, 50);
    
    ellipse (position.x, position.y, size, size);

  }
  

  
  
  
}
