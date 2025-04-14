color toolbar = #F5B53E;
color black = #000000;
color white = #FFFFFF;

void setup(){
  size(1500,900);
  background(255);
  stroke(black);
  selectedColor = black
}

void draw(){
  noStroke();
  fill(toolbar);
  rect(0,0,1500,170);
  stroke(black);
  strokeWeight(8);
  strokeCap(ROUND);
  fill(black);
  line(0,3,1500,3); 
  line(0,170,1500,170);
  line(3,0,3,170);
  line(1497,0,1497,170);
  
  //indicator
  stroke(black);
  fill(selectedColor
}

void tactile (int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY) < r){
    stroke(white);
  } else {
    stroke(black);
  }
}//end tactile====================================
