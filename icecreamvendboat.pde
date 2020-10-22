import processing.video.*;
Movie waterVid;
Player player;
startscreen startscreen1;
Bar bar;

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
