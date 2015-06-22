import ddf.minim.*; //Imports the audio engine.

ArrayList <Fireball> fireballs = new ArrayList <Fireball>  (); //Creates an arraylist for the Fireball weapon.
ArrayList <Projectile> projectiles = new ArrayList <Projectile> (); //Creates an array list for the projectile weapon, as a superset of fireball.
ArrayList <Tower> towers = new ArrayList <Tower> (); //Creates an arraylist for Towers.
ArrayList <Enemy> enemies = new ArrayList<Enemy>(); //Creates an arraylist for enemies.
int baseMouseX = width/2; //Sets the default mouse coordinates (this line and next)
int baseMouseY = height/2;//to be half of the total window height and width, setting it dead center.
Player plr = new Player(); //Creates a player of player.
boolean[] keys = new boolean[255]; //Array for booleans.

boolean[][] towered = new boolean[31][31];
ArrayList<Enemy>[][] grid = new ArrayList[31][31];
float xValue, yValue;

void setup(){
 size(displayWidth, displayHeight,P3D); //Sets default window height, and tells processing it's a 3D environment.
 plr.setupPlayer();
 enemies.add(new BasicEnemy());
baseMouseX = width/2;baseMouseY = height/2;
//AirTower t = new AirTower(10000,0);
}


void draw(){
  translate(plr.location.x, plr.location.y, plr.location.z);
  frameRate(60); //Sets framerate to 60.

  background(0,0,255); //Sets default color.
  fill(0,255,0);
  textSize(20);
 text("Press 1 for Airtower, 2 for Firetower, 3 for Earthtower, and E to cast fireball.",0,20);

  translate(300,.95*height,-500); //Moves it below.
  fill(0,255,0); //Fills the rest of the screen with a color.

  box(310000,310,310000);  //Creates the floor.

  translate(-300,-.95*height, -500);
 plr.update(0); //Updates the plr method.
for(int i=projectiles.size()-1; i>=0; i--){
 Projectile myproj = projectiles.get(i);
 myproj.make(); 
 System.out.print("q");
}
for(Fireball f : fireballs){
f.make();
}


for(Tower t : towers){
 t.make();
 t.findNearest();
 t.shoot();
 System.out.print("r");
}
for(int i = 0; i < 31; i++)
 {
   for(int j = 0; j < 31; j++)
   {
     grid[i][j] =  new ArrayList<Enemy>();
   }
 }

   System.out.print(enemies.toString());
  for (Enemy e : enemies) {
    xValue = (e.pos.x + 5000 * sign(e.pos.x)) / 10000;
    yValue = (e.pos.y + 5000 * sign(e.pos.y)) / 10000;
    if (abs(xValue) > 15)
      xValue = 15 * sign(xValue);
    if (abs(yValue) > 15)
      yValue = 15 * sign(yValue);
       System.out.print("s");
    grid[(int)xValue + 15][(int)yValue + 15].add(e);
    e.make();
  }
  System.out.print(keys['s']);
  //plr.collide();
  /*
  for (int i = -15; i < 16; i++)     //x
    for (int j = -15; j < 16; j++)   //y
      if (!towered[i + 15][j+15])            //Only checks free squares
        for (Enemy e : grid[i+15][j+15]) {
          for (Tower t : towers)
            e.collide(t);
          for (int k = -1; i < 2; k++)
            for (int l = -1; i < 2; l++)
              if (i + k > -16 && i + k < 16 && j + l > -16 && j + l < 16)
                if (!towered[i + k+15][j + l+15])
                  for (Enemy f : grid[i + k+15][j + l+15])
                    e.collide(f);
                    
        }
        */
        
 rotateX(plr.look.y);
 rotateY(plr.look.x);

}
void keyPressed()
{
  if(key != CODED)
  {
    keys[key] = true;
  }
}
void keyReleased()
{
  if(key != CODED)
  {
    keys[key] = false;
    
  }
}
static float sign(float num) {
  return num < 0 ? -1 : 1;
}

static float dist(PVector one, PVector two) {
  return PVector.sub(one, two).mag();
}
