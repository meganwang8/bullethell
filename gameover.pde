void gameover() {
  //gameoverr.play();
  imageMode(CORNER);
  image(gameover, 0, 0);
  //retry button
  fill(cream);
  strokeWeight(5);
  tactile(250, 520, 300, 100);
  rect(width/2, 570, 300, 100, 20);
  fill(turquoise);
  font=createFont("digital-7.ttf", 100);
  textFont(font);
  textSize(100);
  textAlign(CENTER);
  text("RETRY", width/2, 605);
  //quit button
  fill(cream);
  tactile(250, 650, 300, 100);
  rect(width/2, 700, 300, 100, 20);
  fill(turquoise);
  textAlign(CENTER);
  text("QUIT", width/2, 735);
  //high score
  fill(turquoise);
  textSize(70);
  text("HIGH SCORE: " + highscore, width/2, 100);
}

void gameoverClicks() {
  if (mouseX>250 && mouseX<550 && mouseY>520 && mouseY<620) {
    click.play();
    click.rewind();
    setup();
    mode=GAME;
  }
  if (mouseX>250 && mouseX<550 && mouseY>650 && mouseY<750) {
    click.play();
    click.rewind();
    exit();
  }
}
