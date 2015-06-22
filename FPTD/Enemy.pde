abstract class Enemy
{
  public int atk, def, hp, speed;
  public PVector vel, pos;
  public String name = "Basic";
  PImage tex = null;
  int xpYield = 100;
  public void onSpawn(int corner, boolean fromOtherEnemy, Enemy from)
  {
    if(fromOtherEnemy)
    {
      this.pos = PVector.add(from.pos, new PVector(random(10), random(10), random(10)));
    }
    else switch(corner)
    {
      case 0:
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
  public void onAttack(Player tgt)
  {
    if(PVector.sub(this.pos, plr.location).mag() < 1 && PVector.sub(this.pos, plr.location).mag() > -1)
    {
      plr.health -= this.atk;
    }
  }
  public void onDeath()
  {
    enemies.remove(this);
    plr.xp += xpYield;
  }
  public void update()//note to self: this.velocity = player.pos.sub(this.pos).normalize().mul(this.speed); for tracking
  {
    this.vel = PVector.sub(this.pos, plr.location);
    vel.normalize();
    vel.mult(this.speed * 1000);
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

class BasicEnemy extends Enemy{
  public BasicEnemy()
  {
    tex = loadImage("fireball_small.png");
    atk = def = hp = 1;
    speed = 6;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
  }
}

class BasicPlusEnemy extends Enemy{
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
class BigEnemy extends Enemy{
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
class HugeEnemy extends Enemy{
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
class BossEnemy extends Enemy{
  public BossEnemy()
  {
    atk = def = hp = 10;
    speed = 2;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Boss";
    xpYield = 10000;
     tex = loadImage("bomb_boss_right_active.png");
  }
}
class BombEnemy extends Enemy{
  public BombEnemy()
  {
     tex = loadImage("bomb_active.png");
    atk = def = hp = 1;
    speed = 6;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Bomb";
    xpYield = 5000;
  }
  public void onDeath()
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
class SplitterEnemy extends Enemy{
  int splits = 0;
  public SplitterEnemy()
  {
    atk = def = speed = 8;
    hp = 16;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    xpYield = 1000;
    name = "Splitter";
     tex = loadImage("fireball_small.png");
  }
  public SplitterEnemy(int splits)
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
