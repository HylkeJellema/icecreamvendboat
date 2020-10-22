class Player {

  float xPos, yPos;
  int direction;
  PImage boat;
  BoatParticles parti;


  Player() {
    xPos= 600;
    yPos= 600;
    direction = 0;
    boat = loadImage("img/player.png");
    parti = new BoatParticles(); //kan weg
    parti.startGenerate(); // kan weg
  }
  void display() {
    image(boat, xPos, yPos);
  }
  void left() {
    if (direction == 0) {
      direction = 359;
    } else {
      direction--;
    }
  }
  void right() {
  }
}
