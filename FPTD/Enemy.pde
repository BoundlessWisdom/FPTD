abstract class Enemy
{
  public int atk, def, hp, speed;
  public PVector vel, pos;
  public String name = "Basic";
  public void onSpawn(int corner, boolean fromOtherEnemy, Enemy from)
  {
    if(fromOtherEnemy)
    {
      this.pos = PVector.add(from.pos, new PVector(random(10), random(10), random(10)));
    }
    else switch(corner)
    {
      case 0:
        this.pos = new PVector(0,0,0);
        break;
      case 1:
        this.pos = new PVector(31.0f,0,0);
        break;
      case 2:
        this.pos = new PVector(0,31.0f,0);
        break;
      case 3:
        this.pos = new PVector(31.0f,31.0f,0);
        break;
      default:
        this.pos = new PVector(0,0,0);
        break;
    }
    enemies.add(this);
  }
  public void onAttack(Player tgt)
  {
    plr.health -= this.atk;
  }
  public void onDeath()
  {
    enemies.remove(this);
  }
  public  void tick()//note to self: this.velocity = player.pos.sub(this.pos).normalize().mul(this.speed); for tracking
  {
    this.vel = PVector.sub(this.pos, plr.location);
    vel.normalize();
    vel.mult(this.speed);
  }
}

class BasicEnemy extends Enemy{
  public BasicEnemy()
  {
    atk = def = hp = 1;
    speed = 6;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
  }
}

class BasicPlusEnemy extends Enemy{
  public BasicPlusEnemy()
  {
    atk = def = hp = 1;
    speed = 12;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Basic+";
  }
}
class BigEnemy extends Enemy{
  public BigEnemy()
  {
    atk = def = hp = 4;
    speed = 4;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Big";
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
  }
}
class BossEnemy extends Enemy{
  public BossEnemy()
  {
    atk = def = hp = 1;
    speed = 6;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
    name = "Boss";
  }
}
