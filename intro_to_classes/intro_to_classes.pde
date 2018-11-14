Plant daryl;
Plant eugene;
Plant treePos [] = new Plant [10];
//10 empty slots, we need to pushh instances into these 10 empty slots 
//for loop to push instances of plants in setup

void setup(){
  size (700,500); 
  
  //daryl = new Plant(int (random (100,200)));
  //eugene = new Plant(int (random (100,200)));
   for (int i = 0; i< treePos.length ; i++) {
     treePos[i] = new Plant(random (10,50), int (random(100,width)));
   }
  
}
 
 void draw (){
   background (0);
   //(height, numLeaves, color)
   //eugene.display(10, 4, color(0,150,50));
   //daryl.display (30,10, color (100,0,50));
   for (int i=0; i < treePos.length; i++){
  treePos[i].display(2+i*3, i*3, color(10,i*20,50));
  treePos[i].grow();
  println (treePos[i].plantHeight);
  //make a color array if u want to vary the colors more 
   }
 
 }
 
