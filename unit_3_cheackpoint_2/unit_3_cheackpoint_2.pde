color black = #000000;
float sliderX;
float thickness;

void setup(){
  size(800,600);
  strokeWeight(5);
  stroke(black);
  fill(black);
  sliderX = 400;
  thickness = 0;
}

void draw(){
  background(255);
  thickness = map(sliderX,100,700,0,15);
  strokeWeight(thickness);
  line(100,300,700,300);
  circle(sliderX,300,50);
}

void mouseDragged(){
  controlSlider();
}

void controlSlider(){
  if(mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325){
    sliderX = mouseX;
  }
  

}
    
