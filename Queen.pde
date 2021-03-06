class Queen{
  float x, y;
  float ox, oy;
  
  Queen(float x, float y){
    this.x = x;
    this.y = y;
    this.ox = x;
    this.oy = y;
  }
  
  void draw(){
     pushMatrix();
     //"100=radius of circles
     //1000.2= speed"
     //translate(x + cos(millis() / 500.2) * 200,y + sin(millis() / 1000.2) * 240);
     x = ox +cos(millis() / 500.2) * 200;
     y = oy +sin(millis() / 1000.2) * 240;
     translate(x - 130, y - 90);
     scale(.6);
     stroke(0);
     strokeWeight(2);
     rotate(radians(45));
     fill(#f0fdff);
     ellipse(190,-100,100,25);
     rotate(radians(-15));
     ellipse(208,-30,100,25);
     rotate(radians(-30));
     fill(#ffeb38);
     ellipse(242,90,30,60);
     fill(0);
     line(244,42,240,30);
     ellipse(240,30,4,4);
     rect(228,83,29,3,18);
     rect(228,93,29,3,18);
     fill(#ffeb38);
     ellipse(250,60,50,30);
     fill(#ba0000);
     ellipse(244,60,10,10);
     fill(#ffeb38);
     rotate(radians(-45));
     ellipse(50,250,100,50);
     fill(0);
     rect(10,234,5,33,18);
     rect(25,228,5,44,18);
     rect(40,226,5,48,18);
     rect(55,226,5,48,18);
     rect(70,228,5,44,18);
     rect(85,234,5,33,18);
     triangle(-20,245,0,258,0,241); 
     fill(255, 0, 0);
     popMatrix();
    }  
}
