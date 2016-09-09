class Ball {
  float x, y, size, velX, velY;
  
  Ball() {
    this.x = width/2;
    this.y = height/2;
    this.size = 15;
    velX = 4.5;
    velY = 4.5;
  }
  
  void draw() {
    pushStyle();
    stroke(255);
    strokeWeight(15);
    point(x, y);
    popStyle();
  }
  
  void reverseVelX() {
    velX = -velX;
  }
  
  void reverseVelY() { //<>// //<>//
    velY = -velY;
  }
  
  void move() {
    x += velX;
    y += velY;
  }
  
  void resetPos() {
    x = width/2;
    y = height/2;
  }
  
  void checkPosition() {
    if (x >= width) {
      player.increaseScore();
      resetPos();
    }
    if (x <= 0) {
      enemy.increaseScore();
      resetPos();
    }
    if (y <= 0 || y >= height) {
      reverseVelY();
    }
  }
  
  void collision(Paddle p) {
    if (abs(p.x - x) < 10 && y > p.y - p.h/2  && y < p.y + p.h/2) {
      reverseVelX();
    }
  }
}