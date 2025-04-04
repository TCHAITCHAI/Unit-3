
//pallette of colors (all are green)
color tea  = #DBF4AD;
color light  = #A9E190;
color citron  = #cdc776;
color moss  = #A5AA52;
color olive  = #767522;
color white  = #FFFFFF;
color selectedColor;
int toggle;

void setup() {
  size(800,600);
  strokeWeight(5);
  stroke(olive);
  toggle = 1;
  selectedColor = moss;
}

void draw() {
  background(tea);
  
  fill(white);
  stroke(olive);
  rect(300,30,200,30);
  
  //buttons
  if(dist(100,100,mouseX,mouseY) < 50) {
    stroke(white);
  } else {
    stroke(olive);
  }
  fill(light);
  circle(100,100,100);
  
  if(dist(100,300,mouseX,mouseY) < 50) {
    stroke(white);
  } else {
    stroke(olive);
  }
  fill(citron);
  circle(100,300,100);
  
  tactile(100,500,50);
  fill(moss);
  circle(100,500,100);
  
  //indicator
  stroke(olive);
  fill(selectedColor);
  square(300,100,400);
  
  if(toggle > 0){
    
    
}
}
//end of draw======================================

void tactile (int x, int y, int r) {
  if(dist(x,y,mouseX,mouseY) < 50) {
    stroke(white);
  } else {
    stroke(olive);
  }
}//end of draw======================================

void mouseReleased(){
 
  {
  if(dist(100,100,mouseX,mouseY) < 50) {
    selectedColor = light;
  }
  
  if(dist(100,300,mouseX,mouseY) < 50) {
    selectedColor = citron;
  }
 
  if(dist(100,500,mouseX,mouseY) < 50) {
    selectedColor = moss;
  }
  if(mouseX > 300 && mouseX < 500 && mouseY > 30 && mouseY < 60);{
    toggle = toggle * -1;
  }
  
}
}
