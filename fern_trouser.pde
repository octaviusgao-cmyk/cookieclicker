//mode variables
int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;

//target variables
float x1, y2, d;
int x, y, w, h;
float vx, vy;
//colors

void setup() {
  size(900, 900);
  mode = intro;
  textAlign(CENTER, CENTER);

  x1 = height/2;
  y2 = width/2;
  d = 100;
  
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
  } else {
    println("Error; Mode = " + mode);
  }
}
