class Player {

  float xPos, yPos, velocity;
  PImage boat;
  

  Player() {
    xPos= 600;
    yPos= 600;
    boat = loadImage("img/player.png");
  }
  void display(){
  image(boat,xPos,yPos);
  }
  void move(){
  }
}
