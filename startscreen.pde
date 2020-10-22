//start screen is an image created in illustrator.
//it is loaded with the right dimensions 

class startscreen {
  PImage startscreen;

  startscreen() {
    startscreen = loadImage ("Artboard 1.png");
  }

  void display() {
    image(startscreen, 0, 0, 1280, 720);
  }
}
