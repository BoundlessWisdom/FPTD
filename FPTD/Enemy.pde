abstract class Enemy
{
  public int atk, def, hp, speed;
  public PVector vel, pos;
  public String name = "Basic";
  public abstract void onSpawn(boolean fromOtherEnemy);
  public abstract void onAttack(Player tgt);
  public abstract void onDeath();
  public abstract void tick(); //note to self: this.velocity = player.pos.sub(this.pos).normalize().mul(this.speed); for tracking
}

class BasicEnemy extends Enemy{
  @Override
  public void onSpawn(boolean fromOtherEnemy)
  {
  }
  @Override
  public void onAttack(Player tgt)
  {
    
  }
  @Override
  public void onDeath()
  {
  }
  @Override
  public void tick()
  {
    
  }
}
