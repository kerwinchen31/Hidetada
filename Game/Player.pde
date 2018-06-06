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
  double distance(Player x, Player y){
    return Math.sqrt(Math.pow(x.xcor - y.xcor,2) + Math.pow(x.ycor - y.ycor, 2));
  }
  int closest(Player x,Player[] players){
    double j = distance(x, players[0]);
    int i = 0;
    for(int k = 1; k < players.length; k++){
      double dis = distance(x, players[k]);
      if ( dis < j && dis != 0){
         j = dis; 
         i = k;
      }
    }
    return i;
  }
  void checkToBomb(Player x, Player[] players){
    for(int k = 0; k < players.length; k++){ 
      double dis = distance(x, players[k]);
      if (dis < 85 && dis != 0){
        x.dropbomb();
    int p = (int)(Math.random() * 25);
    if(p == 3){ 
        if(get((int)x.xcor + 60,(int)x.ycor) == color(129, 206, 15)){
         x.xcor += 60; 
         fill(c);
      ellipse(xcor,ycor,r,r);
      }else if(get((int)x.xcor - 60,(int)x.ycor) == color(129, 206, 15)){
        x.xcor -= 60; 
        fill(c);
        ellipse(xcor,ycor,r,r);
      }else if(get((int)x.xcor,(int)x.ycor + 60) == color(129, 206, 15)){
         x.ycor += 60; 
         fill(c);
      ellipse(xcor,ycor,r,r);
      }else if(get((int)x.xcor,(int)x.ycor - 60) == color(129, 206, 15)){
        x.ycor -= 60; 
        fill(c);
        ellipse(xcor,ycor,r,r);
      }
      }
      }
    }
  }
  void updateCPU(Player x, Player[] players){
    check(players);
    checkToBomb(x,players);
    int k = closest(x,players);
    int p = (int)(Math.random() * 25);
    if(state == DEAD){
    } else { 
    if(p == 3){ 
    if(players[k].ycor == x.ycor ){
      if(players[k].xcor > x.xcor && get((int)x.xcor + 60,(int)x.ycor) == color(129, 206, 15)){
         x.xcor += 60; 
         fill(c);
      ellipse(xcor,ycor,r,r);
      } else if (get((int)x.xcor - 60,(int)x.ycor) == color(129, 206, 15)){ 
      x.xcor -= 60; 
    fill(c);
      ellipse(xcor,ycor,r,r);
    }
    } else if(players[k].ycor > x.ycor && get((int)x.xcor,(int)x.ycor + 60) == color(129, 206, 15)){
      x.ycor += 60;
      fill(c);
      ellipse(xcor,ycor,r,r);
    } else if (get((int)x.xcor,(int)x.ycor - 60) == color(129, 206, 15)){
      x.ycor -= 60;
      fill(c);
      ellipse(xcor,ycor,r,r);
    }
    }
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  
