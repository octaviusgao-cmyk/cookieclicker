void gameover() {
  background(pearl);
  fill(auburn);
  text("Captured", 450, 400);
  fail.play();
  theme.pause();
}

void gameoverClicks() {
  mode = intro;
}
