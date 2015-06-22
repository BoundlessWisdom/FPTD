
void setup(){
 size(displayWidth, displayHeight,P3D);
 
  
}


void draw(){
<<<<<<< Updated upstream
  frameRate(60); //High FPS is a good thing.
  background(0,0,255); //Sets a RGB background color.
 Player.update(); //Calls a player loop upgrade.
=======
  frameRate(60);
  background(0,0,255);
 Player.update();
 Towers.update();
>>>>>>> Stashed changes
 
 fill(0,255,0); //Fills the color of green.
box(900000,30,900000); //Creates a box at the world coordinates.
}




