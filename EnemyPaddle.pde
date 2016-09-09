class EnemyPaddle extends Paddle {
  EnemyPaddle(float x) {
    super(x);
  }
  
  void trackBall() {
    if (y > ball.y) {
      shipUp = 0.25;
      shipDown = 0;
    }
    else if (y < ball.y) {
      shipUp = 0;
      shipDown = 0.25;
    }
  }
}