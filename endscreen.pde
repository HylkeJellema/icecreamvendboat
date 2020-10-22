class endscreen {
  PImage endscreen;

  endscreen() {
    endscreen = loadImage ("Artboard 2.png");
  }

  void display() {
    image(endscreen, 0, 0, 1280, 720);
  }
}
