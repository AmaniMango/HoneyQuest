class LevelThree{
  //int we;
  Bear b;
  int xpos, ypos;
  PImage land;
  //AudioPlayer ap;
  Honey h;
  Queen q;
  ObstacleBee obstacles[];
   LevelThree(){
     //we=0;
     q = new Queen(400, 315);
     b = new Bear(100 + xpos, 300 + ypos);
     land = loadImage("landscape.png");
     h = new Honey(750, 0, 100, 800);
     obstacles = new ObstacleBee[4];
     obstacles[0]= new ObstacleBee(300, 100);
     obstacles[1]= new ObstacleBee(600, 300);
     obstacles[2]= new ObstacleBee(300, 500);
     obstacles[3]= new ObstacleBee(600, 50);
    //  ap = minim.loadFile("201.mp3");
  
 // ap.cue(0);
 // ap.play();

   }

  void draw(){
    image(land, 0, 0, 800, 600);
    fill(235, 229, 52);
    h.draw();
    q.draw();
    fill(0);
    textSize(25);
    text("Level Three", 20, 25);
    b.draw();
    if (b.xpos > 700){
        gameStage = 6;
        gameWin = new GameWin();
        // ap.pause ();
    }
    if(b.hitObstacle(q.x, q.y)){
       gameStage = 7;
       gameOver = new GameOver();
    }
    for (ObstacleBee bee : obstacles){
      if(bee != null){
        bee.draw();
        if(b.hitObstacle(bee.x, bee.y)){
          gameStage = 7;
          gameOver = new GameOver();
             /// ap.pause ();
     }
      }
    }
  }
  
  void keyPressed(){
    b.keyPressed();
    /*
    if (key == 'o'){
      gameStage = 7;
      gameOver = new GameOver("loseScreen.jpg");
    }
    */
    
  }

  void mouseClicked(){
  
  }





}
