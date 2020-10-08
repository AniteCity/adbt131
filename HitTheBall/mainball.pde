class mainball
{
  float caracterXpos;
  float caracterYpos;
  float speedx;
  float speedy;
  float radius;

  float targetspeedx;
  float targetspeedy;
  float targetradius;
  float positionX;
  float positionY;
  float velocityX;
  float velocityY;

  mainball()
  {

    caracterXpos =  random(10, 380);
    caracterYpos = random(10, 380);
    speedx = (mouseX - caracterXpos) / 25;
    speedy = (mouseY - caracterYpos) / 25;
    radius = 20;

    targetspeedx=2;
    targetspeedy=2;
    targetradius=20;
    positionX = random(0, 400);
    positionY = random(0, 400);
    velocityX = 1;
    velocityY = -2;
  }

  void caractermovement()
  {
    if (caracterXpos < 0 || caracterXpos  > width) {
      speedx = -speedx;
    }

    if (caracterYpos < 0 || caracterYpos  > height) {
      speedy = -speedy;
    }
  }
  
  void moveball()
{
  if (positionX  < 0 || positionX  > width) {
    velocityX = -velocityX;
  }

  if (positionY  < 0 || positionY  > height) {
    velocityY = -velocityY;
  }
}



void checkifhit()
{
  if (distance<radius) 
  {

    // frameRate(0);
    hit=true;
    count++;
    println(count);
    // set the position of main ball and the position of the yellow ball to be random.
    positionX =random(10, 380);
    positionY =random(10, 380);
    caracterXpos = random(10, 380);
    caracterYpos = random(10, 380);
    play=false;

    //increases/decreases a value in the speed value to increase the speed of the main ball.
    if (velocityX>0 && velocityY<0)
    {
      velocityX=velocityX+0.2;
      velocityY=velocityY-0.4;
    }
    if (velocityX<0 && velocityY>0)
    {
      velocityX=velocityX-0.2;
      velocityY=velocityY+0.4;
    }
    if (velocityX<0 && velocityY<0)
    {
      velocityX=velocityX-0.2;
      velocityY=velocityY-0.4;
    }
    if (velocityX>0 && velocityY>0)
    {
      velocityX=velocityX+0.2;
      velocityY=velocityY+0.4;
    }
  }
}
  

  
  
  
}
