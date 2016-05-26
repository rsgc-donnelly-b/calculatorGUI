//First x value
int x1 = 0;
//y value 1
int y1 = 80;
//Length 1
float l1 = 67.5;
//Width 1
int width1 = 78;
int colorwhenpressed = 220;
int coloredbutton = #F5942C;
int x2 = 135;
float x3 = 202.5;
int y2 = 158;
int y3 = 236;
int y4 = 314;

String LCD = "";

float memoryAddress1 = 0;
float memoryAddress2 = -1;
int operator = 0;

//setup
void setup() {
  //Calculator buttons layed out
  size(270, 390);

  //Top part of the calculator where numbers will be displayed
}

void draw() {


  background(100);

  textAlign(LEFT);
  fill(colorwhenpressed);
  //adjusting the stroke weight so that it doesn't clunky
  strokeWeight(.5);

  //Buttons
  //First row of four
  rect(x1, y1, l1, width1);
  fill(220);
  rect(l1, y1, l1, width1);
  rect(x2, y1, l1, width1);

  //Orange button
  fill(coloredbutton);
  rect(x3, y1, l1, width1);

  //Resetting the fill for the second row
  fill(220);

  //Second row

  //Changing it to 160 sent the buttons down a bit for some reason. I settled on 158
  rect(x1, y2, l1, width1);
  rect(l1, y2, l1, width1);
  rect(x2, y2, l1, width1);

  //Orange button
  fill(coloredbutton);
  rect(x3, y2, l1, width1);


  //Resetting the fill for the second row
  fill(220);

  //Changing it to 160 sent the buttons down a bit for some reason. I settled on 158
  rect(x1, y3, l1, width1);
  rect(l1, y3, l1, width1);
  rect(x2, y3, l1, width1);

  //Orange button
  fill(coloredbutton);
  rect(x3, y3, l1, width1);

  //Had to decrease the y value

  //Resetting the fill for the second row
  fill(220);

  //Changing it to 160 sent the buttons down a bit for some reason. I settled on 158
  rect(x1, y4, x2, width1);
  rect(x2, y4, l1, width1);

  //Orange button
  fill(coloredbutton);
  rect(x3, y4, l1, width1);

  //Numbers on the actual buttons
  fill(0);
  PFont font;
  font = loadFont("HelveticaNeue-Light-48.vlw");
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

  textAlign(RIGHT);
  text(LCD, 250, 54);
}

void mousePressed() {
  //PFont font;
  //font = loadFont("HelveticaNeue-Light-48.vlw");
  //textFont(font, 40);

  //Detects if 0 is pressed
  if (mouseX>x1 && mouseX <l1+width1 && mouseY>y4 && mouseY <y4+width1) {
    println("test0");
    LCD += "0";
    memoryAddress1 *= 10;
  }

  //Detects if 1 is pressed
  if (mouseX>x1 && mouseX <x1+width1 && mouseY>y3 && mouseY <y3+width1) {
    println("test1");
    LCD += "1";
    memoryAddress1 *= 10;
    memoryAddress1 += 1;
  }

  //Detects if 2 is pressed
  if (mouseX>l1 && mouseX <l1+width1 && mouseY>y3 && mouseY <y3+width1) {
    println("test2");
    LCD += "2";
    memoryAddress1 *= 10;
    memoryAddress1 += 2;
  }

  //Detects if 3 is pressed
  if (mouseX>x2 && mouseX <x2+width1 && mouseY>y3 && mouseY <y3+width1) {
    println("test3");
    LCD += "3";
    memoryAddress1 *= 10;
    memoryAddress1 += 3;
  }

  //Detects if 4 is pressed
  if (mouseX>x1 && mouseX <x1+width1 && mouseY>y2 && mouseY <y2+width1) {
    println("test4");
    LCD += "4";
    memoryAddress1 *= 10;
    memoryAddress1 += 4;
  }

  //Detects if 5 is pressed
  if (mouseX>l1 && mouseX <l1+width1 && mouseY>y2 && mouseY <y2+width1) {
    println("test5");
    LCD += "5";
    memoryAddress1 *= 10;
    memoryAddress1 += 5;
  }

  //Detects if 6 is pressed
  if (mouseX>x2 && mouseX <x2+width1 && mouseY>y2 && mouseY <y2+width1) {
    println("test6");
    LCD += "6";
    memoryAddress1 *= 10;
    memoryAddress1 += 6;
  }

  // Detects if 7 is pressed
  if (mouseX>x1 && mouseX <x1+width1 && mouseY>y1 && mouseY <y1+width1) {
    println("test7");
    LCD += "7";
    memoryAddress1 *= 10;
    memoryAddress1 += 7;
  }

  //Detects if 8 is pressed
  if (mouseX>l1 && mouseX <l1+width1 && mouseY>y1 && mouseY <y1+width1) {
    println("test8");
    LCD += "8";
    memoryAddress1 *= 10;
    memoryAddress1 += 8;
  }

  //Detects if 9 is pressed
  if (mouseX>x2 && mouseX <x2+width1 && mouseY>y1 && mouseY <y1+width1) {
    println("test9");
    LCD += "9";
    memoryAddress1 *= 10;
    memoryAddress1 += 9;
  }

  //Detects if addition is pressed
  if (mouseX>x3 && mouseX <x3+width1 && mouseY>y3 && mouseY <y3+width1) {
    println("test+");
    LCD = "";
    memoryAddress2 = memoryAddress1;
    memoryAddress1 = 0;
    operator = 1;
  }

  //Detects if subtraction is pressed
  if (mouseX>x3 && mouseX <x3+width1 && mouseY>y4 && mouseY <y4+width1) {
    println("test-");
    LCD = "";
    memoryAddress2 = memoryAddress1;
    memoryAddress1 = 0;
    operator = 2;
  }

  //Detects if multiplication is pressed
  if (mouseX>x3 && mouseX <x3+width1 && mouseY>y2 && mouseY <y2+width1) {
    println("test*");
    LCD = "";
    memoryAddress2 = memoryAddress1;
    memoryAddress1 = 0;
    operator = 3;
  }

  //Detects if division is pressed
  if (mouseX>x3 && mouseX <x3+width1 && mouseY>y1 && mouseY <y1+width1) {
    println("test/");
    LCD = "";
    memoryAddress2 = memoryAddress1;
    memoryAddress1 = 0;
    operator = 4;
  }

  //Detects if equals is pressed
  if (mouseX>x2 && mouseX <x2+width1 && mouseY>y4 && mouseY <y4+width1) {
    println("test=");
    if (operator == 1) {
      memoryAddress2 = memoryAddress2 + memoryAddress1;
    }
    if (operator == 2) {
      memoryAddress2 = memoryAddress2 - memoryAddress1;
    }
    if (operator == 3) {
      memoryAddress2 = memoryAddress2 * memoryAddress1;
    }
    if (operator == 4) {
      memoryAddress2 = memoryAddress2 / memoryAddress1;
    }
    if (operator == 0) {
      println("No operator choosen");
    } else {
      LCD = Float.toString(memoryAddress2);
      memoryAddress1 = 0;
      memoryAddress2 = -1;
      operator = 0;
    }
  }
}
void keyPressed() {
  //Custom colours - theme
  //blue
  if (key == 'b') {
    coloredbutton = #00B9FF;
  }
  //orange
  if (key == 'o') {
    coloredbutton = #F5942C;
  }
  //red
  if (key == 'r') {
    coloredbutton = #FF0004;
  }
  //green
  if (key == 'g') {
    coloredbutton = #00FF63;
  }

  if (key == 'y') {
    coloredbutton = #E8ED00;
  }
  //#A202DE
  if (key == 'v') {
    coloredbutton = #A202DE;
  }
  if (key == 'n') {
    coloredbutton = 0;
  }
  if (key == 'c') {
    LCD = "";
  }
  //Secondary keyboard functions
  if (key == '0') {
    println("test0");
    LCD += "0";
    memoryAddress1 *= 10;
  }
  if (key == '1') {
    LCD += "1";
    memoryAddress1 *= 10;
    memoryAddress1 += 1;
  }
  if (key == '2') {
    LCD += "2";
    memoryAddress1 *= 10;
    memoryAddress1 += 2;
  }
  if (key == '3') {
    LCD += "3";
    memoryAddress1 *= 10;
    memoryAddress1 += 3;
  }
  if (key == '4') {
    LCD += "4";
    memoryAddress1 *= 10;
    memoryAddress1 += 4;
  }
  if (key == '5') {
    LCD += "5";
    memoryAddress1 *= 10;
    memoryAddress1 += 5;
  }
  if (key == '6') {
    LCD += "6";
    memoryAddress1 *= 10;
    memoryAddress1 += 6;
  }
  if (key == '7') {
    LCD += "7";
    memoryAddress1 *= 10;
    memoryAddress1 += 7;
  }
  if (key == '8') {
    LCD += "8";
    memoryAddress1 *= 10;
    memoryAddress1 += 8;
  }
  if (key == '9') {
    LCD += "9";
    memoryAddress1 *= 10;
    memoryAddress1 += 9;
  }
  if (key == '+') {
    LCD = "";
    memoryAddress2 = memoryAddress1;
    memoryAddress1 = 0;
    operator = 1;
  }
  if (key == '-') {
    LCD = "";
    memoryAddress2 = memoryAddress1;
    memoryAddress1 = 0;
    operator = 2;
  }
  if (key == '*') {
    LCD = "";
    memoryAddress2 = memoryAddress1;
    memoryAddress1 = 0;
    operator = 3;
  }
  if (key == '/') {
    memoryAddress2 = memoryAddress1;
    memoryAddress1 = 0;
    operator = 4;
  }
  if (key == '=') {
    if (operator == 1) {
      memoryAddress2 = memoryAddress2 + memoryAddress1;
    }
    if (operator == 2) {
      memoryAddress2 = memoryAddress2 - memoryAddress1;
    }
    if (operator == 3) {
      memoryAddress2 = memoryAddress2 * memoryAddress1;
    }
    if (operator == 4) {
      memoryAddress2 = memoryAddress2 / memoryAddress1;
    }
    if (operator == 0) {
      println("No operator choosen");
    } else {
      LCD = Float.toString(memoryAddress2);
      memoryAddress1 = 0;
      memoryAddress2 = -1;
      operator = 0;
    }
  }
}