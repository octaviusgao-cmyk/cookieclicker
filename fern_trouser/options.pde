void options() {
  background(auburn);
  fill(taupe);
  textSize(120);
  text("FILES", 475, 100);

  fill(crimson);
  stroke(wood);
  tactile(200, 200, 200, 200);
  square(200, 200, 200);
  image(snake, 210, 210, 175, 175);

  fill(crimson);
  stroke(wood);
  tactile(550, 200, 200, 200);
  square(550, 200, 200);
  image(foxhound, 555, 210, 175, 175);
  
  //slider

  strokeWeight(5);
  stroke(crimson);
  sliderTactile();
  line(250, 600, 700, 600);
  fill(crimson);
  circle(sliderX, 600, 50);
  
  //indicator
  

}

void optionsClicks() {
    slider();

}


void slider() {
  pushMatrix();
  if (mouseX > 250 && mouseX < 700 && mouseY > 550 && mouseY < 650) {
    sliderX = mouseX;
  }

  sizeY = map(sliderX, 250, 700, 450, 450);
  sizeX = map(sliderX, 250, 700, 450, 450);
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
