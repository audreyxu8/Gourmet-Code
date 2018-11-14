int size = 60; 
int num; 
boolean [][] clicked; 
color [][] c; 

void setup(){
  size (600, 600); 
  background(0); 
  noStroke(); 
  smooth(); 
  
  num = width/size; 
  
  clicked = new boolean[num][num]; 
  c = new color[num][num];
  
  for(int i = 0; i< num; i++){
    for(int j = 0; j<num; j ++){
      clicked[i][j] = false; 
      c[i][j] = color(255); 
    }
  } 
}

void draw(){
  background (0);
  
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
    
      //if(clicked[i][j] == false){
      //  if(mousePressed==true){
          
      //     if(dist(mouseX, mouseY, i*size + size/2, j*size+ size/2)<size/2){
      //       fill(c[i][j]); 
      //     }
      //  }
      //}
         ellipse(i*size+size/2, j*size+size/2, size, size);
    }
  }
}

void mousePressed(){
    for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
  float d = dist(mouseX, mouseY, i*size + size/2, j*size+ size/2);
  
  if (d<size/2){
    clicked [i][j]=true;
    fill(c[i][j]);
    }
    }
}
}
