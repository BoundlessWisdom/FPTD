abstract class Tower {
  PVector loc;
  long timer = millis();
   
  Tower(int x, int y) {
    loc = new PVector(x, y);
  }
  
  abstract int rank();

  abstract void shoot();
  
  abstract void upgrade();
}


class AirTower extends Tower {
  int rank() { return 1; }
  
  AirTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    AirBullet bullet = new AirBullet(this, 1);
    bullet.make();
  }
}


class FireTower extends Tower {
  int rank() { return 1; }
  
  FireTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    FireBullet bullet = new FireBullet(this, 1);
    bullet.make();
  }
}


class EarthTower extends Tower {
  int rank() { return 1; }
  
  EarthTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    EarthBullet bullet = new EarthBullet(this, 1);
    bullet.make();
  }
}


//air+air
class JetTower extends Tower {
  int rank() { return 2; }
  
  JetTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    JetStream stream = new JetStream(this, 1);
    stream.make();
  }
}


//fire+fire
class OilTower extends Tower {
  int rank() { return 2; }
  
  OilTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    OilSplasher splash = new OilSplasher(this, 1);
    splash.make();
  }
}


//earth+earth
class BoulderTower extends Tower {
  int rank() { return 2; }
  
  BoulderTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Boulder rock = new Boulder(this, 1);
    rock.make();
  }
}


//air+fire
class LightningTower extends Tower {
  int rank() { return 2; }
  
  LightningTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    ChainLightning bolt = new ChainLightning(this, 1);
    bolt.make();
  }
}


//air+earth
class SandTower extends Tower {
  int rank() { return 2; }
  
  SandTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    SandSplasher wave = new SandSplasher(this, 1);
    wave.make();
  }
}


//fire+earth
class BoomTower extends Tower {
  int rank() { return 2; }
  
  BoomTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Boomer boom = new Boomer(this, 1);
    boom.make();
  }
}
