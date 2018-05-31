Player[] players = new Player[4];
void setup() {
  size(600, 600);
  players[0] = new Player(30,30);
  players[1] = new Player(570,30);
  players[2] = new Player(30,570);
  players[3] = new Player(570,570);
}

void draw() {
  background(127);
  noStroke();
  for(int x = 5; x < width; x += 60){
  for (int i = 5; i < height; i += 60) {
    fill(129, 206, 15);
    rect(x, i, 50, 50);
  }
  }
  for(int j = 0;j < players.length; j++){
    if(players[j].getLife() == 0){
      players[j].die();
    } else {
     players[j].update(players); 
    }
  }
}
void keyPressed(){
  if(key == 'w'){
    players[0].ycor -= 60; 
  }
  if(key == 's'){
    players[0].ycor += 60; 
  }
  if(key =='a'){
    players[0].xcor -= 60; 
  }
  if(key == 'd'){
    players[0].xcor += 60; 
  }
  if(key == 'f'){
    players[0].dropbomb(); 
  }
    if(key == 'o'){
    players[1].ycor -= 60; 
  }
  if(key == 'l'){
    players[1].ycor += 60; 
  }
  if(key =='k'){
    players[1].xcor -= 60; 
  }
  if(key == ';'){
    players[1].xcor += 60; 
  }
  if(key == 'u'){
    players[1].dropbomb(); 
  }
}
