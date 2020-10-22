class Player {

  float xPos, yPos, direction;
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
  void display(){
  image(boat,xPos,yPos);
  
  }
  void move(){
  }
}
