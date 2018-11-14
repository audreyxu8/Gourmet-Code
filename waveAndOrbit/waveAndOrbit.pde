PVector position; 
float theta = 0; 
int orbitSize = 50; 
int yIncrement;

void setup(){
  background(0);
  size (600,600); 
  position = new PVector (0, 0);
  
}

void draw (){
  //background (0);
  theta +=.1; 
  // or u could say 
  //theta= frameCount;
  
  //orbit movement 
  //position.x = width/2 + cos(theta)*orbitSize;
  //position.y = height/2 + sin(theta)*orbitSize;
  
  
  //wave  on x axis
  //position.x ++;
  //position.y = height/2 + sin(theta)*orbitSize;
  
  //wave on y 
   position.x = width/2 + cos(theta)*orbitSize;
   //position.y +=5;
   position.y += yIncrement;
   
   if (position.y >= height-25) {
     yIncrement = -5;
   }
  
  if (position.y >= 25){
   yIncrement = 5;
  }
  
    ellipse (position.x, position.y, 50,50);
}
