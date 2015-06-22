int basemousex = width/2;
int basemousey = height/2;


void setup(){
 size(displayWidth, displayHeight,P3D);
 
  
}


void draw(){
  frameRate(60);
  background(0,0,255);
 Player.update();
 Towers.update();

}




