import processing.video.*;
Movie waterVid;

void setup() {
  size(1280, 720);
  waterVid = new Movie(this, "vid/water.mp4");
  waterVid.loop();
}

void draw() {
  image(waterVid, 0, 0, 1280, 720);
}

void movieEvent(Movie m) {
  m.read();
}
