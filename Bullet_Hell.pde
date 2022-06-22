import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Megan Wang
//2-4
//May 25th, 2022

//mode variables
int mode;
final int INTRO=0;
final int GAME=1;
final int GAMEOVER=2;
final int PAUSE=3;

//images
PImage intro;
PImage gameover;
PImage rocket;
PImage shield;

//minim
Minim minim;
AudioPlayer theme, click, bump, scoring, powerup, gameoverr;

//fonts
PFont font;

//colours
color cream = #fefae0;
color pink = #f26df9;
color turquoise = #00fff5;
color yellow = #ffbe0b;
color green = #abff4f;

//keyboard variables
boolean left, right, up, down, space;

//scoring
int score;
int Lives;
int highscore;

//shield
int timer;
boolean alive;

//array lists
ArrayList<GameObject>objects;
Starfighter player1;
Planet[]planets;
int p=1;
Enemy enemy;
EnemyBullet enemybullet;
EnemyBullet2 enemybullet2;
EnemyBullet3 enemybullet3;
Shield defence;

void setup() {
  size(800, 800);
  mode=INTRO;
  rectMode(CENTER);

  //intro picture
  intro=loadImage("Bullet Hell.png");

  //gameover picture
  gameover=loadImage("gameover.png");
  
  //shield picture
  shield=loadImage("shield.png");

  //initialize keyboard
  left=right=up=down=false;

  //stars
  objects=new ArrayList<GameObject>();
  //starfighter
  player1=new Starfighter();
  //planet
  planets = new Planet[p];
  int i=0;
  while (i<p) {
    planets[i]=new Planet();
    i++;
  }

  //scoring and lives
  score=0;
  Lives=3;
  
  //collisions
  alive=true;
  
  //shield
  timer=1000;
  
  //music
  minim = new Minim(this);
  theme = minim.loadFile("music.mp3");
  click = minim.loadFile("click.mov");
  scoring = minim.loadFile("sparkle.wav");
  bump = minim.loadFile("bump.mp3");
  gameoverr = minim.loadFile("win.wav");
  
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==PAUSE) {
    pause();
  } else {
    println("Error: Mode = " + mode);
  }
}
