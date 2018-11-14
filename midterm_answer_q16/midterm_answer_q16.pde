//float[] pos = { 100, 200, 300, 400, 500 };

//
float pos [] = new float [100];


void setup() {
  size(600, 600);
  //new for loop 
  for (int i=0; i<pos.length; i++){
    pos [i] = i*(height/pos.length);
  }
}

void draw() {
  background(240);
  
  // nice to have pos.length it would update every time if u wanna change hhow many circles 
  for (int i = 0; i < pos.length; i++) {
    ellipse(width/2, pos[i], 50, 50);
  }
}
