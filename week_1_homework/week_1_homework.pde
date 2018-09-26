int facePosition; 
int faceSize; 
int eye;


void setup() {
  size (700,1000);
  background (0);
  
  faceSize = int(height*.5);
  
  
}

void draw (){
  facePosition=int (width*.5);
   println(facePosition);
   
   eye=int (facePosition);

   
  fill(0,255,0) ;
  ellipse (facePosition,facePosition +50,faceSize, faceSize+100); 
  
  fill (200,0,200);
  ellipse(eye,eye-50,200,130);
  
  //pupil
  fill(0);
  if (mouseX <420 && mouseY> 230 && mouseX >280 && mouseY<350 ){
  ellipse(mouseX,mouseY, 50,50);
  }

   
   fill (0);
triangle(350,400,300,500,400,500);

noFill();
strokeWeight(10);
arc (350,550,200,200,0,PIE);

fill(255,0,255);
rect (facePosition-16, facePosition-300,50,100);

   

  

}