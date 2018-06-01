Player[] players = new Player[4];
boolean game = false;
int start = 0;
void setup() {
  size(600, 600);
  background(255, 204, 0);
  textSize(32);
  text("Attack of the Vegetables", 100,300);
  text("Press Enter To Start", 150, 350); 
  fill(150, 40, 153);
  
}

void draw() {
  if(game == true && start == 1){
  players[0] = new Player(30,30,0,0,255);
  players[1] = new Player(570,30,255,0,0);
  players[2] = new Player(30,570,100,80,100);
  players[3] = new Player(570,570,50,70,90); 
  start += 1;
  }
  
  if(game == true){
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
}
void keyPressed(){

  if(key == 'w' && (players[0].ycor >= 90) && get((int)players[0].xcor,(int)players[0].ycor - 60) == color(129, 206, 15)){

  if(key == ENTER && start == 0){
    game = true;
    start += 1;
  }
  if(key == 'w' && (players[0].ycor >= 90)){

    players[0].ycor -= 60; 
  }
  if(key == 's' && (players[0].ycor <= 510) && get((int)players[0].xcor,(int)players[0].ycor + 60) == color(129, 206, 15)){
    players[0].ycor += 60; 
  }
  if(key =='a' && (players[0].xcor >= 90) && get((int)players[0].xcor - 60,(int)players[0].ycor) == color(129, 206, 15)){
    players[0].xcor -= 60; 
  }
  if(key == 'd' && (players[0].xcor <= 510) && get((int)players[0].xcor + 60,(int)players[0].ycor) == color(129, 206, 15)){
    players[0].xcor += 60; 
  }
  if(key == 'f'){
    players[0].dropbomb(); 
  }
 
    if(key == 'i' && (players[1].ycor >= 90) && get((int)players[1].xcor,(int)players[1].ycor -60) == color(129, 206, 15)){
    players[1].ycor -= 60; 
  }
   if(key == 'k' && (players[1].ycor <= 510)&& get((int)players[1].xcor,(int)players[1].ycor +60) == color(129, 206, 15)){
    players[1].ycor += 60; 
  }
  if(key == 'j' && (players[1].xcor >= 90)&& get((int)players[1].xcor-60,(int)players[1].ycor) == color(129, 206, 15)){
    players[1].xcor -= 60; 
  }
  if(key == 'l' && (players[1].xcor <= 510)&& get((int)players[1].xcor+60,(int)players[0].ycor) == color(129, 206, 15)){
    players[1].xcor += 60; 
  }
  if(key == BACKSPACE){
    players[1].dropbomb(); 
  }
  
}
