class Player {

  float xPos, yPos;
  float direction;
  PImage boat;
  BoatParticles parti;
  int speed;


  Player() {
    xPos= 640;
    yPos= 600;
    direction = 0;
    speed = 1;
    boat = loadImage("img/player.png");
    parti = new BoatParticles(); //kan weg
    parti.startGenerate(); // kan weg
  }
  void display() {
    pushMatrix();
    imageMode(CENTER);
    translate(xPos, yPos);
    rotate(radians(direction));
    image(boat, 0, 0);
    imageMode(CORNER);
    popMatrix();
    if (direction < 90 && direction >0) {
      xPos = xPos + (direction/90);
      yPos = yPos  - (90/direction);
    }
  }
  void left() {
    if (direction == 0) {
      direction = 360-speed;
    } else {
      direction= direction - 1*speed;
    }
  }
  void right() {
    if (direction == 359) {
      direction = speed;
    } else {
      direction= direction + 1*speed;
    }
  }
}
