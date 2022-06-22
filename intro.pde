void intro() {
  theme.play();
  image(intro, 0, 0);
  //play button
  fill(cream);
  strokeWeight(5);
  tactile(250, 520, 300, 100);
  rect(width/2, 570, 300, 100, 20);
  fill(turquoise);
  font=createFont("digital-7.ttf", 100);
  textAlign(CENTER);
  textFont(font);
  text("PLAY", width/2, 605);
}

void introClicks() {
  if (mouseX>250 && mouseX<550 && mouseY>520 && mouseY<620) {
    click.play();
    click.rewind();
    mode=GAME;
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    stroke(pink);
  } else stroke(cream);
}
