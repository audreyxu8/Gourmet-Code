int myIntegerArray[] = {1,2,3,4,5};
String myStringArray [] = {"whatever", "yolo", "lol"};

//empty array to put slots into 
int newArray [] = new int [4]; // {1,2,3,4}

void setup(){
  println (myIntegerArray[4]);
  println (myStringArray [1]);
  
  for (int i=0; i<3; i++){ 
    println (myStringArray [i]);
  }
  
  newArray [0] = 3; 
  newArray [3] = 8;
  

  for (int i=0; i<4; i++){
    println (newArray [i]);
  }
  
} 
