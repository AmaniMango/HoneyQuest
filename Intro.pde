class Intro {
//instance variables
  //PImage bear;
  PImage in;

   Intro() {  
   //this.bear = loadImage(imageName);
   in = loadImage("introBackground.png");
  }
  
  void draw() {
    background(80);
    fill(0);
    image(in, 0, 0, 800, 600);
    fill(#9c5d36);
    textSize(20);
    text("Use WASD to move", 305, 420);
  }
  
  void keyPressed() {
    //just go back to levelOne if key is pressed
    gameStage = 1;
    levelOne = new LevelOne();     
  }
  void mouseClicked(){
  
  }
}
