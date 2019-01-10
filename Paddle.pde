void drawPaddle(){
  fill(255);
  rect(paddleX,paddleY,paddleW,paddleH);
}

void movePaddle() {
  if(up) {
paddleY = paddleY - paddleS;
  }
  if (down) {
    paddleY = paddleY + paddleS;
  }
}


//Paddle goes off screen, must set boundries so this doesnt happen

void restrictPaddle(){
  if(paddleY - paddleH/2 < 0 ) { //If the value of Y - H/2 (350) = less than 0 it will stop at 5, (Y + S)
    paddleY = paddleY + paddleS;
  }
  if(paddleY + paddleH/2 > height ) {
    paddleY = paddleY - paddleS;
  }
}

void contactPaddle(){
 if(x - w/2 < paddleX + paddleW/2) {
  speedX = -speedX; 
 }
}
