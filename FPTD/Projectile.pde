abstract class Projectile{
  PVector tloc = new PVector(0,0,0);
  int rank = 1;
  PVector vel = new PVector(0,0,0);
 Projectile(Towers temptow, PVector aloc){
   rank = temptow.rank();
  tloc.set(aloc);
 }
 
  
}

class Airbullet extends Projectile{

 Airbullet(){

 } 
 
 void make(){
   fill(255,255,255,80);}
  
}

class Earthbullet extends Projectile{
  Earthbullet(){

  }
  
  void make(){
      fill(222,184,135);  
  }
}

class Firebullet extends Projectile{

Firebullet(){
  
}
void make(){
 
   fill(255,0,0,80); 
   vel = PVector.sub(loc,tloc);
   loc.add(vel);
  
}
}
