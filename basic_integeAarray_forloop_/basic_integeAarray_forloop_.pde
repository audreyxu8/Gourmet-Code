//new array instead of typing all the integers from 0-100
int myIntegerArray [] = new int [100];

void setup (){
  for (int i=0; i<100; i++){
    myIntegerArray [i] = i*3; 
    println (myIntegerArray [i]);
  }
}