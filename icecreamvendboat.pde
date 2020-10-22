import processing.video.*;
Movie waterVid;
Player player;
startscreen startscreen1;
Bar bar;

timer countDownTimer;
int timeLeft;

float stage;
float boatcount = 10;
cpu[] boat = new cpu[10]; 


void setup() {
  size(1280, 720);
  waterVid = new Movie(this, "vid/water.mp4");
  player = new Player();
  startscreen1 = new startscreen();

  bar = new Bar();

  waterVid.loop();

  stage = 1;
  countDownTimer = new timer(1000); //count in 1000 miliseconds
  timeLeft = 60;

  for (int i=0; i<boatcount; i++) {
    boat[i] = new cpu(random (0, width), random (0, height));
  }
}

void draw() {
  //alles voor start scherm
  if (stage == 1) {
    startscreen1.display();
    if (keyPressed) {
      stage = stage +1;
    }
  } 
  //alles voor game
  if (stage==2) {
    image(waterVid, 0, 0, 1280, 720);
    player.display();
    for (int i=0; i<boatcount; i++) { 
      boat[i].display();
    } 
    bar.display();
    //timer

    String s = "Time left: " + timeLeft;
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text(s, 600, 50);
    if (countDownTimer.complete() == true) {
      if (timeLeft >1) {
        timeLeft--;
        countDownTimer.start();
      } else {
        stage = stage +1;
      }
    }

    //tijd is om 
    if (stage==3) {
      background(255);
      String t = "Time is up. Your score is: ";
      textAlign(LEFT);
      textSize(50);
      fill(0);
      text(t, 600, 350);
    }
    
  }
}


void movieEvent(Movie m) {
  m.read();
}

void keyPressed() {
  bar.barPressed();

  if (key == 'a') {
    player.left();
  }  
  if (key == 'd') {
    player.right();
  }
}

void keyReleased() {
  bar.barReleased();
}
