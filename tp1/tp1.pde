PImage objeto;

void mouseClicked(){
println(mouseX, mouseY);
}
void setup(){
  size(800,400);
  background(40, 37, 80);
  objeto= loadImage("kitty.jpg");
}
void draw(){
  fill(138, 137, 177);
  rect(400, 260, 400, 260);
  stroke(150);
  strokeWeight(15);
  line(400, 350, 800, 350);
  strokeWeight(10);
  line(400, 244, 800, 235);
  stroke(200);
  line(400, 263, 800, 257);

  noStroke();
  
  image(objeto,0,0,400,400);
  
  fill(0, 153, 0); 
  triangle(520, 70, 540, 50, 560, 70);
  triangle(644, 70, 664, 50, 684, 70);
  triangle(546, 64, 560, 67, 560, 43);
  triangle(546, 64, 567, 67, 582, 49);
  
  strokeWeight(0);
  fill(196, 13, 43);
  circle(542, 101, 90);
  circle(664, 107, 90);
  
  fill(0, 153, 0); 
  triangle(559, 74, 575, 68, 564, 52);
  triangle(633, 70, 651, 78, 656, 46);
  triangle(641, 72, 670, 90, 671, 66);
  triangle(674, 93, 691, 116, 699, 104);
  
  fill(0);
  circle(531, 79, 5);
  circle(510, 82, 5);
  circle(505, 109, 5); 
  circle(544, 64, 5);
  circle(675, 90, 5);
  circle(675, 71, 5); 
  circle(701, 120, 5);
  circle(697, 99, 5);  
  
  stroke(255);
  strokeWeight(30);
  line(488, 263, 564, 227); 
  line(651, 230, 726, 238);
  noStroke();
  
  fill(196, 13, 50);
  circle(600, 265, 150);
  fill(255);
  ellipse(600, 153, 200, 175); 
  
  fill(0, 153, 0);
  triangle(529, 89, 559, 72, 558, 89);
  triangle(516, 100, 529, 89, 523, 111);
    
  fill(0);
  ellipse(555, 167, 25, 40);
  ellipse(644, 167, 25, 40); 
  
  fill(231, 199, 51);
  ellipse(598, 194, 25, 17);
  
  stroke(0);
  strokeWeight(2);
  line(503, 157, 528, 165);
  line(505, 170, 528, 172);
  line(508, 182, 528, 179);
                            
  line(667, 164, 696, 158);
  line(667, 171, 693, 170);
  line(667, 178, 690, 182);
  noStroke();
  
  fill(255);
  circle(561, 329, 55);
  circle(640, 329, 55);
  circle(484, 265, 40);
  circle(729, 238, 40);
}
