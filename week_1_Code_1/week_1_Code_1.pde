int bgColor=255;
int treePosition; 
int treeSize;
//set integers for the whole project and add as needed in parenthesis 

void setup() {
  //first parameter is widthh, 2nd is height
  size(500,500);
  background(bgColor);
  
   
  treeSize= int(width*.5);
  
  //prints to our console
  println(treePosition);
}


void draw (){
  
 treePosition= int(width*random(0,1));
  fill(0,0,200);
  //ellipse(x position, y position, width, height);
 // ellipse(200,300,80,400 );
//  fill (255,0,0);
 // rect (100,100,100,50);
 // fill (0,255,0);
  //rect(200,100,80,50);
  
  //this draws the rectangle from the center
  rectMode(CENTER);
  fill(100,100,200);
  rect(treePosition,treePosition + 50,treeSize*.25,treeSize*1.25);

 fill (0,255,100);
 ellipse (treePosition,treePosition,treeSize,treeSize);
 
 
}