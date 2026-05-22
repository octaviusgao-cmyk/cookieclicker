void gameover() {
  background(pearl);
  fill(auburn);
  text("Captured", 450, 400);
  text("Most Intel: " + highScore, 450, 490);
  fail.play();
  theme.pause();

  
  tactile(300, 700, 300, 100);
  rect(300, 700, 300, 100);
  textSize(50);
  fill(pearl);
  text("Back to Base", 450, 750);

  if (score > highScore) {
    highScore = score;
  }
}

void gameoverClicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 700 && mouseY < 800) {
    mode = intro;
  }
}
