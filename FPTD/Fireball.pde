class Fireball {
PVector loc = new PVector(0,0,0);
PVector lookdir = new PVector(0,0);
PVector vel = new PVector(0,0,0);
  Fireball( PVector tloc, PVector tlookdir) {
   loc.set(tloc);
   lookdir.set(tlookdir);
  } 

  void make() {
    fill(255, 0,0, 80);
    translate(loc.x, loc.y, loc.z);
    sphere(3000);
    lookdir.normalize();
    vel.set(PVector.mult(lookdir, 2000));
    loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
  }
}
