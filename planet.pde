class Planet {
  PImage planet;
  float x, y, vx, vy, lives;
  Planet() {
    planet=loadImage("planet.png");
    x=random(width);
    y=-20;
    vy=5;
    lives=1;
  }
  void act() {
    y=y+vy;
    if (y>=height+50) {
      lives=0;
      x=random(width);
      y=-500;
    }
  }

  void show() {
    image(planet, x, y);
  }
}
