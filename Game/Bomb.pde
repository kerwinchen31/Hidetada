class Bomb{
  float xcor,ycor; 
  final static float A = 0;
  final static float C = 1;
  final static float F = 1.25;
  float state; 
  color c;
  public Bomb(float x, float y ){
     xcor = x;
     ycor = y;
     state = A; 
     c = color(random(255), random(255), random(255));
  }
  void update(){
     if(state < C){
       fill(c);
       ellipse(xcor,ycor,30,30);
       state += .01;
     } else if (state < F){
       explode();
       state += .01;
     }else {
     }
  }
  void explode(){
    fill(255,0,0);
    rect(xcor - 50,ycor - 15,100,30);
    
  }
  }
