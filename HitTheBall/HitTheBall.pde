//Create and initialise variables.

boolean play=false;
boolean hit=false;
float distance;
int count=1;
PImage background;
mainball gamecaracters;
canvastext screentext;
game checkgame;




void setup()
{
  //setting up the size of the canvas
  size(400, 400);
  
  //setting up the class
  gamecaracters = new mainball();
  screentext = new canvastext(); 
  checkgame = new game();
  
  //adding a background picture.
  background = loadImage("background.jpg");

  //text size.
  textSize(32);
}

void draw()
{

  //setting up the background image and the size.
  image(background, 400, 400);
  background(background);
  screentext.draw();

  //filling the target ball as yellow
  fill(#FFF529);

  //Changing the position of the main caracter depending on the velocity value
  gamecaracters.positionX = gamecaracters.positionX + gamecaracters.velocityX;
  gamecaracters.positionY = gamecaracters.positionY + gamecaracters.velocityY;


  //Calculating the difference between the main caracter and the yellow ball.
  distance=dist(gamecaracters.positionX, gamecaracters.positionY, gamecaracters.caracterXpos, gamecaracters.caracterYpos);

  //creating the main caracter ball with no borders.
  noStroke();
  ellipse(gamecaracters.positionX, gamecaracters.positionY, gamecaracters.radius, gamecaracters.radius);

  //calling the function that moves the ball
  gamecaracters.moveball();

  // check if the player has clicked the mouse button
  checkgame.draw();
  
}



//function to check if the mouse button was pressed.
void mousePressed() 
{
  if (play) 
  {
  } else {
    /*As the mouse gets more distant than the main caracter the higher the difference between the speed
     making it to have a higher movement speed*/

    gamecaracters.speedx = (mouseX - gamecaracters.caracterXpos) / 25;
    gamecaracters.speedy = (mouseY - gamecaracters.caracterYpos) / 25;
    play = true;
  }
}


//function to reset the game if a key is pressed.
void keyPressed()
{
  if (key=='r')
  {
    setup();
    screentext.time=0;
    count=1;
    play=false;
    frameCount=0;
  }
}
