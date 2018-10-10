float x;
float y=500;

void setup (){
  background (0);
  size (700,500);
  
}

void draw(){
  
  x= lerp (x,y,0.1);
  fill (100,0,150,100);

  ellipse (y, height/2,100,100);
  
  fill (0,255,0,50);
  ellipse (x, height/2,100,100);
}

void mousePressed (){
  y=mouseX;
}