import processing.video.*;
Movie waterVid;
Player player;
startscreen startscreen1;
float stage;
float boatcount = 10;
Boatscpu[] boat = new Boatscpu[10];

void setup() {
  size(1280, 720);
  waterVid = new Movie(this, "vid/water.mp4");
  player = new Player();
  waterVid.loop();
  startscreen1 = new startscreen();
  stage = 1;
  if (int i=0; i<boatcount; i++) {
    boat[i] = new Boatscpu();
  }
}

void draw() {
  if (stage == 1) {
    startscreen1.display();
    if (keyPressed) {
      stage = stage +1;
    }
  } 
  if (stage==2) {
    image(waterVid, 0, 0, 1280, 720);
    player.display();
  }
}

void movieEvent(Movie m) {
  m.read();
}
