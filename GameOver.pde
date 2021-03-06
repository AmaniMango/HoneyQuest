class GameOver {
  //instance variables
  
  PImage over;
  GameOver() {  
    this.over = loadImage("overGame.jpg");
  }
  
  void draw() {
    background(#ff0000);
    image(over, 0, 0, 800, 600);
    fill(255);
    textSize(27);
    text("Hit 'k' to restart", 300, 350);
  }
  
  void keyPressed() {
    //just go back to intro screen if 'k' is pressed
    if(key == 'k'){
    gameStage = 0;
    intro = new Intro();
    }
  }
  void mouseClicked(){
  
  }
}
  
  
