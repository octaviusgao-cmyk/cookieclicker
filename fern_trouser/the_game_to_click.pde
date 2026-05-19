void game() {
  background(wood);

  text("Intel: " + score, width/2, 50);
  text("Alerts: " + lives, width/2, 150);
  textSize(70);



  //pause button
  pause2();

  target();


  x1 = x1 + vx;
  y2 = y2 + vy;

  if (x1 < 50 || x1 > width-50) {
    vx = vx * -1;
  }
  if (y2 < 50 || y2 > width-50) {
    vy = vy * -1;
  }
}

void gameClicks() {
  //mode = gameover;

  if (dist(mouseX, mouseY, x1, y2) < d/2) {
    score = score +1;
    success.rewind();
    success.play();
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = pause;
  } else {
    lives = lives - 1;
    alert.rewind();
    alert.play();
    if (lives == 0) {
      mode = gameover;
      //fail.play;
    }
  }
}

void target() {
  fill(rose);
  stroke(0);
  circle(x1, y2, d);
}

void pause2() {
  fill(crimson);
  circle(100, 100, 100);
  fill(rose);
  rect(70, 60, 20, 80);
  rect(110, 60, 20, 80);
}
