//draw model rocket for starfighter
class Starfighter extends GameObject {
  PImage rocket;
  int cooldown, threshold;

  Starfighter() {
    super(width/2, height/2, 0, 0, 40, #FF0000, 3);
    rocket=loadImage("rocket.png");
    threshold=20;
    cooldown=threshold;
    if (score>=20) {
      threshold=50;
    }
  }

  void act() {
    super.act();
    //managing guns
    cooldown++;
    if (space && cooldown >=threshold) {
      objects.add(new Bullet());
      cooldown=0;
    }

    //control Starfighter
    if (up) vy=-5;
    if (down) vy=5;
    if (left) vx=-5;
    if (right)vx=5;
    if (!up && !down) vy=vy*0.9;
    if (!left && !right) vx=vx*0.9;
    if (player1.x>=780) player1.x=780;
    if (player1.x<=20) player1.x=20;
    if (player1.y>=height-30) player1.y=height-30;
    if (player1.y<=30) player1.y=30;

    //collisions
    if (alive==true){ 
      manageCollisions();
    }
  }

  void show() {
    imageMode(CENTER);
    image(rocket, x, y);
  }
  
  void manageCollisions(){
    int i=0;
    while (i<objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet || obj instanceof EnemyBullet2 || obj instanceof EnemyBullet3) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
          Lives=Lives-1;
          bump.play();
          bump.rewind();
        }
      }
      i++;
    }
  }
}
