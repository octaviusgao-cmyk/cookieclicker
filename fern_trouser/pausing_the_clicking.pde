void pause() {
  theme.pause();
  text("PAUSE", 450, 450);
  fill(rose);
  tactile(350, 500, 200, 100);
  rect(350, 500, 200, 100);
  fill(pearl);
  text("ABORT", 450, 550);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = game;
    theme.play();
  }

  if (mouseX > 350 && mouseX < 550 && mouseY > 500 && mouseY < 600) {
    mode = intro;
  }
}
