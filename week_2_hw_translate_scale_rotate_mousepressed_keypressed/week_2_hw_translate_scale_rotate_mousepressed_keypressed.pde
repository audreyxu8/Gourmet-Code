int facePosition; 
int faceSize; 
int eye;
int size;
int brushSize; 

void setup() {
  size (700,1000);
  background (0);
  brushSize = 20;
  
  faceSize = int(height*.5);
  size = 30;
  
  
}

void draw (){
  facePosition=int (width*.5);
   println(facePosition);
   
   eye=int (facePosition);

   fill(0, 0, 255); 
  pushMatrix(); 
  translate(100, 100); 
  fill(0,255,0) ;
  ellipse (facePosition,facePosition +50,faceSize, faceSize+100);
   popMatrix(); 
   
  
  fill (200,0,200);
  ellipse(eye,eye-50,200,130);
  
 
  //pupil
  fill(0);
  if (mouseX <420 && mouseY> 230 && mouseX >280 && mouseY<350 ){
  ellipse(mouseX,mouseY, 50,50);
  }
  
   if(mousePressed){
    fill(0, 255, 100); 
    noStroke(); 
    ellipse(mouseX, mouseY, brushSize, brushSize); 
  }
 

   
   fill (0);
triangle(350,400,300,500,400,500);


pushMatrix();
fill(255,0,255);
scale (1.8);
rect (facePosition-130, facePosition-330,50,100);
popMatrix();




  pushMatrix(); 
    fill(255, 0, 0); 
    translate (350,650);
  rotate(radians(180)); 
  
  noFill();
strokeWeight(10);
arc (0,0,200,200,0,PIE);
 popMatrix(); 
  
  //fill(0,0,2);
  //pushMatrix(); 
  //int r=180;
  //translate (0+size, 0+size/2);
  //rotate (radians(r));
  //popMatrix();
  
    
String s = "DRAW HAIR.";
fill(255);
text(s, 10, 10, 70, 80);

}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
      brushSize += 20; 
    }else if(keyCode == DOWN && brushSize >10){
      brushSize -= 20; 
      }
    }
  }
  