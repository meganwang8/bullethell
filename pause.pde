void pause() {
  //pause button
  fill(turquoise);
  tactile2(30, 30, 50, 50);
  square(50, 50, 50);
  fill(cream);
  textSize(40);
  textAlign(CENTER);
  text("P", 52, 62);

  fill(pink);
  textSize(150);
  text("PAUSED", width/2, height/2);
}

void pauseClicks() {
  if (mouseX>30 && mouseX<80 && mouseY>30 && mouseY<80) {
    click.play();
    click.rewind();
    mode=GAME;
  }
}
