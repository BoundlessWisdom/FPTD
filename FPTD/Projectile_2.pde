class GaleBlower extends Projectile{

GaleBlower(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 
   vel = PVector.sub(loc,target);
   loc.add(vel);
  
}
}

class FireCracker extends Projectile{

FireCracker(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
  fill(255,0,0,100);
 box(10000,200,200);
   vel = PVector.sub(loc,target);
   loc.add(vel);
  translate(-loc.x, -loc.y, -loc.z);
}
}

class RollingStone extends Projectile{

RollingStone(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 fill(222,184,135,100);
 sphere(25000);
   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}
