float x, y;
float x2, y2;
int size = 50;

void setup () {
  size (600,600);
  x = width/2; 
  y = height/2;
  
  x2 = width*.8; 
  y2 = height*.8;
  
}

void draw (){


//if (calcDist (x,y) < size/2){ 
//  background (255,255,0); 
//} else if (calcDist(x2,y2) < size/2) { 
//  background (255,0,255);
//}

int bgColor;
int b;

bgColor = int (map (calcDist (x,y), 0, width/2, 0, 255)); 
//divide width by 2 makes the range smaller therefore brighter colour 
b = int (map (calcDist (x2,y2), 0 , width/2, 100, 255)); 

background (bgColor, 0, b); 

println (calcDist (x,y));

  ellipse (x, y, 50,50);
  ellipse (x2,y2,size,size);
}

//local variable, each one has own distinguished one without having to make seperate variables. 
float calcDist (float xPos, float yPos){
  float dist = dist (mouseX, mouseY, xPos, yPos);
  return dist;
}