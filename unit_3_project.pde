color toolbar = #F5B53E;
color black = #000000;
color white = #FFFFFF;
color red = #FF0000;
color green = #00FF00;
color blue = #0000FF;
color yellow = #FFFF00;
color orange = #FF8000;
color darkgreen = #006400;
color cyan = #00FFFF;
color pink = #FFC0CB;
color brown = #A52A2A;
color gray = #808080;
color purple = #4B0082;
color selectedColor;

float sliderX;
float thickness;

void setup(){
  size(1500,900);
  background(255);
  stroke(black);
  selectedColor = white;
  sliderX = 750;
  thickness = 0;
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
  
  //slider
  thickness = map(sliderX,600,900,1,10);
  
  strokeWeight(thickness);
  line(600,85,900,85);
  circle(sliderX,85,30);
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
  
  //gray
  if (dist(115,85,mouseX,mouseY) < 25){
     stroke(white);
  } else {
     stroke(gray);
  }
  
  fill(gray);
  circle(115,85,50);
  
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
  
  //darkgreen
  tactile(275,120,25);
  fill(darkgreen);
  circle(275,120,50);
  
  //red
  tactile(350,50,25);
  fill(red);
  circle(350,50,50);
  
  //blue
  tactile(350,120,25);
  fill(blue);
  circle(350,120,50);
  
  //brown
  tactile(425,50,25);
  fill(brown);
  circle(425,50,50);
  
  //cyan
  tactile(425,120,25);
  fill(cyan);
  circle(425,120,50);
  
  //purple
  tactile(500,50,25);
  fill(purple);
  circle(500,50,50);
  
  //pink
  tactile(500,120,25);
  fill(pink);
  circle(500,120,50);
  
  //indicator
  strokeWeight(5);
  stroke(black);
  fill(selectedColor);
  square(950,50,50);
  strokeWeight(thickness);
 

  
  //end of draw================================
}

void tactile (int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY) < r){
     stroke(white);
  } else {
     stroke(black);
  }
}//end tactile====================================

void mouseDragged(){
  controlSlider();
  line(pmouseX,pmouseY,mouseX,mouseY);
  }

void mouseReleased(){
  controlSlider();
  if (dist(50,120,mouseX,mouseY) < 25){
    selectedColor = white;
  }
  
  if (dist(50,50,mouseX,mouseY) < 25){
    selectedColor = black;
  }
}

void controlSlider(){
  if (mouseX > 600 && mouseX < 900 && mouseY < 110 && mouseY > 60){
    sliderX = mouseX;
  }
}



// ----- Mouse Moved Handler -----
// Add this function (if not already present) to update coordinates without leaving a trail:

  
