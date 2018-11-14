ArrayList<Star> stars;

void setup () {
  background(0);
  size(1000, 700);
  stars = new ArrayList<Star>();
}

void draw () {


  for (int i=0; i<stars.size(); i++) {
    Star s = stars.get(i);
    s.shoot();
    s.gravity(); 
    s.display(25);

  
}
}


void mousePressed () {
      stars.add(new Star());
    }
