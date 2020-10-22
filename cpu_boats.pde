class cpu {
  float x_, y_, rotation;
  PImage img;

  cpu (float xpos, float ypos, float rotate) {
    img = loadImage("img/boat1.png");
    x_ = xpos;
    y_ = ypos;
    rotation = rotate;
  }

  void display() {
    pushMatrix();
    translate(x_, y_);
    rotate(rotation);
    image(img, 0, 0);
    popMatrix();
    }
}
