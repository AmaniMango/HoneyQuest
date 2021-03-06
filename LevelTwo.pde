class LevelTwo {
  PImage land;
  int en;
  Bear b;
 // int x, y;
  //Honey h;
  ObstacleBee obstacles[];
  //instance variables
  
  LevelTwo() {  
    land = loadImage("landscape.png");
    //h = new Honey(750, 0, 100, 800);
    en = 0;
    b = new Bear(100, 300);
    obstacles = new ObstacleBee[6];
    obstacles[0]= new ObstacleBee(300, 100);
    obstacles[1]= new ObstacleBee(350, 300);
    obstacles[2]= new ObstacleBee(300, 500);
    obstacles[3]= new ObstacleBee(600, 50);
    obstacles[4]= new ObstacleBee(500, 200);
    obstacles[5]= new ObstacleBee(550, 400);
    //
    
  }
  
  void draw() {
    image(land, 0, 0, 800, 600);
    fill(235, 229, 52);
     //h.draw();
    fill(245, 236, 83);
    rect(750, 0, 750, 800);
    fill(0);
    textSize(25);
    text("Level Two", 20, 25);
    b.draw();
    for (ObstacleBee bee : obstacles){
      if(bee != null){
        bee.draw();
        if(b.hitObstacle(bee.x, bee.y)){
          gameStage = 7;
          gameOver = new GameOver();
     }
      }
    }
    if (b.xpos > 700){
        gameStage = 4;
        levelTwoComplete = new LevelTwoComplete("bee.png");
    }
    //HERE!!!!!
  }
  
  void keyPressed() {
    /*if(key == 'b'){
    gameStage = 4;
    levelTwoComplete = new LevelTwoComplete("bee.png");
    }
    */
    b.keyPressed();
  }
  
  void mouseClicked(){
  }
}
