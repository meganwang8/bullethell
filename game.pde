void game() {
  //background(0);
  noStroke();
  fill(0, 100);
  rect(width/2, height/2, width, height);
  //game objects
  addObjects();
  gameEngine();
  debug();

  //starfighter
  player1.show();
  player1.act();

  //pause button
  fill(turquoise);
  tactile2(30, 30, 50, 50);
  square(50, 50, 50);
  fill(cream);
  textSize(40);
  textAlign(CENTER);
  text("P", 52, 62);

  //scoring
  fill(cream);
  textSize(40);
  text("SCORE: " + score, 80, 720);
  if (score > highscore) highscore = score;

  //lives
  text("LIVES: " + Lives, 80, 770);
  if (Lives==0) mode=GAMEOVER;

  //planet
  int i=0;
  while (i<p) {
    planets[i].show();
    planets[i].act();
    i++;
  }
}

void addObjects() {
  objects.add(0, new Star());
  objects.add(0, new Star2());
  if (frameCount % 60 ==0) objects.add(new Enemy());
  if (frameCount % 50 ==0) objects.add(new Enemy2());
  if (frameCount % 65 ==0) objects.add(new Enemy3());
  if (frameCount % 300 ==0) objects.add(new PowerUp());
  if (frameCount % 500 ==0) objects.add(new PowerUp2());
}

void gameEngine() {
  int i=0;
  while (i<objects.size()) {
    GameObject s=objects.get(i);
    s.act();
    s.show();
    if (s.lives==0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}

void debug() {
  textSize(20);
  //text(frameRate, 30, 20);
  //text(objects.size(), 30, 40);
}

void tactile2(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    stroke(pink);
  } else stroke(turquoise);
}

void gameClicks() {
  if (mouseX>30 && mouseX<80 && mouseY>30 && mouseY<80) {
    click.play();
    click.rewind();
    mode=PAUSE;
  }
}
