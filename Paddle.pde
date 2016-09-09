class Paddle {
  float x, y, w, h;
  int score;
  float shipUp, shipDown, maxSpeed;
  
  Paddle(float x) {
    this.x = x;
    this.y = height/2;
    this.w = 15;
    this.h = height/8;
    this.maxSpeed = 10;
  }
  
  void draw() {
    pushStyle();
    stroke(255);
    strokeWeight(w);
    line(x, y - h/2, x, y + h/2);
    popStyle();
  }
  
  void increaseScore() {
    score += 1;
  }
  
  void controlMovement() {
    y += (shipDown - shipUp) * maxSpeed;
    if (y - h/2 < 0) {
      y = h/2;
    }
    else if (y + h/2 > height) {
      y = height - h/2;
    }
  }
}