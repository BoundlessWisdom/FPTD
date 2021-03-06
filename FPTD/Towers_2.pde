//air+air+air
class BladeGaleTower extends Tower {
  int rank() { return 3; }
  
  BladeGaleTower(int x, int y) {
    super(x, y);
    Color = color(100, 100, 100);
  }
  
  void shoot() {
    GaleBlower bladeGale = new GaleBlower(this, target.pos);
    bladeGale.make();
  }
}


//fire+fire+fire
class FirecrackerTower extends Tower {
  int rank() { return 3; }
  
  FirecrackerTower(int x, int y) {
    super(x, y);
    Color = color(153, 204, 255);
  }
  
  void shoot() {
    FireCracker firecracker = new FireCracker(this, target.pos);
    firecracker.make();
  }
}


//earth+earth+earth
class RollingStoneTower extends Tower {
  int rank() { return 3; }
  
  RollingStoneTower(int x, int y) {
    super(x, y);
    Color = color(222, 184, 135);
  }
  
  void shoot() {
    RollingStone rollingStone = new RollingStone(this, target.pos);
    rollingStone.make();
  }
}


//air+fire+air
class CrackleTower extends Tower {
  int rank() { return 3; }
  
  CrackleTower(int x, int y) {
    super(x, y);
    Color = color(255, 91, 71);
  }
  
  void shoot() {
    Crackler crackler = new Crackler(this,target.pos);
    crackler.make();
  }
}


//air+fire+fire
class SparkTower extends Tower {
  int rank() { return 3; }
  
  SparkTower(int x, int y) {
    super(x, y);
    Color = color(90, 204, 255);
  }
  
  void shoot() {
    Spark spark = new Spark(this, target.pos);
    spark.make();
  }
}


//air+fire+earth
class StormTower extends Tower {
  int rank() { return 3; }
  
  StormTower(int x, int y) {
    super(x, y);
    Color = color(255, 204, 255);
  }
  
  void shoot() {
    StormLightning bolt = new StormLightning(this,target.pos);
    bolt.make();
  }
}


//air+earth+air
class SandstormTower extends Tower {
  int rank() { return 3; }
  
  SandstormTower(int x, int y) {
    super(x, y);
    Color = color(222, 184, 135);
  }
  
  void shoot() {
    Sandstorm storm = new Sandstorm(this, target.pos);
    storm.make();
  }
}


//air+earth+fire
class ToxicTower extends Tower {
  int rank() { return 3; }
  
  ToxicTower(int x, int y) {
    super(x, y);
    Color = color(148, 0, 211);
  }
  
  void shoot() {
    ToxicCloud toxicCloud = new ToxicCloud(this,target.pos);
    toxicCloud.make();
  }
}


//air+earth+earth
class MudslideTower extends Tower {
  int rank() { return 3; }
  
  MudslideTower(int x, int y) {
    super(x, y);
    Color = color(222, 184, 135);
  }
  
  void shoot() {
    Mudslide mudslide = new Mudslide(this, target.pos);
    mudslide.make();
  }
}


//fire+earth+air
class BOOOOOOMTower extends Tower {
  int rank() { return 3; }
  
  BOOOOOOMTower(int x, int y) {
    super(x, y);
    Color = color(0, 0, 0);
  }
  
  void shoot() {
    BOOOOOOMER boom = new BOOOOOOMER(this, target.pos);
    boom.make();
  }
}


//fire+earth+fire
class HellfireTower extends Tower {
  int rank() { return 3; }
  
  HellfireTower(int x, int y) {
    super(x, y);
    Color = color(102,0,0);
  }
  
  void shoot() {
    Hellfire hellfire = new Hellfire(this, target.pos);
    hellfire.make();
  }
}


//fire+earth+earth
class AftershockTower extends Tower {
  int rank() { return 3; }
  
  AftershockTower(int x, int y) {
    super(x, y);
    Color = color(102,0,102);
  }
  
  void shoot() {
    Aftershock shock = new Aftershock(this, target.pos);
    shock.make();
  }
}
