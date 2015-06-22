abstract class Enemy
{
  public int atk, def, hp, speed; //Creates integers of attack, defense, health, and speed.
  public PVector vel, pos; //Creates a pvector of velocity and position.
  public String name = "Basic"; //Makes a default name of "basic"
  PImage tex = null; //make the default tex of null/
  int xpYield = 100; //makes the xp return to 100 points.
  public void onSpawn(int corner, boolean fromOtherEnemy, Enemy from) //Upon the spawn of an enemy,
  {
    if(fromOtherEnemy) //if it's from another enemy,
    {
      this.pos = PVector.add(from.pos, new PVector(random(10), random(10), random(10))); //make the resultant velcity random from current pos.
    }
    else switch(corner) //determines the corner to start in.
    {
      case 0: //Different cases to set coordinates.
        this.pos = new PVector(-150000,0,-150000);
        break;
      case 1:
        this.pos = new PVector(150000,0,-150000);
        break;
      case 2:
        this.pos = new PVector(-150000,0,150000.0f);
        break;
      case 3:
        this.pos = new PVector(150000,0, 150000);
        break;
      default:
        this.pos = new PVector(0,0,0);
        break;
    }
    enemies.add(this);
    initializeSphere(30,30);
  }
  public void onAttack(Player tgt) //Upon attack.
  {
    if(PVector.sub(this.pos, plr.location).mag() < 1 && PVector.sub(this.pos, plr.location).mag() > -1) 
    {
      plr.health -= this.atk; //Return health.
    }
  }
  public void onDeath() //Upon death.
  {
    enemies.remove(this); //Remove all enemies and
    plr.xp += xpYield; //Remove all yield.
  }
  public void update()//note to self: this.velocity = player.pos.sub(this.pos).normalize().mul(this.speed); for tracking
  {
    this.vel = PVector.sub(this.pos, plr.location);
    vel.normalize();
    vel.mult(this.speed * 10000);
    if(this.hp <= 0)
    {
      this.onDeath();
    }
  }
  public void make()
  {
    textureSphere(pos.x,pos.y,pos.z,tex);
  }
}

class BasicEnemy extends Enemy{ //Default enemy.
  public BasicEnemy()
  {
    tex = loadImage("fireball_small.png"); //Fireball small image for default enemy.
    atk = def = hp = 1;
    speed = 6;
    pos = new PVector(0,0,0); //Sets default velocity and position of zero.
    vel = new PVector(0,0,0);
  }
}

class BasicPlusEnemy extends Enemy{ //Creates basic fireball medium with medium image.
  public BasicPlusEnemy()
  {
     tex = loadImage("fireball_med.png");
    atk = def = hp = 1;
    speed = 12;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Basic+";
    xpYield = 200;
  }
}
class BigEnemy extends Enemy{ //Creates large fireball enemy.
  public BigEnemy()
  {
     tex = loadImage("fireball_large.png");
    atk = def = hp = 4;
    speed = 4;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Big";
    xpYield = 1000;
  }
} 
class HugeEnemy extends Enemy{ //Creates enormous thing, but uses big sprite.
  public HugeEnemy()
  {
    atk = def = hp = 7;
    speed = 2;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Huge";
    xpYield = 2000;
     tex = loadImage("fireball_large.png");
  }
}
class BossEnemy extends Enemy{ //makes a boss with default health.
  public BossEnemy()
  {
    atk = def = hp = 10;
    speed = 2;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Boss";
    xpYield = 10000;
     tex = loadImage("bomb_boss_right_active.png"); //With bomb sprite.
  }
}
class BombEnemy extends Enemy{
  public BombEnemy()
  {
     tex = loadImage("bomb_active.png"); //Bomb enemy with bomb sprite.
    atk = def = hp = 1;
    speed = 6;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Bomb";
    xpYield = 5000;
  }
  public void onDeath() //Upon death.
  {
    super.onDeath();
    //Explode
    for (Enemy e : enemies)
    {
      if(PVector.sub(this.pos, e.pos).mag() < 10000 && PVector.sub(this.pos, e.pos).mag() > -10000)
      {
        e.hp -= 10;
      }
    }
    if(PVector.sub(this.pos, plr.location).mag() < 10000 && PVector.sub(this.pos, plr.location).mag() > -10000)
    {
      plr.health -= 10;
    }
  }
}
class SplitterEnemy extends Enemy{ //Splitter enemy.
  int splits = 0;
  public SplitterEnemy()
  {
    atk = def = speed = 8;
    hp = 16;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    xpYield = 1000;
    name = "Splitter";
     tex = loadImage("fireball_small.png"); //Fireball image.
  }
  public SplitterEnemy(int splits) //Only lets it split a certain amount.
  {
    this.splits = splits;
    if(splits > 4)
    {
      return;
    }
    else if(splits == 0)
    {
      atk = def = speed = 8;
      hp = 16;
      pos = new PVector(0,0,0);
      vel = new PVector(0,0,0);
      xpYield = 1000;
      name = "Splitter";
    }
    else
    {
     atk = def = speed = 4/splits;
     hp = 8/splits;
     pos = new PVector(0,0,0);
     vel = new PVector(0,0,0);
     name = "Split Splitter";
     xpYield = 500/splits;
    }
  }
  public void onDeath()
  {
    plr.xp += xpYield;
    splits++;
    enemies.remove(this);
    if(splits > 4)
      return;
    SplitterEnemy e1 = new SplitterEnemy(splits);
    e1.onSpawn(0,true,this);
    SplitterEnemy e2 = new SplitterEnemy(splits);
    e2.onSpawn(0,true,this);
    enemies.add(e1);
    enemies.add(e2);
  }
}
