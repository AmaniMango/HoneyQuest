//Ask: 
//ask: How to get the entire bear to hit an obstcle and lose
class LevelOne {
  int be;
  Bear b;
  PImage land;
  //Honey h;
  Horn horns[];
//Bee bee;
//instance variables

  LevelOne() {
    land = loadImage("landscape.png");
    //h = new Honey(750, 0, 50, 800);
    //fix honey place^
    be = 0;
    b = new Bear(100, 300);
    //^bear setup
   //Add new tab for bear and obstacle!!
   horns = new Horn[6];
   horns[0]= new Horn(300, 100, 40);
   horns[1]= new Horn(300, 300, 40);
   horns[2]= new Horn(300, 500, 40);
   horns[3]= new Horn(450, 400, 40);
   horns[4]= new Horn(450, 200, 40);
   horns[5]= new Horn(450, 0, 40);
    rect(300+12, 100+18, 8, 10);
  // horns[3]= new Horn(500,);
  }
  
  void draw() {
    imageMode(CORNER);
    image(land, 0, 0, 800, 600);
    fill(245, 236, 83);
    rect(750, 0, 750, 800);
   //h.draw();
    fill(255);
   /* rect(300+12, 100+18, 8, 10);
    rect(300+12, 300+18, 8, 10);
    rect(300+12, 500+18, 8, 10);
    rect(450+12, 400+18, 8, 10);
    rect(450+12, 200+18, 8, 10);
    rect(450+12, 18, 8, 10);
    */
    b.draw();
    //^bear drawn
    fill(0);
    textSize(25);
    text("Level One", 20, 25);
    /*
    fill(255);
    textSize(50);
    text("Level One", 20, 40);
    */
    for (Horn horn : horns){
      if(horn != null){
        horn.draw();
        horn.o = 255;
        if(b.hitObstacle(horn.x, horn.y)){
          gameStage = 7;
          gameOver = new GameOver();
        }
      }
    }
    fill(255);
    //white box
    //rect(462, 419, 8, 10);
     if (b.xpos > 700){
        gameStage = 2;
        levelOneComplete = new LevelOneComplete();
    }
    //rect(Horn.x+12, horns.y+18, 8, 10);
    //#FFDE70
    
  }
  
  void keyPressed() {
    b.keyPressed();
    //^ bear movement
    if(key == 'b'){
      gameStage = 2;
      levelOneComplete = new LevelOneComplete();
    }
  }
  void mouseClicked(){
  
  }
}
