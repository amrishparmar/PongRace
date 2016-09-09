class Background {
  void drawArena() {
    background(0);
    pushStyle();
    strokeWeight(3);
    stroke(255);
    line(width/2, 0, width/2, height);
    strokeWeight(6);
    line(0, 0, width, 0);
    line(0, 0, 0, height);
    line(width-1, height-1, width, 0);
    line(width-1, height-1, 0, height);
    popStyle();
  }
  
  void drawScores() {
    pushStyle();
    textSize(height/12);
    textAlign(CENTER);
    text(player.score, width/4, height/7);
    text(enemy.score, 3 * width/4, height/7);
    popStyle();
  }
}