void setup (){ 
   size (800,800);
}

void draw (){ 
   //evenly space out the circles - good for set number of loops
  for ( int i = 0; i <= 60; i ++) {
    //nice gradient fill 
    fill (map (i,0,60, 0,255));
    int r = int (random (10,20));
    ellipse (i*r, height/4, 10, 10);
    
  }
  
  // adaptable to screen size using these variables . canvas size is variable 
    for ( int i = 0; i <= width; i+= 10) {
      ellipse (i, height/2, 10,10);
  }
  // if u want to vary the size of your shapes 
// use this variable to set the size of thhe ellipses without them over lapping . 
int size = 60;
for ( int i = 0; i <= width; i +=size) {
  int c = int( map (i,0,width, 0, 255));
  fill (100,c,c);
    ellipse (i, height/1.5, size, size);
  }

}