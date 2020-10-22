class Player {

  float xPos, yPos;
  float direction;
  PImage boat;

  int speed;


  Player() {
    xPos= 640;
    yPos= 600;
    direction = 0;
    speed = 1;
    boat = loadImage("img/player.png");
  }
  void display() {
    pushMatrix();
    imageMode(CENTER);
    translate(xPos, yPos);
    rotate(radians(direction));
    image(boat, 0, 0);
    imageMode(CORNER);
    popMatrix();
    if (direction <= 90 && direction >= 0) {
      xPos = xPos + (direction/90);
      yPos = yPos  - (1 - direction/90);
    }
    if (direction > 90 && direction <=180) {
      xPos = xPos + (1-(direction-90)/90);
      yPos = yPos  + ((direction-90)/90);
    }
    if (direction < 270 && direction >180) {
      xPos = xPos - ((direction-180)/90);
      yPos = yPos  + 1 - ((direction-180)/90);
    }
    if (direction <=360 && direction >=270) {
      xPos = xPos - (1-(direction-270)/90);
      yPos = yPos  - ((direction-270)/90);
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
  float posX() {
    return xPos;
  }  
  float posY() {
    return yPos;
  }
}
