// Assign objects to classes
Player player1;
Player player2;

Ball ball;

Score scoreP1;
Score scoreP2;

// Initialize the canvas and objects
void setup() {
  size(725, 450);
  
  ball = new Ball(width/2, height/2, 1.5, 3, 10);
  
  player1 = new Player(50, 50, 10, 60);
  player2 = new Player(670, 50, 10, 60);
  
  scoreP1 = new Score(1);
  scoreP2 = new Score(2);
  
}

// Draw 
void draw(){
  background(0); 
  
  player1.start();
  player1.display();
  
  player2.start();
  player2.display();
  
  scoreP1.display();
  scoreP2.display();
  
  ball.display();
  ball.move();
  
  
  //seperator blocks in the middle
  for (int i = 7; i < 725; i = i+25){
    fill(255);
    rect(0.5*width, i, 10, 10);
  }
}
