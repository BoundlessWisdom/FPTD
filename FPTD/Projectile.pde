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

class JetStream extends Projectile{

JetStream(){
  
}
void make(){
  translate(loc.x,loc.y,loc.z);
 fill(255,255,255);
 strokeWeight(500);
 line(loc.x, loc.y, tloc.x, tloc.y);
   vel = PVector.sub(loc,tloc);
   loc.add(vel);
  
}
}

class OilSplasher extends Projectile{

OilSplasher(){
  
}
void make(){
  translate(loc.x,loc.y,loc.z);
 
   vel = PVector.sub(loc,tloc);
   loc.add(vel);
  
}
}

class Boulder extends Projectile{

Boulder(){
  
}
void make(){
  translate(loc.x,loc.y,loc.z);
    fill(222,184,135,100); 
 sphere(25000);
 
   vel = PVector.sub(loc,tloc);
   loc.add(vel);
  
}
}

class ChainLightning extends Projectile{

ChainLightning(){
  
}
void make(){
  translate(loc.x,loc.y,loc.z);
     fill(255,255,255,100); 


   vel = PVector.sub(loc,tloc);
   loc.add(vel);
  
}
}

class SandSplasher extends Projectile{

SandSplasher(){
  
}
void make(){
  translate(loc.x,loc.y,loc.z);

   vel = PVector.sub(loc,tloc);
   loc.add(vel);
  
}
}

class Boomer extends Projectile{

Boomer(){
  
}
void make(){
  translate(loc.x,loc.y,loc.z);
   fill(0,0,100);
 sphere(10000);
   
   vel = PVector.sub(loc,tloc);
   loc.add(vel);
  
}
}


