class Explode extends GameObject {
  Explode(float x,float y) {
    super(x, y, random(-10, 10), random(-10, 10), 8, green, 1);
  }

  void act() {
    super.act();
  }

  void show() {
    fill(green);
    circle(x, y, size);
  }
}

class Explode2 extends GameObject {
  Explode2(float x,float y) {
    super(x, y, random(-10, 10), random(-10, 10), 8, pink, 1);
  }

  void act() {
    super.act();
  }

  void show() {
    fill(pink);
    circle(x, y, size);
  }
}

class Explode3 extends GameObject {
  Explode3(float x,float y) {
    super(x, y, random(-10, 10), random(-10, 10), 8, turquoise, 1);
  }

  void act() {
    super.act();
  }

  void show() {
    fill(turquoise);
    circle(x, y, size);
  }
}
