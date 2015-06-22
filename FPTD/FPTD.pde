ArrayList <Projectile> projectiles = new ArrayList <Projectile> ();
ArrayList <Towers> towers = new ArrayList <Towers> ();
int basemousex = width/2;
int basemousey = height/2;
Player plr;

void setup(){
 size(displayWidth, displayHeight,P3D);
 
  
}


void draw(){
  frameRate(60);
  background(0,0,255);
   
  translate(300,.95*height,-500);
  fill(0,255,0);

  box(300000,300,300000); 
  
 Player.update();
for(int i=projectiles.size(); i>0; i--){
 Projectile myproj = projectiles.get(i);
}

for(int i= towers.size(); i>0; i--){
 Tower mytow = towers.get(i);
mytow.make(); 
}

}
