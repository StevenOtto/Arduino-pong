class Ball {
  
  //instance variables
  float ypos;
  float xpos;
  float xspeed;
  float yspeed;
  int radius;
  
  //constructor
  Ball(float _xpos, float _ypos){
    xpos = _xpos;
    ypos = _ypos;
    xspeed = 1.5;
    yspeed = 3;
    radius = 10;
  }
  
  //methods
  void display() {
    stroke(0);
    ellipse(xpos, ypos, radius, radius);
  }
  
  void move(){
    ypos = ypos + yspeed;
    xpos = xpos + xspeed;
    
    //wall collision
    if ( (ypos > (height - 0.5*radius)) || (ypos < 0.5*radius) ){
      yspeed = -yspeed;
    }
    
    //paddle collision
    if (training_mode) {
      if ( ((xpos < 65) && ( (ypos > player1.paddleTop) && (ypos < player1.paddleBottom)  ))
        || ((xpos > 665 ) && ( (ypos > trainer.paddleTop) && (ypos < trainer.paddleBottom)  ))) {
      xspeed = -xspeed;
      this.increaseSpeed(1.15);
      }
    } else {
      if ( ((xpos < 65) && ( (ypos > player1.paddleTop) && (ypos < player1.paddleBottom)  ))
        || ((xpos > 665 ) && ( (ypos > player2.paddleTop) && (ypos < player2.paddleBottom)  ))) {
      xspeed = -xspeed;
      this.increaseSpeed(1.15);
      }
    }

    //score management player 1
    if (xpos > 715 ) {
      xpos = 0.5*width;
      this.respawn();
      scoreP1.increase(1);
    }
    
    //score management player 2
    if (xpos < 10 ) {
      xpos = 0.5*width;
      this.respawn();
      scoreP2.increase(1);
    }
  }
  
  void increaseSpeed(float factor) {
    xspeed = factor * xspeed;
    yspeed = factor * yspeed;
  }
  
  void respawn() {
    xspeed = 1.5;
    yspeed = 3;
  }
  
}
