
void setup(){
 size(displayWidth, displayHeight,P3D);
 
  
}


void draw(){
  frameRate(60); //High FPS is a good thing.
  background(0,0,255);
 Player.update();
 
 fill(0,255,0);
box(900000,30,900000); 
}




