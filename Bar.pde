//In this class we're drawing a delivery bar. When ice cream gets delivered, people fed bar increases.


class Bar {

  float barLength;
  float progress;

  boolean deliveryDone;
  boolean [] keys = new boolean[1000000];



  Bar() {
    barLength = 0;
    progress = 160;

    if (deliveryDone == true) {
      progress = progress + 20;
    }
  }


  void display() {
    delivery();
    stroke(0);
    strokeWeight(1);

    //iconbox
    fill(155, 255, 255);
    rect(10, 10, 40, 40);

    //deliveryBox
    noFill();
    rect(50, 10, 261, 40);

    //icecreamicon
    pushMatrix();
    translate(30, 30);
    fill(255, 155, 50);
    triangle(0, 15, -5, 0, 5, 0);
    fill(255, 255, 200);
    ellipse(0, -3, 13, 13);
    popMatrix();

    //progress
    pushMatrix();
    translate(50, 10);
    noStroke();
    fill(0, 255, 0);
    rect(1, 1, progress, 39);
    popMatrix();
  }

  void delivery() {
    if (progress <= 259) {
      if (keys[' ']) {
        deliveryDone = true;
      }
    }
  }

  void barPressed() {
    keys[key] = true;
  }

  void barReleased() {
    keys[key] = false;
  }
}
