Ship myShips [] = new Ship[40];

void setup(){
  size(800, 600); 
  noStroke(); 
  
for (int i = 0; i<40; i++){
  myShips [i]= new Ship(random(0, width),random(0, height), 
    color(random(0,255), random(0,255), random(0,255), 40));
}
    
}

void draw(){
  background(255); 
  
  for (int i = 0; i<40; i++){
  myShips[i].move();
  myShips[i].display(); 
  myShips[i].reset(); 
  }

}
