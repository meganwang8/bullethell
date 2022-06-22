class Enemy extends GameObject {
  PImage alien;
  int threshold, cooldown;

  Enemy() {
    super(random(width), -20, 0, 10, 40, 255, 1);
    alien=loadImage("alien.png");
    threshold=50;
    cooldown=threshold;
  }

  void act() {
    super.act();

    //shoot
    //managing bullet
    cooldown++;
    if (cooldown>=threshold) {
      objects.add(new EnemyBullet(x, y, -10, 10));
      cooldown=0;
    }

    //collisions
    int i=0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
          score=score+1;
          scoring.play();
          scoring.rewind();
          objects.add(new Explode(x, y));
          objects.add(new Explode(x, y));
          objects.add(new Explode(x, y));
          objects.add(new Explode(x, y));
          objects.add(new Explode(x, y));
          objects.add(new Explode(x, y));
          objects.add(new Explode(x, y));
        }
      }
      i++;
    }

    //remove if goes off screen
    if (offScreen()) lives=0;
  }

  void show() {
    imageMode(CENTER);
    image(alien, x, y);
  }
}

class Enemy2 extends GameObject {
  PImage alien2;
  int threshold, cooldown;

  Enemy2() {
    super(random(width), -20, 5, 5, 40, pink, 1);
    alien2=loadImage("alien2.png");
    threshold=30;
    cooldown=threshold;
  }

  void act() {
    super.act();

    //shoot
    //managing bullet
    cooldown++;
    if (cooldown>=threshold) {
      objects.add(new EnemyBullet2(x, y, 10, 10));
      cooldown=0;
    }

    //collisions
    int i=0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
          score=score+1;
          scoring.play();
          scoring.rewind();
          objects.add(new Explode2(x, y));
          objects.add(new Explode2(x, y));
          objects.add(new Explode2(x, y));
          objects.add(new Explode2(x, y));
          objects.add(new Explode2(x, y));
          objects.add(new Explode2(x, y));
          objects.add(new Explode2(x, y));
        }
      }
      i++;
    }

    //remove if goes off screen
    if (offScreen()) lives=0;
  }

  void show() {
    imageMode(CENTER);
    image(alien2, x, y);
  }
}

class Enemy3 extends GameObject {
  PImage rock;
  int threshold, cooldown;

  Enemy3() {
    super(random(width), -20, random(5, 10), random(5, 10), 40, turquoise, 1);
    rock=loadImage("rock.png");
    threshold=20;
    cooldown=threshold;
  }

  void act() {
    super.act();

    //shoot
    //managing bullet
    cooldown++;
    if (cooldown>=threshold) {
      objects.add(new EnemyBullet3(x, y, random(1, 10), random(1, 10)));
      cooldown=0;
    }

    //collisions
    int i=0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
          score=score+1;
          scoring.play();
          scoring.rewind();
          objects.add(new Explode3(x, y));
          objects.add(new Explode3(x, y));
          objects.add(new Explode3(x, y));
          objects.add(new Explode3(x, y));
          objects.add(new Explode3(x, y));
          objects.add(new Explode3(x, y));
          objects.add(new Explode3(x, y));
        }
      }
      i++;
    }

    //remove if goes off screen
    if (offScreen()) lives=0;
  }

  void show() {
    imageMode(CENTER);
    image(rock, x, y);
  }
}
