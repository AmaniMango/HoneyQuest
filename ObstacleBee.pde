class ObstacleBee{
int x;
int y;
PImage bee;
  ObstacleBee(int x, int y){
  this.x = x;
  this.y = y;
  bee = loadImage("bee.png");
  }
  
  
  void draw(){
     fill(100, 143, 145);
     y = y - 5;
     image(bee, x, y, 25, 25);
     if(y<0){
       y = 600;
     }
  }
















}
