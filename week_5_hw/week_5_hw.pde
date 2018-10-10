//not quite the same as the pattern in the reading

void setup () {
  size (600, 600);
  background (255);
}

void draw () {


  //original grid
  for (int j = -50; j< 600; j+= 100) {
    for (int i = -50; i< 600; i+= 100) {
      stroke(255);
      rect (i, j, 100, 100);
    }
  }

  //diamonds


  for (int a = -50; a< 600; a+= 50) {
    for (int b = -50; b< 600; b+= 50) {
      pushMatrix();
      translate (a,b);
      rotate(PI/4.0);
      float d = dist (mouseX, mouseY, a, b);
      int c = int (map (d ,0,height, 0, 255));
      fill (c,100,c);
      stroke(0,0,255);
      //rectMode (CENTER);
      rect (a, b, 70, 70);
      popMatrix();
      
    }
  }
}