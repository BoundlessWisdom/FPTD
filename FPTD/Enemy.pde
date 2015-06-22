abstract class Enemy
{
  int atk, def, hp, aps;
  PVector vel, pos;
  String name = "Basic";
  public abstract void onSpawn(boolean fromOtherEnemy);
  public abstract void onAttack();
  public abstract void onDeath();
  public abstract void tick(); //note to self: this.velocity = player.pos.sub(this.pos).normalize().mul(this.speed); for tracking
  
}
