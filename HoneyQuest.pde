int gameStage;
//Game levels, in no particular order
GameOver gameOver;
GameWin gameWin;
Intro intro;
LevelOne levelOne;
LevelOneComplete levelOneComplete;
LevelTwo levelTwo;
LevelTwoComplete levelTwoComplete;
LevelThree levelThree;
void setup() {
  size(800, 600);
  gameStage = 0;
  intro = new Intro();
}

void draw() {
  switch(gameStage) {
    case 0:  //intro rules
      intro.draw();
    break;
    case 1:  //level 1
      levelOne.draw();
    break;
    case 2:  
      levelOneComplete.draw();
    break;
    case 3:  //level 2
      levelTwo.draw();
    break;
    case 4: //level2 Com  
      levelTwoComplete.draw();
    break;
    case 5:
      levelThree.draw();
     break;
    case 6:  //game win
      gameWin.draw();
    break;
    case 7:  //game over
      gameOver.draw();
    break;
  }
}

void keyPressed() {
  switch(gameStage) {
    case 0:  //intro rules
      intro.keyPressed();
    break;
    case 1:  //level 1
      levelOne.keyPressed();
    break;
    case 2: //continue
      levelOneComplete.keyPressed();
    break;
    case 3:  //level 2
      levelTwo.keyPressed();
    break;
    case 4:
      levelTwoComplete.keyPressed();
     break;
     case 5:
     levelThree.keyPressed();
     break;
    case 6:  //game win
      gameWin.keyPressed();
    break;
    case 7:  //game over
      gameOver.keyPressed();
    break;
  }  
}
//mousClicked()
void mouseClicked() {
  switch(gameStage) {
    case 0:  //intro rules
      intro.mouseClicked();
    break;
    case 1:  //level 1
      levelOne.mouseClicked();
    break;
    case 2: //continue
      levelOneComplete.mouseClicked();
    break;
    case 3:  //level 2
      levelTwo.mouseClicked();
    break;
    case 4:
      levelTwoComplete.mouseClicked();
      break;
    case 5:
      levelThree.mouseClicked();
    break;
    case 6:  //game win
      gameWin.mouseClicked();
    break;
    case 7:  //game over
      gameOver.mouseClicked();
    break;
  }  
}
