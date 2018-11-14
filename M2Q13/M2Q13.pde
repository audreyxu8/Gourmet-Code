//fix the sketch so that it correctly uses the myAddition function to print 
//the myAddition return of anotherNum declared in the setup()

 int num = 6; 
 int anotherNum = 15; 

void setup() {
  println(myAddition(anotherNum));
}

int myAddition(int num) {
  return 10 + num; 
}
