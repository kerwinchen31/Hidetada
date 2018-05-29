class Bomb{
  float xcor,ycor; 
  final static int A = 0;
  final static int C = 1;
  int state; 
  color c;
  public Bomb(float x, float y ){
     xcor = x;
     ycor = y;
     state = A; 
     c = color(random(255), random(255), random(255));
  }
  void update(){
     if(state == A){
       fill(c);
       ellipse(xcor,ycor,30,30);
       //state += 1;
     } else if (state == C){
       explode();
     }
  }
  void explode(){
  }
  }
