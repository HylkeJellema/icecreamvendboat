//In this class we're drawing a delivery bar. When ice cream gets delivered, people fed bar increases.


class Bar {

  float barLength;
  int progress;
  int score;



  Bar() {
    barLength = 0;
    progress = 0;
  }


  void display() {

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

  void addProgress() {
    progress = progress + 26;
  }
  
  void result() {
    score = progress / 26;
  }
  
  
}
