class Paddle {
  
  //instance variables
  float xpos;
  float ypos;
  int paddleWidth;
  int paddleHeight;
  float paddleTop;
  float paddleBottom;
  
  //methods
  void display(){
    stroke(0);
    rect(xpos, (ypos - 0.5*paddleHeight), paddleWidth, paddleHeight);
  }
}
