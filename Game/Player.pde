class Player{
  float xcor,ycor,xorig,yorig;
  final static int ALIVE = 0;
  final static int DEAD = 1;
  Bomb x;
  int bombs;
  int lives = 3;
  int state;
  color c;
  int r;
  public Player(float x,float y,int c1, int c2, int c3, int rad){
    xcor = x;
    ycor = y;
    xorig = x;
    yorig = y;
    state = ALIVE;
    c = color(c1,c2,c3);
    bombs = 0;
    r = rad;
  }
  
  int getLife(){
   return lives; 
  }
  void update(Player[] players){
    check(players);
   if(state == ALIVE){
      if(x != null) x.update();
      fill(c);
      ellipse(xcor,ycor,r,r);
   } 

  }
  void respawn(){
    fill(c);
    ellipse(xorig,yorig,r,r);
    xcor = xorig;
    ycor = yorig;
    state = ALIVE;
  }

  void check(Player[] players){
    if( x != null && x.getDead() == false && x.getExplosion() == true ){
    for(int i = 0; i < players.length; i++){
       float distance = dist(x.xcor, x.ycor,players[i].xcor, players[i].ycor);
       if(distance <= 90){
         players[i].lives -= 1;
         players[i].state = DEAD;
         players[i].respawn();
       }
       /*if((x.xcor == players[i].xcor && x.ycor == players[i].ycor)){
         players[i].lives -= 1;
         players[i].state = DEAD;
         players[i].respawn();
         
       }*/
    }
    }
  }
  void die(){
    //delay(10000000);
    state = DEAD;
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  
