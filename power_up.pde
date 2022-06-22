class PowerUp extends GameObject {
  PImage powerup;
  PowerUp() {
    super(random(width), random(-20, -10), random(-6, 6), random(3, 6), 30, cream, 1);
    powerup=loadImage("powerup.png");
  }

  void act() {
    super.act();
    //collision with bullet
    int i=0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
          scoring.play(); 
          scoring.rewind();
          Lives=Lives+1;
        }
      }
      i++;
    }
    //remove if goes off screen
    if (offScreen()) lives=0;
  }

  void show() {
    imageMode(CENTER);
    image(powerup, x, y);
  }
}

class PowerUp2 extends GameObject {
  PImage powerup2;
  PowerUp2() {
    super(random(width), random(-20, -10), random(-6, 6), random(3, 6), 30, cream, 1);
    powerup2=loadImage("powerup2.png");
  }

  void act() {
    super.act();
    //collision with bullet
    int i=0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
          scoring.play(); 
          scoring.rewind();
          objects.add(new Shield());
        }
      }
      i++;
    }
    //remove if goes off screen
    if (offScreen()) lives=0;
  }

  void show() {
    imageMode(CENTER);
    image(powerup2, x, y);
  }
}
