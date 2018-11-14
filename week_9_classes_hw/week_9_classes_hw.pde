Star starPos [] = new Star [100];

void setup (){
  background (0);
  size (1000,500); 
  
  for (int i=0; i<starPos.length ; i++){
    starPos[i] = new Star(random (0,1000), random (0,250), random (1,8));
  }
  
}
  
void draw(){
  background (0);
  for (int i= 0; i<starPos.length; i++){
    starPos[i].display(5+i*8, color(i*50,i,0));
    starPos [i].grow();
    starPos [i].xSpeed;
  }
}
 
