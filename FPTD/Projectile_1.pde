abstract class Projectile {
  PVector loc = new PVector(0, 0, 0);
  PVector target = new PVector(0, 0, 0);
  PVector vel = new PVector(0, 0, 0);
  public Projectile(Tower src, Enemy target) {
    this.target.set(loc);
    loc.set(src.loc);
  }

  abstract void make();
}

class AirBullet extends Projectile {

  AirBullet(Tower src, PVector loc) {
    super(src, loc);
  } 

  void make() {
    fill(255, 255, 255, 80);
    translate(loc.x, loc.y, loc.z);
    sphere(5000);
    translate(-loc.x, -loc.y, -loc.z);
  }
}


class FireBullet extends Projectile {

  FireBullet(Tower src, PVector loc) {
    super(src, loc);
  }
  void make() {
    translate(loc.x, loc.y, loc.z);
    fill(0, 0, 100);
    sphere(10000);

    vel = PVector.sub(loc, target);
    loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
  }
}


class EarthBullet extends Projectile {
  EarthBullet(Tower src, PVector loc) {
    super(src, loc);
  }

  void make() {
    fill(222, 184, 135); 
    translate(loc.x, loc.y, loc.z);
    sphere(5000);
    translate(-loc.x, -loc.y, -loc.z);
  }
}


class JetStream extends Projectile {

  JetStream(Tower src, PVector loc) {
    super(src, loc);
  }
  void make() {
    translate(loc.x, loc.y, loc.z);
    fill(255, 255, 255);
    strokeWeight(500);
    line(loc.x, loc.y, loc.z, target.x, target.y, target.z);
    vel = PVector.sub(loc, target);
    loc.add(vel);
    strokeWeight(1);
    translate(-loc.x, -loc.y, -loc.z);
  }
}


class OilSplasher extends Projectile {

  OilSplasher(Tower src, PVector loc) {
    super(src, loc);
  }
  void make() {
    translate(loc.x, loc.y, loc.z);

    vel = PVector.sub(loc, target);
    loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
  }
}


class Boulder extends Projectile {

  Boulder(Tower src, PVector loc) {
    super(src, loc);
  }
  void make() {
    translate(loc.x, loc.y, loc.z);
    fill(222, 184, 135, 100); 
    sphere(25000);

    vel = PVector.sub(loc, target);
    loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
  }
}


class ChainLightning extends Projectile {

  ChainLightning(Tower src, PVector loc) {
    super(src, loc);
  }
  void make() {
    translate(loc.x, loc.y, loc.z);
    fill(255, 255, 255, 100); 


    vel = PVector.sub(loc, target);
    loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
  }
}


class SandSplasher extends Projectile {

  SandSplasher(Tower src, PVector loc) {
    super(src, loc);
  }
  void make() {
    translate(loc.x, loc.y, loc.z);

    vel = PVector.sub(loc, target);
    loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
  }
}


class Boomer extends Projectile {

  Boomer(Tower src, PVector loc) {
    super(src, loc);
  }
  void make() {
    translate(loc.x, loc.y, loc.z);
    fill(0, 0, 100);
    sphere(10000);

    vel = PVector.sub(loc, target);
    loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
  }
}
