class Bomb{
  float xcor,ycor;
  final static int A = 0;
  final static int B = 1; 
  float state; 
  color c; 
  boolean dead = false;
  boolean explosion = false;
  public Bomb(float x, float y){
     xcor = x;
     ycor = y;
     state = A;
     c = color(0,0,255);
     dead = false; 
     explosion = false; 
  }
  void update(){
     if(state < B){
       fill(c); 
       ellipse(xcor,ycor,30,30);
       state += .025;
       explosion = false;
     } else if (state < 1.25) {
       fill(c);
       ellipse(xcor,ycor,180,180);
       state += .025;
       explosion = true;
     } else {
       dead = true; 
       explosion = false;
     }
  }
  boolean getDead(){
    return dead;
  }
  boolean getExplosion(){
    return explosion; 
  }
  
  
}
