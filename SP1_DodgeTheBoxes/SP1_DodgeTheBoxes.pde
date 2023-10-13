//Boxes box1 = new Boxes(20.0, 100.0, random(1,3), 100);
//Boxes box2 = new Boxes(20.0, 200.0, random(1,3), 100);
Boxes[] box =  new Boxes[4];

// ----- Player -----
Player player1 = new Player(200, 370, 10.0, 0);

void setup(){
  size(400, 400);
  smooth();
  for (int i = 0; i < box.length; i ++ ) {
      box[i] = new Boxes(40.0, (80.0 + (i * 75)), random(1,3), 125);
    } 
}

void draw() {
  background(255);
  // ----- TOP / WIN ZONE -----
  fill(0, 200, 0);
  noStroke();
  rectMode(CENTER);
  rect(200, 0, 400, 50);
  
  // ----- START ZONE -----
  fill(50, 50, 100);
  noStroke();
  rect(200, 400, 400, 50);
  
     
  // ----- Boxes ----- 
  for (int i = 0; i < box.length; i++ ) {
    box[i].Move();
    box[i].Display();
    //println("box" + box[i] + " "  + box[i].getBoxXPos());
    fill(200,200,200);
    
    if( dist(player1.getPlayerXPos(), player1.getPlayerYPos(), (box[i].getBoxXPos() - 0), (box[i].getBoxYPos())) < player1.getPlayerRadius()){
      println("You lost");
      
      player1.setPointCounter(0);
      player1.setPlayerXPos(200);
      player1.setPlayerYPos(370);
    }
  } 
  
  // ----- Player -----
  player1.Display();
  player1.PointCounter();
  
  
  // ----- Player Points -----
  textSize(24);
  fill(255);
  text("points: " + player1.GetPointCounter(), 300, 20);
    
  // ----- Game -----

  
  
}

void keyPressed() {
  player1.Move();
}
