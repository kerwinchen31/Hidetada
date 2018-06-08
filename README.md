# Team Hidetada
##### Hasif Ahmed, Kerwin Chen, Wenting Li

                                           Attack of the Vegetables 
                                          
**Description**

Our final project is to use processing to create the game Bomb-It, but instead of bombs we use vegetables! The goal of the game is to be the last one standing. There will be at most two person functionality. The project involves a draw method that updates the game screen to show movement, AI in machines that control the non-player characters which the players play against, a maze algorithm that builds our game map, bomb dropping that involves the queue data structure, and etc.

At the beginning of the game, 4 characters spawn on the four corners of the map, with 2 or 3 of the characters being machines depending on how many players are playing.

Throughout the game, the user(s) will interact with the map by placing vegetables that explode to clear obstacles (ie. the breakable walls) and kill other characters. The goal is to eliminate the other players or machines and be the last one standing. The starting vegetable is a cabbage which has the smallest blast radius. Each character starts off with 3 hearts.

**Launch Instructions**

After you launch Game.pde in processing, a game screen will appear, prompting the user to enter a for the 1-player mode and b for the 2-player mode. Then, the game will prompt user(s) to enter a number from 0-9 corresponding to a color displayed on the screen to choose a color for each player.

In 1-player mode, user will use the keys W, A, S, D to move up, left, down, right one unit respectively and F to drop an exploding vegetable. In 2- player mode, player 1 will use the keys W, A, S, D, F, while player 2 will use the the keys I, J, K, L to move up, left, down, right one unit and the backspace or delete key to drop an exploding vegetable. Each character starts off with 3 hearts; until a character reaches 0 hearts, they will keep respawning at their respective corner where they first started off at in the game. 

Once the game map loads, players will see a color-coded, tiled screen. The green tile represents cleared tiles that players may walk on. The white tiles represent breakable tiles that players may use a bomb to clear away. The black tiles represent the unbreakable tiles that players cannot break with bombs. Players may not move through wall or other characters! The blue and red pairs of tiles represent portals that teleport characters to another portal exit of the corresponding color. This allows players to sneak up behind enemies for surprise attacks and avoid being killed in a pinch!

Once there is only one player left in the game, a winning screen will appear to congratulate the player and prompt the player(s) to press G to return to main menu and experience the fun again.

Once again, it's the survival of the fittest, so drop a veggie on the other players before they drop one on you! 


