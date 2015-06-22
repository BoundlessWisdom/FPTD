import ddf.minim.*; //This imports the audio libraries.
AudioPlayer bgm;
Minim minim;


ArrayList <Projectile> projectiles = new ArrayList <Projectile> (); //Creates an array list for projectiles.
ArrayList <Tower> towers = new ArrayList <Tower> ();                //Creates a array list for the towers.
ArrayList <Enemy> enemies = new ArrayList<Enemy>();                 //Creates an arraylist for the enemies.
int baseMouseX = width/2;    //Sets default mouse coordinates for x to half the width.
int baseMouseY = height/2;   //Sets default mouse coordinates for y to half the height.
Player plr; //Creates a player of player.
boolean[] keys = new boolean[255];    //Creates an array of boolean of 255 in length.


void setup(){ //Setup void method.
 size(displayWidth, displayHeight,P3D); //Sets the window height and tells Processing to have a 3D world.
 
   minim = new Minim(this); //Creates a new minimum player of minim.
   bgm = minim.loadFile ("The Cannery.mp3",5048);//Tells the audio library to load The Cannery MP3 of bitrate listed.
}


void draw(){
   if (!bgm.isPlaying ()) { //makes the song play.
      bgm.rewind (); //Rewinds the song to beginning.
      bgm.play ();//Plays the song again.
    }
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
 mytow.make();
}

}
