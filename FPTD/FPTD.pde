import ddf.minim.*; //Imports the audio engine.
AudioPlayer bgm;
Minim minim; //Creates an object for audio player.

ArrayList <Fireball> fireballs = new ArrayList <Fireball>  (); //Creates an arraylist for the Fireball weapon.
ArrayList <Projectile> projectiles = new ArrayList <Projectile> (); //Creates an array list for the projectile weapon, as a superset of fireball.
ArrayList <Tower> towers = new ArrayList <Tower> (); //Creates an arraylist for Towers.
ArrayList <Enemy> enemies = new ArrayList<Enemy>(); //Creates an arraylist for enemies.
int baseMouseX = width/2; //Sets the default mouse coordinates (this line and next)
int baseMouseY = height/2;//to be half of the total window height and width, setting it dead center.
Player plr; //Creates a player of player.
boolean[] keys = new boolean[255]; //Array for booleans.

boolean[][] towered = new boolean[31][31];
ArrayList<Enemy>[][] grid = new ArrayList<Enemy>[31][31];


void setup(){
 size(displayWidth, displayHeight,P3D); //Sets default window height, and tells processing it's a 3D environment.
 
   minim = new Minim(this); //Creates a minim player for this class.
   bgm = minim.loadFile ("The Cannery.mp3",5048); //Loads the file for minim.
}


void draw(){
   if (!bgm.isPlaying ()) { //loop intro music
      bgm.rewind (); //Sets it to beginning. 
      bgm.play (); //Plays The Cannery.mp3.  By Incomptech.
    }
  frameRate(60); //Sets framerate to 60.
  background(0,0,255); //Sets default color.
  
  translate(300,.95*height,-500); //Moves it below.
  fill(0,255,0); //Fills the rest of the screen with a color.

  box(310000,310,310000);  //Creates the floor.
  
 plr.update(0); //Updates the plr method.
for(int i=projectiles.size(); i>0; i--){
 Projectile myproj = projectiles.get(i);
 myproj.make(); 
 
}

for(int i= towers.size(); i>0; i--){
 Tower mytow = towers.get(i); 
 mytow.make();
  
  
  for (Enemy e : enemies) {
    xValue = (e.pos.x + 5000 * sign(e.pos.x)) / 10000;
    yValue = (e.pos.y + 5000 * sign(e.pos.y)) / 10000;
    if (abs(xValue) > 15)
      xValue = 15 * sign(xValue);
    if (abs(yValue) > 15
      yValue = 15 * sign(yValue);
    grid[xValue][yValue].add(e);
  }
  
  plr.collide();
  
  for (int i = -15; i < 16; i++)     //x
    for (int j = -15; j < 16; j++)   //y
      if (!towered[i][j])            //Only checks free squares
        for (Enemy e : grid[i][j]) {
          for (Tower t : towers)
            e.collide(t);
          for (int k = -1; i < 2; k++)
            for (int l = -1; i < 2; l++)
              if (i + k > -16 && i + k < 16 && j + l > -16 && j + l < 16)
                if (!towered[i + k][j + l])
                  for (Enemy f : grid[i + k][j + l])
                    e.collide(f);
        }
}

}

static int abs(int num) {
  return num < 0 ? num * -1 : num;
}

static int sign(int num) {
  return num < 0 ? -1 : 1;
}

static int dist(PVector one, PVector two) {
  return PVector.sub(one, two).mag();
}
