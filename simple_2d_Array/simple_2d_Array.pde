
// want to make sure all the arrays hhave the same number of values 
int num [] []= {{1, 2, 4, 5}, {5, 6, 7, 8}, {6, 7, 8, 9}};

void setup (){
  println (num [2][0]);
  
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 4; j++){
      println (num [i][j] + " at" + i + " at" + j);
    }
  }
}
