class Star extends GameObject {
  //constructor
  Star() {
    super(random(width), 0, 0, 0, random(1, 5), #FFFFFF, 1);
    vy=size;
  }

  //behaviour functions
  void act() {
    super.act();
    if (y>height) lives=0;
  }

  boolean isDead() {
    if (size>=5) return true;
    else return false;
  }
}

class Star2 extends GameObject {
  //constructor
  Star2() {
    super(random(width), 0, 0, 0, random(0.5, 3), yellow, 1);
    vy=size;
  }

  //behaviour functions
  void act() {
    super.act();
    if (y>height) lives=0;
  }

  boolean isDead() {
    if (size>=5) return true;
    else return false;
  }
}
