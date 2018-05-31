class Player{
  float xcor,ycor,xorig,yorig;
  final static int ALIVE = 0;
  final static int DEAD = 1;
  Bomb x;
  int bombs;
  int lives = 3;
  int state;
  color c;
  public Player(float x,float y){
    xcor = x;
    ycor = y;
    xorig = x;
    yorig = y;
    state = ALIVE;
    c = color(255,0,0);
    bombs = 0;
  }
  int getLife(){
   return lives; 
  }
  void update(Player[] players){
    check(players);
   if(state == ALIVE){
      if(x != null) x.update();
      fill(c);
      ellipse(xcor,ycor,40,40);
   } 

  }
  
  void check(Player[] players){
    if( x != null && x.getDead() == false && x.getExplosion() == true ){
    for(int i = 0; i < players.length; i++){
       if((x.xcor == players[i].xcor) && (x.ycor == players[i].ycor) ){
         players[i].lives -= 1;
         state = DEAD;
         fill(c);
         ellipse(xorig,yorig,40,40);
         xcor = xorig;
         ycor = yorig;
         state = ALIVE;
       }
    }
    }
  }
  void die(){
    //delay(10000000);
    state = ALIVE;
  }
  
  
  void dropbomb(){
    if(bombs == 0) { 
      x = new Bomb(xcor,ycor); 
      bombs = 1; 
    } else if( x.getDead() ){
      x = new Bomb(xcor,ycor); 
      bombs = 1;
    }
  } 
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
