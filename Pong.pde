Background bg;
PlayerPaddle player;
EnemyPaddle enemy;
Ball ball;

void setup() {
  size(720, 480);
  bg = new Background();
  player = new PlayerPaddle(25);
  enemy = new EnemyPaddle(width - 25);
  ball = new Ball();
}

void draw() {
  bg.drawArena();
  bg.drawScores();
  player.draw();
  enemy.draw();
  ball.draw();
  
  player.controlMovement();
  enemy.controlMovement();
  enemy.trackBall();
  ball.move();
  ball.checkPosition();
  ball.collision(player);
  ball.collision(enemy);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      player.shipUp = 1;
    }
    if (keyCode == DOWN) {
      player.shipDown = 1;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      player.shipUp = 0;
    }
    if (keyCode == DOWN) {
      player.shipDown = 0;
    }
  }
}