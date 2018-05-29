class Player{
  float xcor,ycor,xorig,yorig;
  final static int ALIVE = 0;
  final static int RESPAWN = 1;
  final static int DEAD = 2;
  int lives;
  int state;
  int r;
  color c;
  public Player(){
    lives = 3;
    xcor = 0;
    ycor = 0;
    xorig = 0;
    yorig = 0;
    c = color(random(255),random(255),random(255));
    state = ALIVE; 
    r = 60;
  }
  public Player(float x, float y){
    lives = 3;
    xcor = x;
    ycor = y;
    xorig = x;
    yorig = y;
    c = color(random(255),random(255),random(255));
    state = ALIVE; 
    r = 60;
  }
  void check(Player[] players){
  }
  void die(){
    lives -= 1;
    if(lives == 0){
      state = DEAD;
    } else {
      state = RESPAWN;
    }
  }
  void move(){
    fill(c);
    ellipse(xcor,ycor,60,60);
  }
  void update(Player[] players){
   if(state == ALIVE){
     move();
     check(players);
   } 
   else if (state == RESPAWN){
     //goodbye();
     //respawn();
   }
   else if(state == DEAD){
      //goodbye(); 
   }
  }
 /* void respawn(){
   ellipse(xorig,yorig,60,60);
   state = ALIVE;
  }
  void goodbye(){
    r -= 10;
    ellipse(xcor,ycor,r,r);
  } */
}
