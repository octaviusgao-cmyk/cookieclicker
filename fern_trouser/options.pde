void options() {
  background(auburn);
  fill(taupe);
  textSize(120);
  text("FILES", 475, 100);

  fill(crimson);
  stroke(wood);
  tactile(200, 200, 200, 200);
  square(200, 200, 200);
  image(snake, 300, 300, 175, 175);

  fill(crimson);
  stroke(wood);
  tactile(550, 200, 200, 200);
  square(550, 200, 200);
  image(foxhound, 645, 300, 175, 175);
  
  //back to intro
  fill(crimson);
  stroke(wood);
  tactile(315, 700, 300, 100);
  rect(315, 700, 300, 100);
  fill(taupe);
  text("Tasty", 450, 740);
  

  //slider

  strokeWeight(5);
  stroke(crimson);
  sliderTactile();
  line(250, 600, 700, 600);
  fill(crimson);
  circle(sliderX, 600, 50);

  //indicator
  noStroke();
  circle(center, center, circle);
  snaketype(center, center);
}

void optionsClicks() {
  slider();

  if (mouseX > 200 && mouseX < 375 && mouseY < 375 && mouseY > 200) {
    snaketype = 1;
  }
    if (mouseX > 550 && mouseX < 750 && mouseY > 200 && mouseY < 375) {
      snaketype = 2; 
  }
  
  if (mouseX < 750 && mouseX > 450 && mouseY > 700 && mouseY < 800) {
    mode = intro;
  }
}


void slider() {
  pushMatrix();
  if (mouseX > 250 && mouseX < 700 && mouseY > 550 && mouseY < 650) {
    sliderX = mouseX;
  }
  circle = map(sliderX, 350, 450, 50, 100);
  sizeY = map(sliderX, 350, 450, 40, 90);
  sizeX = map(sliderX, 350, 450, 40, 90);
  popMatrix();
}

void sliderTactile() {
  if (mouseX > 250 && mouseX < 700 && mouseY > 550 && mouseY < 650) {
    stroke(taupe);
  } else
    stroke(crimson);
  {
  }
}

void snaketype(float x, float y) {
  if (snaketype == 1) {
    image(snake, x, y, sizeX, sizeY);
  }
  if (snaketype == 2) {
    image(foxhound, x, y, sizeX, sizeY);
  }
}
