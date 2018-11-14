class Plant{
  //data 
  float plantHeight;
  float numLeaves;
  color plantColor; 
  float xPos;
  
  
 //constructor - declared up here u can use throughout thhe whole sketch 
 //in thhe brackets are what u r chhanging. _xPos means its temporary, just a placeholder
  Plant(int _xPos){
    xPos = _xPos;
    plantHeight = _plantHeight;
  }
  
  void display(int _plantHeight, int _numLeaves, color _plantColor){
    fill(_plantColor);
    numLeaves = _numLeaves;
    for (int i = 0; i<_numLeaves; i++){
      //30*i means theyre gonna bbe spaced out , 50 +i*5 = theyre gonna get smaller 
      ellipse (xPos, plantHeight +30*i, 50 +i*5,20);
    }
    //stem
    rect (xPos, plantHeight, 10, 500);
  }
  
  void grow(){
    plantHeight-=1;
  }
  
  
}
