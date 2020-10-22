import processing.video.*;
Movie waterVid;
Player player;

void setup() {
  size(1280, 720);
  waterVid = new Movie(this, "vid/water.mp4");
  player = new Player();
  waterVid.loop();
}

void draw() {
  image(waterVid, 0, 0, 1280, 720);
  player.display();
}

void movieEvent(Movie m) {
  m.read();
}
