class Bear{
  int xpos;
  int ypos;

  Bear(int xpos, int ypos){
    this.ypos = ypos;
    this.xpos = xpos;
  }
  void draw(){
    pushMatrix();
    translate(xpos-350*.4, ypos-210*.4);
    scale(.4);
    noStroke();
    fill(#855126);
    rect(270,230,35,55,20);
    rect(270,270,40,20,20);
    fill(#855126);
    rect(340,230,35,55,20);
    rect(340,270,40,20,20);
    fill(#9c5f2d);
    rect(250,140,150,110,60);
    rotate(radians(-20)); 
    ellipse(170,250,30,25);
    rotate(radians(-30));
    rect(90,370,80,65,50);
    rotate(radians(40));
    rect(360,210,50,30,20);
    fill(0);
    rect(405,215,5,15,10);
    fill(#9c5f2d);
    ellipse(370,185,20,20);
    fill(#f08dc7);
    ellipse(370,185,10,10);
    fill(255);
    ellipse(380,210,10,15);
    fill(0);
    ellipse(383,210,5,10);
    arc(395,233,10,10,0,PI);
    rotate(radians(10));
    fill(#9c5f2d);
    rect(280,230,35,55,20);
    rect(280,270,40,20,20);
    rect(350,230,35,55,20);
    rect(350,270,40,20,20);
    fill(255, 0, 0);
    popMatrix();
    if(xpos <0){
      xpos = 10;
    }
    if(ypos >575){
      ypos = 575;
    }
    if(ypos < 25){
      ypos = 25;
    }
  }
  
  void keyPressed(){
    if (key == 'w'){
      ypos = ypos - 5;
    }
    if (key == 's'){
      ypos = ypos + 5;
    }
    if (key == 'a'){
      xpos = xpos - 5;
    }
    if (key == 'd'){
      xpos = xpos + 5;
    }
  }
  
  boolean hitObstacle(float x, float y){
    if(dist(xpos, ypos, x, y)< 40){
    return true;
    }
    else{
    return false;
    }
  }









}
