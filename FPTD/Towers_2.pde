//air+air+air
class BladeGaleTower extends Tower {
  int rank() { return 3; }
  
  BladeGaleTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    GaleBlower bladeGale = new GaleBlower(this, loc);
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
    Firecracker firecracker = new FireCracker(this, loc);
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
    RollingStone rollingStone = new RollingStone(this, loc);
    rollingStone.make();
  }
}


//air+fire+air
class CrackleTower extends Tower {
  int rank() { return 3; }
  
  CrackleTower(int x, int y) {
    super(x, y);
  }
  
  void shoot() {
    Crackler crackler = new Crackler(this, loc);
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
    Spark spark = new Spark(this, loc);
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
    StormLightning bolt = new StormLightning(this, loc);
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
    Sandstorm storm = new Sandstorm(this, loc);
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
    ToxicCloud toxicCloud = new ToxicCloud(this, loc);
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
    Mudslide mudslide = new Mudslide(this, loc);
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
    BOOOOOOMER boom = new BOOOOOOMER(this, loc);
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
