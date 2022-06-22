class Shield extends GameObject {
  Shield() {
    super(player1.x, player1.y, 0, 0, random(1, 5), #FFFFFF, 1);
  }

  void act() {
    super.act();
    textSize(10);
    fill(#000000);
    text(timer, 10, 10);
    timer=timer-1;
    alive=false;
    
    if(timer<=0){
      lives=0;
      alive=true;
    }
  }
  
  void show(){
    image(shield,player1.x,player1.y);
  }
}
