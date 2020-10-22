class BoatParticles {

  float xPos, yPos;
  boolean start = false;

  BoatParticles(int x, int y) {
    xPos= x;
    yPos= y;
  }
  void display() {
    if (start) {
      fill(255);
      ellipse(252, 144, 72, 72);
    }
  }
  void startGenerate() {
    start=true;
  }
}
