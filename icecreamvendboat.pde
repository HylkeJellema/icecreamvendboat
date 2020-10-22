import processing.video.*;
Movie waterVid;
Player player;
startscreen startscreen;
endscreen endscreen;
Bar bar;

timer countDownTimer;
int timeLeft;
float stage;
float boatcount = 10;
People[] boat = new People[10]; 


void setup() {
  size(1280, 720);
  waterVid = new Movie(this, "vid/water.mp4");
  player = new Player();
  startscreen = new startscreen();
  endscreen = new endscreen();
  bar = new Bar();

  waterVid.loop();

  stage = 1;
  countDownTimer = new timer(1000); //count in 1000 miliseconds
  timeLeft = 60;    //timer in 60 sec

  for (int i=0; i<boatcount; i++) {
    boat[i] = new People(random (100, width-100), random (100, height-100), random (360));
  }
}

void draw() {
  //First stage = start screens
  if (stage == 1) {
    startscreen.display();
    if (keyPressed) {
      stage = stage +1;
    }
  } 
  //Second stage = game play
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
      if (bar.progress == 260){
        stage = stage +1;
      }
    }

    //tijd is om 
    if (stage==3) {
      endscreen.display();
      String t = "Your score: " + bar.progress;
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text(t, 600, 50);
      
    }
  }
}


void movieEvent(Movie m) {
  m.read();
}


void keyPressed() {

  if (key == 'a') {
    player.left();
  }  
  if (key == 'd') {
    player.right();
  }
  if (key == ' ') {
    for (int i=0; i<boatcount; i++) { 
      boat[i].checkRemove();
    }
  }
}
