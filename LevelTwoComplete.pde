class LevelTwoComplete{
int in;
PImage bee;
  LevelTwoComplete(String imageName){
    in=0;
    this.bee = loadImage(imageName);
  }

  void draw(){
    background(#ffde70);
    image(bee, 300, 200, 200, 200);
    fill(#a67107);
    textSize(27);
    text("Level Two complete, hit 'k' to continue to level three", 30, 200);
  }
  
  void keyPressed(){
    if(key == 'k'){
    gameStage = 5;
    levelThree = new LevelThree();
    }
  }

  void mouseClicked(){
  
  }

}
