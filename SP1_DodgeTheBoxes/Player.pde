class Player{
  float xpos;
  float ypos;
  float speed;
  int points;
  int radius;
  
  
  Player(float xpos, float ypos, float speed, int points ){
    this.xpos = xpos;
    this.ypos = ypos;
    this.speed = speed;
    this.points = points;
    this.radius = 20;
  }
  
  void Display(){
    fill(200,200,200);
    ellipse(xpos, ypos, radius, radius);
  }
  
  
  void Move(){    
    if (key == CODED) {
      if (keyCode == UP && ypos > 0) {
        this.ypos = ypos - speed ;
      } else if (keyCode == DOWN && ypos < 400) {
        this.ypos = ypos + speed;
      } else if (keyCode == RIGHT && xpos < 400) {
        this.xpos = xpos + speed;
      } else if (keyCode == LEFT && xpos > 0) {
        this.xpos = xpos - speed;
      } 
    }
  }
  
  void PointCounter() {
    if (ypos <= 20) {
      xpos = 200;
      ypos = 370;
      points++;
    }
  }
  
  public int GetPointCounter(){
    return points;
  }
  
  float getPlayerRadius(){
    return radius;
  }
  
  float getPlayerYPos(){
    return ypos;
  }
  
  float getPlayerXPos(){
    return ypos;
  }
  
  int points(){
    return points;
  }
  
  void setPointCounter(int points) {
    this.points = points;
  }
  
  void setPlayerXPos(int xpos) {
    this.xpos = xpos;
  }
  
  void setPlayerYPos(int ypos) {
    this.ypos = ypos;
  }
}
