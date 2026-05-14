void intro() {
  theme.setGain(-20);
  theme.play();
  
  
  background(255, 0, 0);


  fill(255);
  stroke(0);
  tactile(x, y, w, h);
  rect(x, y, w, h);

  fill(0);
  textSize(75);
  text("Start", 450, 500);

  fill(255);
  textSize(80);
  text("Operation Snake Eater", 450, 200);
}

void introClicks() {
  if (mouseX > 350 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
    mode = game;
    lives = 3;
    score = 0;
    x1 = height/2;
    y2 = width/2;
    
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(255);
  } else {
    stroke(0);
    strokeWeight(3);
  }
}
