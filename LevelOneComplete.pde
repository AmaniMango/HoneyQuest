class LevelOneComplete{
  Horn h; 

  LevelOneComplete(){
  this.h= new Horn(400, 300, 300);
  }
  void draw(){
    background(#ffde70);
    h.draw();
    h.o = 0;
    fill(#a67107);
    textSize(27);
    text("Level One complete, hit 'k' to continue to level two", 30, 200);
  }

  void keyPressed() {
    if (key == 'k'){
    gameStage = 3;
    levelTwo = new LevelTwo();  
    }
  }
  void mouseClicked(){

  }
}
