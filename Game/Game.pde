Player[] players = new Player[4];
Player[] choose = new Player[10];
boolean game = false;
int start = 0;
String word = "";
boolean player2 = false; 
int c1,c2,c3;
int c4 = 0;
int c5 = 0;
int c6 = 0;
void setup() {
  size(600, 600);
  fill(50, 160, 100);
  
  background(255, 204, 0);
  textSize(32);
  text("Attack of the Vegetables", 90,150);
  text("1 Player: Press a", 90, 300);
  text("2 Player: Press b",90,350);
  
  
}

void draw() {
    if(start == 2){
    background(0);
    textSize(45);
    fill(0,0,255);
    text("Choose Your Player 2 Color",5,100);
    textSize(25);
    text("Press Number Associated With Color",75,400);
     choose[0] = new Player(90,175,0,0,255,100);
     
     choose[1] = new Player(200,175,0,255,0,100);
     
     choose[2] = new Player(310,175,255,0,0,100);
     
     choose[3] = new Player(420,175,0,255,255,100);
     
     choose[4] = new Player(530,175,255,0,255,100);
     
     choose[5] = new Player(90,300,255,255,0,100);
     
     choose[6] = new Player(200,300,255,255,255,100);
     
     choose[7] = new Player(310,300,100,100,100,100);
     
     choose[8] = new Player(420,300,180,50,255,100);
     
     choose[9] = new Player(530,300,90,60,30,100);
     
 
     for(int l = 0;l < choose.length; l++){
    if(choose[l].getLife() == 0){
      choose[l].die();
    } else {
     choose[l].update(choose); 
    }
    }
    textSize(40);
     fill(0,0,0);
     text("0",78,187);
     text("1",188,187);
     text("2",298,187);
     text("3",408,187);
     text("4",518,187);
     text("5",78,312);
     text("6",188,312);
     text("7",298,312);
     text("8",408,312);
     text("9",518,312);
    
  }
  if(start == 1){
    background(0);
         
    textSize(45);
    fill(0,0,255);
    text("Choose Your Player 1 Color",5,100);
    textSize(25);
    text("Press Number Associated With Color",75,400);
     choose[0] = new Player(90,175,0,0,255,100);
     choose[1] = new Player(200,175,0,255,0,100);
     choose[2] = new Player(310,175,255,0,0,100);
     choose[3] = new Player(420,175,0,255,255,100);
     choose[4] = new Player(530,175,255,0,255,100);
     choose[5] = new Player(90,300,255,255,0,100);
     choose[6] = new Player(200,300,255,255,255,100);
     choose[7] = new Player(310,300,100,100,100,100);
     choose[8] = new Player(420,300,180,50,255,100);
     choose[9] = new Player(530,300,90,60,30,100);
     

    for(int j = 0;j < choose.length; j++){
    if(choose[j].getLife() == 0){
      choose[j].die();
    } else {
     choose[j].update(choose); 
    }
    }
    textSize(40);
     fill(0,0,0);
     text("0",78,187);
     text("1",188,187);
     text("2",298,187);
     text("3",408,187);
     text("4",518,187);
     text("5",78,312);
     text("6",188,312);
     text("7",298,312);
     text("8",408,312);
     text("9",518,312);
    
  }

  if(game == true && start == 3){
 
  players[0] = new Player(30,30,c1,c2,c3,40);
  players[1] = new Player(570,30,c4,c5,c6,40);
  players[2] = new Player(30,570,100,80,100,40);
  players[3] = new Player(570,570,50,70,90,40); 
  start = 4;
  }
  
  if(game == true ){
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
  if(player2 == false){
   players[1].updateCPU(players[1],players); 
   players[2].updateCPU(players[2],players); 
   players[3].updateCPU(players[3],players); 
  } else {
    players[2].updateCPU(players[2],players); 
   players[3].updateCPU(players[3],players); 
  }
  }
}



void keyPressed(){
  if(start == 0 && key =='a'){
    start = 1;
    player2 = false; 
  }
  if(start == 0 && key == 'b'){
    start = 1;
    player2 = true;
  }
  ///////////////////////////
  if( start == 2 && key == '0') {
     c4 = 0;
     c5 = 0;
     c6 = 255;
     start = 3;
     game = true;
   }
     if( start == 2 && key == '1') {
     c4 = 0;
     c5 = 255;
     c6 = 0;
     start = 3;
     game = true;
   }
   if( start == 2 && key == '2') {
     c4 = 255;
     c5 = 0;
     c6 = 0;
     start = 3;
     game = true;
   }
   if( start == 2 && key == '3') {
     c4 = 0;
     c5 = 255;
     c6 = 255;
     start = 3;
     game = true;
   }
   if( start == 2 && key == '4') {
     c4 = 255;
     c5 = 0;
     c6 = 255;
     start = 3;
     game = true;
   }
   if( start == 2 && key == '5') {
     c4 = 255;
     c5 = 255;
     c6 = 0;
     start = 3;
     game = true;
   }
   if( start == 2 && key == '6') {
     c4 = 255;
     c5 = 255;
     c6 = 255;
     start = 3;
     game = true;
   }
   if( start == 2 && key == '7') {
     c4 = 100;
     c5 = 100;
     c6 = 100;
     start = 3;
     game = true;
   }
   if( start == 2 && key == '8') {
     c4 = 180;
     c5 = 50;
     c6 = 255;
     start = 3;
     game = true;
   }
     if( start == 2 && key == '9') {
     c4 = 90;
     c5 = 60;
     c6 = 30;
     start = 3;
     game = true;
   }
  //////////////////////////////////////
  if( start == 1 && key == '0') {
     c1 = 0;
     c2 = 0;
     c3 = 255;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
     
   }
     if( start == 1 && key == '1') {
     c1 = 0;
     c2 = 255;
     c3 = 0;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
   
   }
     if( start == 1 && key == '2') {
     c1 = 255;
     c2 = 0;
     c3 = 0;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
    
   }
     if( start == 1 && key == '3') {
     c1 = 0;
     c2 = 255;
     c3 = 255;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
    
   }
     if( start == 1 && key == '4') {
     c1 = 255;
     c2 = 0;
     c3 = 255;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
    
   }
     if( start == 1 && key == '5') {
     c1 = 255;
     c2 = 255;
     c3 = 0;if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
     
   }
     if( start == 1 && key == '6') {
     c1 = 255;
     c2 = 255;
     c3 = 255;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
     
   }
     if( start == 1 && key == '7') {
     c1 = 100;
     c2 = 100;
     c3 = 100;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
   }
     if( start == 1 && key == '8') {
     c1 = 180;
     c2 = 50;
     c3 = 255;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
   }
     if( start == 1 && key == '9') {
     c1 = 90;
     c2 = 60;
     c3 = 30;
     if(player2 == false){ start = 3; game = true; }
     else { start = 2; }
   }
  /////////////////////////////////////////////
  
  ///////////////////////////////////
  if (game == true){
  if(key == 'g'){
    start = 0;
    game = false;
    c4 = 0;
    c5 = 0;
    c6 = 0;
   fill(50, 160, 100);
  
  background(255, 204, 0);
  textSize(32);
  text("Attack of the Vegetables", 90,150);
  text("1 Player (a)", 90, 300);
  text("2 Player (b)",90,350);
  }
  if(key == 'w' && (players[0].ycor >= 90) && get((int)players[0].xcor,(int)players[0].ycor - 60) == color(129, 206, 15)){

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
   
   if(player2 == true){
    if(key == 'i' && (players[1].ycor >= 90) && get((int)players[1].xcor,(int)players[1].ycor -60) == color(129, 206, 15)){
    players[1].ycor -= 60; 
  }
   if(key == 'k' && (players[1].ycor <= 510)&& get((int)players[1].xcor,(int)players[1].ycor +60) == color(129, 206, 15)){
    players[1].ycor += 60; 
  }
  if(key == 'j' && (players[1].xcor >= 90)&& get((int)players[1].xcor-60,(int)players[1].ycor) == color(129, 206, 15)){
    players[1].xcor -= 60; 
  }
  if(key == 'l' && (players[1].xcor <= 510)&& get((int)players[1].xcor+60,(int)players[1].ycor) == color(129, 206, 15)){
    players[1].xcor += 60; 
  }
  if(key == BACKSPACE){
    players[1].dropbomb(); 
  }
  }
  }
  
}