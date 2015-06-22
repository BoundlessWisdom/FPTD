//air+air+air
class BladeGaleTower extends Tower {
  int rank() { return 3; }
  
  BladeGaleTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    GaleBlower bladeGale = new GaleBlower(this, 1);
    bladeGale.make();
  }
}


//fire+fire+fire
class FirecrackerTower extends Tower {
  int rank() { return 3; }
  
  FirecrackerTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Firecracker firecracker = new FireCracker(this, 1);
    firecracker.make();
  }
}


//earth+earth+earth
class RollingStoneTower extends Tower {
  int rank() { return 3; }
  
  RollingStoneTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    RollingStone rollingStone = new RollingStone(this, 1);
    RollingStone.make();
  }
}


//air+fire+air
class CrackleTower extends Tower {
  int rank() { return 3; }
  
  CrackleTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Crackler crackler = new Crackler(this, 1);
    crackler.make();
  }
}


//air+fire+fire
class SparkTower extends Tower {
  int rank() { return 3; }
  
  SparkTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Spark spark = new Spark(this, 1);
    spark.make();
  }
}


//air+fire+earth
class StormTower extends Tower {
  int rank() { return 3; }
  
  StormTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    StormLightning bolt = new StormLightning(this, 1);
    bolt.make();
  }
}


//air+earth+air
class SandstormTower extends Tower {
  int rank() { return 3; }
  
  SandstormTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Sandstorm storm = new Sandstorm(this, 1);
    storm.make();
  }
}


//air+earth+fire
class ToxicTower extends Tower {
  int rank() { return 3; }
  
  ToxicTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    ToxicCloud toxicCloud = new ToxicCloud(this, 1);
    toxicCloud.make();
  }
}


//air+earth+earth
class MudslideTower extends Tower {
  int rank() { return 3; }
  
  MudslideTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Mudslide mudslide = new Mudslide(this, 1);
    mudslide.make();
  }
}


//fire+earth+air
class BOOOOOOMTower extends Tower {
  int rank() { return 3; }
  
  BOOOOOOMTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    BOOOOOOMER boom = new BOOOOOOMER(this, 1);
    boom.make();
  }
}


//fire+earth+fire
class HellfireTower extends Tower {
  int rank() { return 3; }
  
  HellfireTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Hellfire hellfire = new Hellfire(this, 1);
    hellfire.make();
  }
}


//fire+earth+earth
class AftershockTower extends Tower {
  int rank() { return 3; }
  
  AftershockTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Aftershock shock = new Aftershock(this, 1);
    shock.make();
  }
}
