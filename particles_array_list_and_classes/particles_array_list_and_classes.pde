ArrayList<Particle> particles;

void setup (){
    background(0);
  size(800,800);
  particles = new ArrayList<Particle>();
 
}

void draw (){

  
  for (int i=0; i<particles.size(); i++){
    //p is particle instances 
    Particle p = particles.get(i);
    p.fall();
    p.gravity(); 
    p.display(25);
    
    //bounce off the bottom
    if (p.position.y >= (height-p.size/2)){
      p.bounce();
    }
    
    //bounce off the sides
    if (p.position.x>=width-p.size/2 || p.position.x<=p.size/2){
      p.sideBounce();
  }
  
//remove particle when it reaches the top
  if (p.position.y < 0){
    particles.remove(i);
  }
  
  }
  
  println(particles.size());
}

void mousePressed (){
  //everytime u mousePress it create an instance of the class particle 
  //and push it into the array list. 
  particles.add(new Particle());
}
