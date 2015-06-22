abstract class Enemy
{
  public int atk, def, hp, speed;
  public PVector vel, pos;
  public String name = "Basic";
  public abstract void onSpawn(int corner, boolean fromOtherEnemy);
  public abstract void onAttack(Player tgt);
  public abstract void onDeath(World theWorld);
  public abstract void tick(World theWorld); //note to self: this.velocity = player.pos.sub(this.pos).normalize().mul(this.speed); for tracking
}

class BasicEnemy extends Enemy{
  public BasicEnemy()
  {
    atk = def = hp = 1;
    speed = 6;
    pos = new PVector(0,0,0);
    vel = new PVector(0,0,0);
  }
  @Override
  public void onSpawn(int corner, boolean fromOtherEnemy)
  {
    
  }
  @Override
  public void onAttack(Player tgt)
  {
    
  }
  @Override
  public void onDeath(World theWorld)
  {
    
  }
  @Override
  public void tick(World theWorld)
  {
    
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
  @Override
  public void onSpawn(int corner, boolean fromOtherEnemy)
  {
    
  }
  @Override
  public void onAttack(Player tgt)
  {
    
  }
  @Override
  public void onDeath(World theWorld)
  {
    
  }
  @Override
  public void tick(World theWorld)
  {
    
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
  @Override
  public void onSpawn(int corner, boolean fromOtherEnemy)
  {
    
  }
  @Override
  public void onAttack(Player tgt)
  {
    
  }
  @Override
  public void onDeath(World theWorld)
  {
    
  }
  @Override
  public void tick(World theWorld)
  {
    
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
  @Override
  public void onSpawn(int corner, boolean fromOtherEnemy)
  {
    
  }
  @Override
  public void onAttack(Player tgt)
  {
    
  }
  @Override
  public void onDeath(World theWorld)
  {
    
  }
  @Override
  public void tick(World theWorld)
  {
    
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
  @Override
  public void onSpawn(int corner, boolean fromOtherEnemy)
  {
    
  }
  @Override
  public void onAttack(Player tgt)
  {
    
  }
  @Override
  public void onDeath(World theWorld)
  {
    
  }
  @Override
  public void tick(World theWorld)
  {
    
  }
}
