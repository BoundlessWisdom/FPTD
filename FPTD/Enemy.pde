abstract class Enemy
{
  int size = 1000;
  public int atk, def, hp, speed;
  public PVector vel, pos;
  public String name = "Basic";
  PImage tex = null;
  int xpYield = 100;
  color Color = color(0,0,0);
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
        this.pos = new PVector(1000,0,0);
        break;
    }
    initializeSphere(300,300);
    System.out.print("spawn");
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
    System.out.print("die");
    enemies.remove(this);
    plr.xp += xpYield;
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
      fill(Color);
      translate(pos.x, pos.y, pos.z);
      sphere(size);
      translate(-pos.x, -pos.y, -pos.z);
  }
   void collide(Enemy e) {
    float dist = dist(e.pos, this.pos);
    if (dist < e.size + this.size) {
      e.vel.div(0.1 * size * dist/2);
      e.vel.add(PVector.mult(PVector.sub(e.pos, this.pos) , 5));
    }
  }
  void collide(Tower t) {
    float dist = dist(t.loc, this.pos);
    if (dist < 10000 + this.size) {
      this.vel.div(0.1 * size * dist/2);
      this.vel.add(PVector.mult(PVector.sub(t.loc, this.pos) , 5));
    }
  }
}

class BasicEnemy extends Enemy{
  public BasicEnemy()
  {
    this.onSpawn(4, false, null);
    tex = loadImage("fireball_small.png");
    atk = def = hp = 1;
    speed = 6;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    Color = color(255, 153, 51);
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
     Color = color(255, 153, 51);
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
    Color = color(255, 102, 0);
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
     Color = color(255, 0, 102);
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
    Color = color(255, 0, 255);
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
    Color = color(0, 0, 0);
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
