class Horn{
  int y;
  int x;
  int i;
  int o;
  PImage horns;
  Horn(int x, int y, int i){
  this.x = x;
  this.y = y;
  this.i = i;
 // this.o = o;
  horns = loadImage("horn.png");
  }
  void draw(){
  imageMode(CENTER);
  image(horns, x, y, i, i);
  fill(255, o);
  rect(x-8, y-1, 8, 10);
  imageMode(CORNER);
  //40, 40
  }


}
