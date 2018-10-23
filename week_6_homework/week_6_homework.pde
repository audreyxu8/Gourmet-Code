//Create an array of strings.
//Use probability to display text from your string array
//Create an array to store the position of multiple shapes (5+)
//Assign values to your position array using a for loop



int num = 5;

int[] xPos = {10, 100, 140, 250, 700};
int[] yPos = {80, 250, 400, 550, 750};

int[] size = new int [num];

color[] c = new color [num];

int[] opacity = new int [num];

float r;

String myStringArray [] = {"lol", "haha", ":)"};

void setup (){
  size (800,800);
  
  for (int i=0; i<num; i++){
   c[i] = color (random (255), random (255), random (255)); 
   opacity[i] = int (random (255));
   size [i] = int (random (50,100));
  
  }
  
    r = (random(0,1));
    if (r >0 && r<.33){ 
      println (myStringArray[0]);
    }
      if (r >.33 && r<.66){ 
      println (myStringArray[1]);
    }
      if (r >.66 && r<.99){ 
      println (myStringArray[2]);
    }
     
  
  
}

void draw (){

  //for (int i=0; i<num; i++){
  //  fill (c[i], opacity [i]);
  //  ellipse (xPos[i], yPos[i], size[i], size[i]); 
  //  rect (xPos [i], yPos [i], size [i], size [i]);
  //  }
    
    for (int i=0; i<5; i++){
       fill (c[i], opacity [i]);
       ellipse (xPos[i], yPos[i], size[i], size[i]); 
       rect (xPos [i], yPos [i], size [i], size [i]);
       
    }
    
}


  
 
