Player[] players = new Player[4];
Bomb[] bombs = new Bomb[10];
int numbombs; 
int num = 1;
void setup(){
  noStroke();
  size(600,600);
  background(0);
  players[0] = new Player(60,60);
  players[1] = new Player(60,540);
  players[2] = new Player(540,60);
  players[3] = new Player(540,540);
  numbombs = 0;
}
void draw() {
  background(0);
  for(int i = 0; i < players.length; i++){
     players[i].update(players); 
  }
  for(int x = 0; x < numbombs; x++){
     bombs[x].update(); 
  }
}
void keyPressed(){
  if(key == 'w') players[0].ycor -= 10; 
  if(key == 's') players[0].ycor += 10;
  if(key == 'd') players[0].xcor += 10;
  if(key == 'a') players[0].xcor -= 10;
  if(key == 'f' && num == 1){
     bombs[numbombs] = new Bomb(players[0].xcor,players[0].ycor);
     numbombs += 1;
     num -= 1;
  }
}
