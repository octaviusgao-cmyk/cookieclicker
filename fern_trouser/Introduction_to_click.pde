void intro() {
  theme.setGain(-20);
  theme.play();
  
  
  background(auburn);


  fill(taupe);
  stroke(0);
  tactile(x, y, w, h);
  rect(x, y, w, h);
  
  fill(taupe);
  stroke(0);
  tactile(x, y+200, w, h);
  rect(x, y + 200, w, h);

  fill(pearl);
  textSize(40);
  text("Commence", 450, 500);
  
  fill(pearl);
  textSize(40);
  text("Brief files", 450, 700);

  fill(pearl);
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
  if (mouseX > 350 && mouseX < 750 && mouseY < 750 && mouseY > 650) {
    mode = options;
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
