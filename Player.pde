class Player {
  
  //instance variables
  float xpos;
  float ypos;
  int paddleWidth;
  int paddleHeight;
  float paddleTop;
  float paddleBottom;

  Player(float _xpos, float _ypos, int _paddleWidth, int _paddleHeight) {
    xpos = _xpos;
    ypos = _ypos;
    paddleWidth = _paddleWidth;
    paddleHeight = _paddleHeight;
  } 
  
  //methods
  void display(){
    stroke(0);
    rect(xpos, (ypos - 0.5*paddleHeight), paddleWidth, paddleHeight);
    
    //return the values of the upper and bottom edges of the paddle
    paddleTop = mouseY - 0.5*paddleHeight;
    paddleBottom = mouseY + 0.5*paddleHeight;
  }
  
  void start() {
    ypos = mouseY;
  }
}
