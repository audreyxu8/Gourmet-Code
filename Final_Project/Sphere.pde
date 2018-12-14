class Sphere {
  PVector pos;
  PVector vel; 

  int size = 60;

  Sphere() {
    pos = new PVector (width/2, height/2, 400);
    vel = new PVector (random(-3, 3), random (-3, 3), (random(-3,3)));

  }
  
  
  void display() {

    stroke (153, 0, 153);
    fill (0,50);
    translate(pos.x,pos.y,pos.z);
    sphere(60);
    
  }


void move() {
  pos.add(vel); 

  //bottom bounce 
  if (pos.y > height-size/2) {
    vel.y = -vel.y;
  }
  //side bounce
  if (pos.x < size/2 || pos.x > width-size/2) {
    vel.x = -vel.x;
  }
}




}
