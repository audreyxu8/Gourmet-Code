ArrayList <Sphere> spheres = new ArrayList <Sphere> ();
PImage pix; 
PImage pix2; 
PImage pix3; 
PImage pix4; 
PImage pix5; 
PImage pix6; 
float rotx = PI/4; 
float roty = PI/4; 


void setup() {
  background(0);
  size(1000, 700, P3D); 
  spheres = new ArrayList<Sphere>();
  //balls = loadImage("balls.png");
  pix = loadImage("audrey.jpg"); 
  pix2 = loadImage("butterfly.png"); 
  pix3 = loadImage("cat.png"); 
  pix4 = loadImage("gc.jpeg"); 
  pix5 = loadImage("shadow.jpeg"); 
  pix6 = loadImage("flesh.jpeg"); 
  textureMode(NORMAL); 

}

void draw() {

  if (spheres.size() <=10) {
    if (frameCount % 30 == 0) {
      spheres.add(new Sphere());
    }
  }

  for (int i = 0; i<spheres.size(); i++) {
    Sphere s = spheres.get(i); 
    pushMatrix();
    translate(100*i, 0, 0);
    s.display(); 
    popMatrix();
    s.move();
    if (s.pos.y < 0) {
      spheres.remove(i);
    }

    float d = dist(mouseX, mouseY, 
      s.pos.x, s.pos.y);

    if (d<s.size && mousePressed) {
      spheres.remove(i);
    }
  }


  translate(250, 200, -100); 
  rotateX(rotx); 
  rotateY(roty); 
  scale(180); 
  noStroke();
  TexturedCube(pix, pix2, pix3, pix4, pix5, pix6);

}


void TexturedCube(PImage pix, PImage pix2, PImage pix3, PImage pix4, PImage pix5, PImage pix6) { 
  beginShape(QUADS); 
  texture(pix); 

  // +Z "front" face 
  vertex(-1, -1, 1, 0, 0); 
  vertex( 1, -1, 1, 1, 0); 
  vertex( 1, 1, 1, 1, 1); 
  vertex(-1, 1, 1, 0, 1); 
  endShape(); 
  beginShape(QUADS); 
  texture(pix2); 
  // -Z "back" face 
  vertex( 1, -1, -1, 0, 0); 
  vertex(-1, -1, -1, 1, 0); 
  vertex(-1, 1, -1, 1, 1); 
  vertex( 1, 1, -1, 0, 1); 
  endShape(); 
  beginShape(QUADS); 
  texture(pix3); 
  // +Y "bottom" face 
  vertex(-1, 1, 1, 0, 0); 
  vertex( 1, 1, 1, 1, 0); 
  vertex( 1, 1, -1, 1, 1); 
  vertex(-1, 1, -1, 0, 1); 
  endShape(); 
  beginShape(QUADS); 
  texture(pix4); 
  // -Y "top" face 
  vertex(-1, -1, -1, 0, 0); 
  vertex( 1, -1, -1, 1, 0); 
  vertex( 1, -1, 1, 1, 1); 
  vertex(-1, -1, 1, 0, 1); 
  endShape(); 
  beginShape(QUADS); 
  texture(pix5); 
  // +X "right" face 
  vertex( 1, -1, 1, 0, 0); 
  vertex( 1, -1, -1, 1, 0); 
  vertex( 1, 1, -1, 1, 1); 
  vertex( 1, 1, 1, 0, 1); 
  endShape(); 
  beginShape(QUADS); 
  texture(pix6); 
  // -X "left" face 
  vertex(-1, -1, -1, 0, 0); 
  vertex(-1, -1, 1, 1, 0); 
  vertex(-1, 1, 1, 1, 1); 
  vertex(-1, 1, -1, 0, 1); 

  endShape();
} 

void mouseDragged() { 
  float rate = 0.01; 
  rotx += (pmouseY-mouseY) * rate; 
  roty += (mouseX-pmouseX) * rate;
} 
