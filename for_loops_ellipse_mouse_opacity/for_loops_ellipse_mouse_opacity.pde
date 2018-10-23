void setup (){
  size (800,800);
  
  noStroke ();
  
}

void draw (){
  
 background (0);
  // set up these for loops in draw cuz there is varying opacities and stuff 20 per row
  int numCircles = 20; 
  //declare size outside the loop so u get a border 
       int size = width/numCircles;
  for (int i = size/2; i < width; i+= width/numCircles){
    //need a second loop inside to get a range of values
    for (int j = size/2; j < height; j += height/numCircles){
      int g = int (map (i, 0 ,width, 0, 255));
      int r = int (map (j,0,height,0,255)); 
      
      float d = dist ( mouseX, mouseY, i, j); 
      
      // play around with the map parameters fun 
      float s = map (d, 0, width/3, 255, 20);
      
      float o = map (d, 0, width/2, 255, 50);
   fill (r, g, 100, o);
      ellipse (i, j, s, s);  
    }
  }
}
