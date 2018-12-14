class Particle{
  PVector pos; 
  PVector vel; 
  float size = random(5, 15);  
  
  int opacity = 255; 
  
  Particle(){
     pos = new PVector(random (0,600), random(0,600)); 
     
     vel = new PVector(random(-5, 5), random(-5, 5)); 
     
     
  }
  
  void move(){
    pos.add(vel); 
  }
  
  void bounce(){
    if(pos.x<= size/2 || pos.x>= width-size/2){
      vel.x = - vel.x*.9; 
      opacity -= 20; 
    }
    if(pos.y<= size/2 || pos.y>= height -size/2){
      vel.y = - vel.y*.9; 
      opacity -= 20; 
    }
  }
  
  void display(){
    fill(255, opacity); 
    ellipse(pos.x, pos.y, size, size); 
  }
  
  boolean dead(){
    if(opacity <= 20){
      return true;
    }else{
      return false;
    }
  }
  
  void remove(){
 if (opacity <=20){
   opacity = 0;
 }
  }
}
