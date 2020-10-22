class cpu {
  float x_, y_, rotation;
  PImage img;
  boolean showing;

  cpu (float xpos, float ypos, float rotate) {
    img = loadImage("img/people.png");
    x_ = xpos;
    y_ = ypos;
    rotation = rotate;
    showing = true;
  }

  void display() {
    if (showing) {
      pushMatrix();
      translate(x_, y_);
      rotate(rotation);
      image(img, 0, 0);
      popMatrix();
    }
  }

  void checkRemove() {
    println(dist(player.posX(),player.posY(),x_,y_));
    if ((dist(player.posX(),player.posY(),x_,y_))<80 && showing) {
      showing=false;
      bar.addProgress();
    }
  }
}
