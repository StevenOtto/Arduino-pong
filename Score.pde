class Score {
  
  //instance variables
  int player;
  int value;
  
  //constructor
  Score(int _player){
    player = _player;
    value = 0;
  }
  
  //methods
  void display(){
    textSize(32);
    
    if (player == 1) {
      text(value, (0.5*width - 100), 50);
    }
    
    if (player == 2) {
      text(value, (0.5*width + 100), 50);
    }
  }
  
  void increase(int _value){
    value = value + _value;
  } 
}
