class canvastext
{
int time;


  void draw()
  {
    //writting the text on the canvas and setting up the location-
    text("Level: ", 130, 50);
    text(count, 220, 50);

    //Timer in seconds.
    time = frameCount/60;
    text("Time: ", 20, 380);
    text(time, 100, 380);
    textSize(28);
    text("Press 'r' to reset ", 170, 380);
  }
}
