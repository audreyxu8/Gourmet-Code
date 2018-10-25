
// i understand the help that i need to obtain for my future of coding !!!! I will be better than thhis :(

int n1, n2, n3; 
int sum_global; 
String additionSentence; 

float x1Pos, y1Pos, x2Pos, y2Pos;
float x1Speed, y1Speed, x2Speed, y2Speed;
int size = 80; 
int returnString;
int radius;
float r, g, b;

boolean bounceBack;



void setup(){
  background (0);
  size(700, 500); 

  //equation 
  n1 = int(random(100)); 
  n2 = int(random(100)); 
  n3 = int(random(100)); 
  
  // ball and rect
  
  x1Pos = width/4;
  y1Pos = height/4;
  x2Pos = width/2; 
  y2Pos = height/2;
  
  x1Speed = random (10);
  y1Speed = random (10);
  x2Speed = random (10);
  y2Speed = random (10);
  
  radius = 100;
}


void returnString(String string1, String string2){
  println(string1 + "\n" + string2); 
  rect(width/2, height/2, 50, 50); 
} 

void draw(){

  sum_global = addNumbers(n1, n2,n3);
  
  additionSentence = str(n1) + " + " + str(n2) + " = " + str(sum_global); 
  stroke (0,255,0);
  text(additionSentence, width/2, height/2); 


  
  x1Pos = x1Pos + x1Speed;
  y1Pos = y1Pos + y1Speed;
  x2Pos = x2Pos + x2Speed; 
  y2Pos = y2Pos + y2Speed; 
  
  fill (0,255,0); 
  ellipse (x1Pos, y1Pos, size, size); 
  
  fill (0,0,255); 
  rect (x2Pos, y2Pos, size, size);  
    
    returnString ("i need more practice", "I love debugging my code");
  
 
    int ellipseColor; 
   int e; 
   ellipseColor = int (map (calcDist (x1Pos,y1Pos),0, width/2,0,255));
  e = int(map(calcDist(x1Pos, y1Pos), 0, width/2, 100, 255)); 
  fill(ellipseColor, 0, e); 
  
  
  ellipse(x1Pos, y1Pos, size, size); 
  rect(x2Pos, y2Pos, size, size); 
  
    if( x1Pos>= (width- radius/2) || x1Pos<= radius/2){
    x1Speed = x1Speed *-1; 
  }
  if( y1Pos >= (height-radius/2) || y1Pos <= radius/2){
    y1Speed = y1Speed * -1; 
  }
  
  if( x1Pos== (width- radius/2) || x1Pos== radius/2 ){
    r = random(0,255); 
    g = random(0, 255); 
    b = random(0, 255); 
  }
  
  if( y1Pos>= (height- radius/2) || y1Pos<= radius/2 ){
     r = random(0,255); 
     g = random(0, 255); 
     b = random(0, 255); 
  }
  
  


  
}

    
 
  //equation
  int addNumbers(int num1, int num2, int num3){
  int sumLocal = num1 + num2; 
  return sumLocal; 
  }
  
  float calcDist(float x1Pos,float y1Pos){
  float dist = dist(mouseX, mouseY, x1Pos, y1Pos); 
  return dist; 
}
  
 


//
//boolean  (float x1Pos, float y1Pos) {
//  if (mousePressed == true) {
//    return true;
//  }
//  return false;
//}

  
