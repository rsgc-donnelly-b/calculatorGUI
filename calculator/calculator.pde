//setup
 void setup() {
   //Calculator buttons layed out
   size(270, 390);
   
   //Top part of the calculator where numbers will be displayed
   background(100);
 }
 
 void draw() {
   fill(200);
   //adjusting the stroke weight so that it doesn't clunky
   strokeWeight(.5);
   
   //Buttons
   //First row of four
   rect(0, 80, 67.5, 78);
   rect(67.5, 80, 67.5, 78);
   rect(135, 80, 67.5, 78);
   
   //Orange button
   fill(#F5942C);
   rect(202.5, 80, 67.5, 78);
   
   //Resetting the fill for the second row
   fill(200);
   
   //Second row
   
   //Changing it to 160 sent the buttons down a bit for some reason. I settled on 158
   rect(0, 158, 67.5, 78);
   rect(67.5, 158, 67.5, 78);
   rect(135, 158, 67.5, 78);
   
   //Orange button
   fill(#F5942C);
   rect(202.5, 158, 67.5, 78);
   
   //Resetting the fill for the second row
   fill(200);
   
   //Changing it to 160 sent the buttons down a bit for some reason. I settled on 158
   rect(0, 236, 67.5, 78);
   rect(67.5, 236, 67.5, 78);
   rect(135, 236, 67.5, 78);
   
   //Orange button
   fill(#F5942C);
   rect(202.5, 236, 67.5, 78);
   
   //Had to decrease the y value
 }