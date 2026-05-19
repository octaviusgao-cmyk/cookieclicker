void pause() {
  theme.pause();
  text("PAUSE", 450, 450);
  
}

void pauseClicks()  {
if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = game;
    theme.play();
  }
}
