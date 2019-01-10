int x, y, w, h, speedX,speedY;
int paddleX, paddleY, paddleW, paddleH, paddleS;
boolean up, down;

void setup(){
  size (700,700);
  
  x = width/2;
  y = height/2;
  w = 50;
  h = 50;
  speedX = 3;
  speedY = 4;
  
 rectMode(CENTER);
 paddleX=40;
 paddleY=height/2;
 paddleW = 30;
 paddleH = 100;
 paddleS = 5;
}


void draw() {
  
background(0);

drawBall();
moveBall();  
ballBounce();

drawPaddle();
movePaddle();
restrictPaddle();
contactPaddle();
}


void keyPressed() {
  if(key == 'w' || key == 'W') {
    up = true;
  }
  if(key == 's' || key == 'S') {
    down = true;
  }
}

void keyReleased(){
  if(key == 'w' || key == 'W') {
    up = false;
  }
  if(key == 's' || key == 'S') {
    down = false;
  }
}
