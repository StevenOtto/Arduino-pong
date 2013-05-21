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
    
    textSize(12);
    if(training_mode){
      text("Training Mode", (0.7*width), (0.95*height));
    }
  }
  
  void increase(int _value){
    value = value + _value;
  } 
}
