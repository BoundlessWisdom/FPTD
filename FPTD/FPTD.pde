ArrayList <Projectile> projectiles = new ArrayList <Projectile> ();
ArrayList <Tower> towers = new ArrayList <Tower> ();
ArrayList <Enemy> enemies = new ArrayList<Enemy>();
int baseMouseX = width/2;
int baseMouseY = height/2;
Player plr;
boolean[] keys = new boolean[255];
void setup(){
 size(displayWidth, displayHeight,P3D);
 
  
}


void draw(){
  frameRate(60);
  background(0,0,255);
   
  translate(300,.95*height,-500);
  fill(0,255,0);

  box(310000,310,310000); 
  
 plr.update(0);
for(int i=projectiles.size(); i>0; i--){
 Projectile myproj = projectiles.get(i);
 myproj.make();
 
}

for(int i= towers.size(); i>0; i--){
 Tower mytow = towers.get(i); 
}

}
