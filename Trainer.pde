class Trainer extends Paddle{
  
  //constructor
  Trainer(float _xpos, float _ypos, int _paddleWidth, int _paddleHeight) {
    xpos = _xpos;
    ypos = _ypos;
    paddleWidth = _paddleWidth;
    paddleHeight = _paddleHeight;
  } 
  
  //very complex AI stuff
  void start() {
    
    //return the values of the upper and bottom edges of the paddle
    paddleTop = ball.ypos - 0.5*paddleHeight;
    paddleBottom = ball.ypos + 0.5*paddleHeight;
    
//    if ((ball.xpos > (0.5*width)) || (ball.xpos < 500)) {  
//      float diff = ypos - ball.ypos;
//      
//      //debugging    
//      textSize(12);
//      text("difference: " + int(diff), 100, 100);
//    }
    
    if (ball.xpos > 500) { 
      ypos = ball.ypos; 
    }
  }
}
