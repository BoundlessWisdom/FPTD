abstract class Tower {
  PVector loc;
  long timer = millis();
  Enemy target;
  color Color = color(0,0,0);
  Tower(int x, int y) {
    loc = new PVector(x, 0, y);
    this.place();
  }
  void place()
  {
    towers.add(this);
    towered[(int)(this.loc.x/100000)][(int)(this.loc.z/100000)] = true;
  }
  int rank()
  {
    return 0;
  }

  void shoot(){}
  void upgrade(){}
  void make()
  {
    translate(this.loc.x, this.loc.y, this.loc.z);
    fill(Color);
    box(10000,50000,10000);
    translate(-this.loc.x, -this.loc.y, -this.loc.z);
  }
  void findNearest()
  {
    Enemy currNearest = enemies.get(0);
    for(Enemy e : enemies)
    {
      if(PVector.sub(e.pos,this.loc).mag() < PVector.sub(currNearest.pos, this.loc).mag())
      {
        currNearest = e;
      }
    }
    target = currNearest;
  }
}


class AirTower extends Tower {
  int rank() { return 1; }
  
  AirTower(int x, int y) {
    super(x, y);
    Color = color(153, 204, 255);
  }
  
  void shoot() {
    AirBullet bullet = new AirBullet(this,target.pos);
    bullet.make();
  }
}


class FireTower extends Tower {
  int rank() { return 1; }
  
  FireTower(int x, int y) {
    super(x, y);
    Color = color(255, 0, 0);
  }
  
  void shoot() {
    FireBullet bullet = new FireBullet(this, target.pos);
    bullet.make();
  }
}


class EarthTower extends Tower {
  int rank() { return 1; }
  
  EarthTower(int x, int y) {
    super(x, y);
    Color = color(222, 184, 135);
  }
  
  void shoot() {
    EarthBullet bullet = new EarthBullet(this,target.pos);
    bullet.make();
  }
}


//air+air
class JetTower extends Tower {
  int rank() { return 2; }
  
  JetTower(int x, int y) {
    super(x, y);
    Color = color(255,255,255);
  }
  
  void shoot() {
    JetStream stream = new JetStream(this, target.pos);
    stream.make();
  }
}


//fire+fire
class OilTower extends Tower {
  int rank() { return 2; }
  
  OilTower(int x, int y) {
    super(x, y);
    Color = color(255,255,255);
  }
  
  void shoot() {
    OilSplasher splash = new OilSplasher(this,target.pos);
    splash.make();
  }
}


//earth+earth
class BoulderTower extends Tower {
  int rank() { return 2; }
  
  BoulderTower(int x, int y) {
    super(x, y);
    Color = color(222, 184, 135);
  }
  
  void shoot() {
    Boulder rock = new Boulder(this, target.pos);
    rock.make();
  }
}


//air+fire
class LightningTower extends Tower {
  int rank() { return 2; }
  
  LightningTower(int x, int y) {
    super(x, y);
    Color = color(255,255,0);
  }
  
  void shoot() {
    ChainLightning bolt = new ChainLightning(this, target.pos);
    bolt.make();
  }
}


//air+earth
class SandTower extends Tower {
  int rank() { return 2; }
  
  SandTower(int x, int y) {
    super(x, y);
    Color = color(239,190,150);
  }
  
  void shoot() {
    SandSplasher wave = new SandSplasher(this, target.pos);
    wave.make();
  }
}


//fire+earth
class BoomTower extends Tower {
  int rank() { return 2; }
  
  BoomTower(int x, int y) {
    super(x, y);
    Color = color(0, 0, 0);
  }
  
  void shoot() {
    Boomer boom = new Boomer(this, target.pos);
    boom.make();
  }
}
