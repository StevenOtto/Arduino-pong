class Player extends Paddle{
  
  Player(float _xpos, float _ypos, int _paddleWidth, int _paddleHeight) {
    xpos = _xpos;
    ypos = _ypos;
    paddleWidth = _paddleWidth;
    paddleHeight = _paddleHeight;
  } 
  
  void start() {
    
    //return the values of the upper and bottom edges of the paddle
    paddleTop = mouseY - 0.5*paddleHeight;
    paddleBottom = mouseY + 0.5*paddleHeight;
    
    ypos = mouseY;
  }
}
