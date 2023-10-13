class Boxes{
  float xpos;
  float ypos;
  float speed;
  float w;
  
  Boxes(float xpos, float ypos, float speed, float w){
    this.xpos = xpos;
    this.ypos = ypos;
    this.speed = speed;
    this.w = w;
  }
  
  void Display(){
    fill(0);
    noStroke();
    rectMode(CENTER);
    rect( xpos, ypos, w, 25);
  }
  
  void Move(){
    this.xpos = xpos + speed;
    if ((xpos > width) || (xpos < 0)){
      speed = speed * -1;
    }
    
  }
  
  float getBoxXPos(){
    return xpos;
  }
  
  float getBoxYPos(){
    return ypos;
  }
  
  float getBoxW(){
    return w;
  }
}
