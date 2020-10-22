class BoatParticles {

  float xPos, yPos;
  boolean start = false;

  BoatParticles() {
  }
  void display(float x, float y) {
    xPos= x;
    yPos= y;
    if (start) {
      fill(255);
      circle(xPos, yPos, 10);
    }
  }
  void startGenerate() {
    start=true;
  }
}
