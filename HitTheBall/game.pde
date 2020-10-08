class game
{



  void draw()
  {
    if (play==true)
    {
      //increase the location of the x and the y values if the mouse button is clicked.

      gamecaracters.caracterXpos = gamecaracters.caracterXpos + gamecaracters.speedx;
      gamecaracters.caracterYpos = gamecaracters.caracterYpos + gamecaracters.speedy;


      // setting the main caracter's color with no borders.
      fill(#64F050);
      noStroke();
      ellipse(gamecaracters.caracterXpos, gamecaracters.caracterYpos, gamecaracters.radius, gamecaracters.radius);

      //calling the fuction that moves the main ball.
      gamecaracters.caractermovement();

      //calling the fuction to check if the two balls have collided.
      gamecaracters.checkifhit();
    } else {

      /*if the button was not clicked then create a line that changes position depending on the mouse
       and spawn the main ball in the canvas.*/

      noStroke();
      fill(#64F050);
      ellipse(gamecaracters.caracterXpos, gamecaracters.caracterYpos, gamecaracters.radius, gamecaracters.radius);
      stroke(0);
      strokeCap(PROJECT);
      stroke(#FF4A1C);
      strokeWeight(2);
      line(gamecaracters.caracterXpos, gamecaracters.caracterYpos, mouseX, mouseY);
    }
  }
}
