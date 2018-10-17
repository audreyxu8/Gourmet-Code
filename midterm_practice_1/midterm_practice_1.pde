//change this sketch so it rotates around the original position of the shape 


void setup() {
  background (0);
  size(600, 600); 
  rectMode(CENTER); 
  
}

void draw(){
int x = mouseX, mouseY;
  
  pushMatrix(); 
  fill (255);
  translate (width/2, height/2);
  rotate(radians(x)); 
  rect(0, 0, 100, 100); 
  popMatrix(); 
}
