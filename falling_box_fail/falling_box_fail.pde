//num is the number of boxes in a row and collumn 
int num = 10;
int size =50;
boolean clicked[][] = new boolean [num][num];
color gridC [][]= new color[num][num];

int speed [][]= new int [num][num];

void setup (){
  background (0);
  size (500,500);
  size = width/num;
  
  for (int i = 0; i<num; i++){
    for (int j= 0; j<num; j++){
  gridC [i][j] = color(random (100,255), random(150), random (255));
  speed [i][j] = 0;
    }
  }
  

}

void draw (){
  //minus 1 because our num is 10 but index is 9 because the naming convention 0=1
  for  (int i= num -1; i>=0; i--){
    for (int j = num - 1; j>num; j--){
      speed [i] = speed[j];
      fill (gridC [i][j]);
      if (clicked [i][j] ==true){
        speed [i][j] += 1;
      rect (i*size, j*size + speed [i][j], size, size);
        gridC [i][j] = color(random (100,255), random(150), random (255));
      }
    }
  }

}

void mousePressed (){
    for  (int i=0; i<num; i++){
    for (int j = 0; j<num; j++){
      speed [i] = speed[j];
      fill (gridC [i] [j]);
      if (mouseX>i*size && mouseX <= (i+1)*size 
      && mouseY > j*size && mouseY <= (j+1) *size){
        println ("i is: " + i + "j is : " + j);
      rect (i*size, j*size, size, size);
        gridC [i][j] = color(random (100,255), random(150), random (255));
        clicked[i][j]=true;
      }
    }
  }
}
  
