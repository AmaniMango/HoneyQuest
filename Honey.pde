class Honey{
  //this class is not done :/
  int x;
  int y;
  int w;
  int h;
  PImage honey;

  Honey (int x, int y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    honey = loadImage("honey.png");
  }
//amani's note to self: fix file name
  void draw(){
    rect(x, y, w, h);
    image(honey, x-8, 250, 80, 100);
  }











}
