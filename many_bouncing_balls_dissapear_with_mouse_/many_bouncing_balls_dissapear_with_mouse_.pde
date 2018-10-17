//declare this above the new array or processing wont read it right 
int num = 100;
//int size =10;

int [] xPos = new int[num];
int [] yPos = new int[num];

int [] xSpeed = new int[num];
int [] ySpeed = new int[num];

int [] circleSize = new int [num];
//color array has to be of thhe type color
color [] c = new color [num]; 

int [] opacity = new int [num];


void setup (){
  size (600,600);
  for ( int i=0; i<num; i++){
    
    opacity [i] = int (random (255));
   circleSize [i] = int (random (1,200));
   
   
  xPos [i] = int (random (circleSize[i]/2, width- circleSize[i]/2));
  yPos [i] = int (random (circleSize[i]/2, height- circleSize[i]/2));
  
  xSpeed [i] = int (random (1,5));
  ySpeed [i] = int (random (1,5));
  
 
c [i] = color (random (255), random (150,255), random (255)); 
  
  }
}

void draw (){
  background (0);
  for (int i = 0; i<num; i++){
    //making them move 
    xPos [i] = xPos [i] + xSpeed[i];
    yPos [i] = yPos [i] + ySpeed [i];
    
 fill (c[i], opacity[i]);
 stroke(0,255,0); 
    ellipse (xPos [i], yPos [i], circleSize [i], circleSize[i]);
  
    //setting the boundaries fr balls
    if (xPos[i] <= circleSize [i]/2 || xPos[i] >= width-circleSize[i]/2){
      xSpeed [i] = xSpeed [i] *-1;
    }
       if (yPos[i] <= circleSize [i]/2 || yPos[i] >= height-circleSize [i]/2){
      ySpeed[i] = ySpeed[i] *-1;
    }
    
    if (dist (mouseX, mouseY, xPos[i], yPos[i]) <circleSize[i]/2){
      opacity [i] =0;
    }
    
    if (keyPressed){
      opacity[i] = 255;
    }
  }
  
}
