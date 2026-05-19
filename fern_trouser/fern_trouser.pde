//SNAKE EATER

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode variables
int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
final int options = 5;

//target variables
float x1, y2, d;
int x, y, w, h;
float vx, vy;
int score, lives;
//colors
color wood = #947F6E;
color taupe = #534C46;
color pearl = #303030;
color rose = #46050D;
color crimson = #660510;
color auburn = #A12D2D;

// sound
Minim minim;
AudioPlayer fail, success, theme, alert;

void setup() {
  size(900, 900);
  mode = intro;
  textAlign(CENTER, CENTER);

  x1 = height/2;
  y2 = width/2;
  d = 100;

  score = 0;
  lives = 3;

  //minim 
  minim = new Minim(this);
  theme = minim.loadFile("invisible.mp3");
  fail = minim.loadFile("snaked.mp3");
  alert = minim.loadFile("alert.mp3");
  success = minim.loadFile("tasty.mp3");

  mode = intro;

  vx = random(-5, 5);
  vy = random(-5, 5);
  x = 350;
  y = 450;
  w = 200;
  h = 100;
}

void draw() {

  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == options) {
    options();
  } else {
    println("Error; Mode = " + mode);
  }
}
