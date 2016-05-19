//row 1 values
int x1 = 0;
int y1 = 80;
float l1 = 67.5;
int width1 = 78;
int colorwhenpressed = 220;
boolean numberisvisible = false;
int number7 = 7;
int coloredbutton = #F5942C;
//setup
void setup() {
  //Calculator buttons layed out
  size(270, 390);

  //Top part of the calculator where numbers will be displayed
  background(100);
}

void draw() {

  fill(colorwhenpressed);
  //adjusting the stroke weight so that it doesn't clunky
  strokeWeight(.5);

  //Buttons
  //First row of four
  rect(x1, y1, l1, width1);
  fill(220);
  rect(l1, y1, l1, width1);
  rect(135, 80, 67.5, 78);

  //Orange button
  fill(coloredbutton);
  rect(202.5, 80, 67.5, 78);

  //Resetting the fill for the second row
  fill(220);

  //Second row

  //Changing it to 160 sent the buttons down a bit for some reason. I settled on 158
  rect(0, 158, 67.5, 78);
  rect(67.5, 158, 67.5, 78);
  rect(135, 158, 67.5, 78);

  //Orange button
  fill(coloredbutton);
  rect(202.5, 158, 67.5, 78);


  //Resetting the fill for the second row
  fill(220);

  //Changing it to 160 sent the buttons down a bit for some reason. I settled on 158
  rect(0, 236, 67.5, 78);
  rect(67.5, 236, 67.5, 78);
  rect(135, 236, 67.5, 78);

  //Orange button
  fill(coloredbutton);
  rect(202.5, 236, 67.5, 78);

  //Had to decrease the y value

  //Resetting the fill for the second row
  fill(220);

  //Changing it to 160 sent the buttons down a bit for some reason. I settled on 158
  rect(0, 314, 135, 78);
  // rect(67.5, 314, 67.5, 78);
  rect(135, 314, 67.5, 78);

  //Orange button
  fill(coloredbutton);
  rect(202.5, 314, 67.5, 78);

  //Numbers on the actual buttons
  fill(0);
  PFont font;
  font = loadFont("Times.vlw");
  textFont(font, 40);

  //row 1
  text("7", 20, 130);
  text("8", 90, 130);
  text("9", 160, 130);

  fill(255);
  //To properly center add 65 to the numbers on the orange rather than 70
  text("÷", 227, 130);

  //row 2

  fill(0);
  text("4", 20, 210);
  text("5", 90, 210);
  text("6", 160, 210);

  fill(255);
  //To properly center add 65 to the numbers on the orange rather than 70
  text("×", 226, 208);

  //row 3

  fill(0);
  text("1", 20, 290);
  text("2", 90, 290);
  text("3", 160, 290);

  fill(255);
  //To properly center add 65 to the numbers on the orange rather than 70
  text("+", 226, 288);

  //row 4

  fill(0);
  text("0", 20, 370);
  text("=", 160, 366);

  fill(255);
  //To properly center add 65 to the numbers on the orange rather than 70
  text("-", 230, 366);
  if (numberisvisible) {
    text(""+number7, 225, 54);
  }
}

void mousePressed() {
  // Detects if the 7 on the screen is pressed
  if (mouseX>x1 && mouseX <x1+width1 && mouseY>y1 && mouseY <y1+width1) {
    println("test7");
    fill(255);
    numberisvisible = true;
  } 
  //Detects if the 8 on the screen is pressed
  if (mouseX>l1 && mouseX <l1+width1 && mouseY>y1 && mouseY <y1+width1) {
    println("test8");
    fill(255);
  }
}
void keyPressed() {
  if (key == 'b') {
    coloredbutton = #00B9FF;
  }
  if (key == 'o') {
    coloredbutton = #F5942C;
  }
}