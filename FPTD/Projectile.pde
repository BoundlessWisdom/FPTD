abstract class Projectile{
  PVector loc = new PVector(0,0,0);
  PVector tloc = new PVector(0,0,0);
  int rank = 1;
  PVector vel = new PVector(0,0,0);
 Projectile(Tower temptow, PVector aloc){
   rank = temptow.rank();
  tloc.set(aloc);
  loc.set(temptow.loc);
 }
 
  abstract void make();
}

class Airbullet extends Projectile{

 Airbullet(){

 } 
 
 void make(){
   fill(255,255,255,80);
   translate(loc.x,loc.y,loc.z);
 sphere(5000);}
  
}

class Earthbullet extends Projectile{
  Earthbullet(){

  }
  
  void make(){
      fill(222,184,135); 
      translate(loc.x,loc.y,loc.z);
 sphere(5000); 
  }
}

class Firebullet extends Projectile{

Firebullet(){
  
}
void make(){
  translate(loc.x,loc.y,loc.z);
 sphere(5000);
   fill(255,0,0,80); 
   vel = PVector.sub(loc,tloc);
   loc.add(vel);
  
}
}
