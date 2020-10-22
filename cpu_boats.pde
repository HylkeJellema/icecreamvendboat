class cpu {

  float x_, y_;
  PImage img;

  cpu (float xpos, float ypos) {
    img = loadImage("img/boat1.png");
    x_ = xpos;
    y_ = ypos;
  }

  void display() {
    image(img, x_, y_);
  }
}
