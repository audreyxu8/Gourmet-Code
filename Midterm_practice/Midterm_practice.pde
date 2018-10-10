//got the error for cannot convert int to string for line 25 :(

int x, y; 
int size; 
float dist; 
boolean buttonClicked; 

String productResult;
int result;
int num1, num2; 

void setup() {
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 
  background(0);
}

void draw() {
background (0);

  textSize(32); 

 String productResult = num1 + " x " + num2 + " = " + result; 
  result = int (multiply(num1, num2)); 
  
  text(productResult, 0, height*.8);

  if (buttonClicked) {    
    fill(0, 255, 0);
    
  } else {
    fill(255, 0, 0);
  }



  ellipse(x, y, size, size);
}

void mousePressed() {
dist = dist(mouseX, mouseY, x, y); 

  if (dist <= size/4) {
      num1= int (random (100));
      num2= int (random (100));
    buttonClicked = !buttonClicked;
  } 
    
}

int multiply (int a, int b) {
 int product; 
  product = a * b;
  return product;
}