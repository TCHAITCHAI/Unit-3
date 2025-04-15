color toolbar = #F5B53E;
color black = #000000;
color white = #FFFFFF;
color red = #FF0000;
color green = #00FF00;
color blue = #0000FF;
color yellow = #FFFF00;
color orange = #FF8000;
color purple = #800080;
color cyan = #00FFFF;
color pink = #FFC0CB;
color brown = #A52A2A;
color gray = #808080;
color selectedColor;

void setup(){
  size(1500,900);
  background(255);
  stroke(black);
  selectedColor = black;
}

void draw(){
  //toolbar 
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
  strokeWeight(5);
  
  //buttons
  //black
  tactile(50,50,25);
  fill(black);
  circle(50,50,50);
  
  //white
  if (dist(50,120,mouseX,mouseY) < 25){
    stroke(black);
  } else {
    stroke(white);
  }
  fill(white);
  circle(50,120,50);
  
  //yellow
  tactile(200,50,25);
  fill(yellow);
  circle(200,50,50);
  
  //green
  tactile(200,120,25);
  fill(green);
  circle(200,120,50);
  
  //orange
  tactile(275,50,25);
  fill(orange);
  circle(275,50,50);
  
  //blue
  tactile(275,120,25);
  fill(blue);
  circle(275,120,50);
  
  //red
  tactile(350,50,25);
  fill(red);
  circle(350,50,50);
  
  //cyan
  tactile(350,120,25);
  fill(cyan);
  circle(350,120,50);
  
  //purple
  tactile(425,50,25);
  fill(purple);
  circle(425,50,50);
  
  //pink
  tactile(500,50,25);
  fill(pink);
  circle(500,50,50);
  
  
  
  //indicator
  stroke(black);
  fill(selectedColor);
}

void tactile (int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY) < r){
     stroke(white);
  } else {
     stroke(black);
  }
}//end tactile====================================
