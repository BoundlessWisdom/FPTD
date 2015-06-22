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

class Crackler extends Projectile{

Crackler(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}


class Spark extends Projectile{

Spark(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}


class StormLightning extends Projectile{

StormLightning(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}

class Sandstorm extends Projectile{

  Sandstorm(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}

class ToxicCloud extends Projectile{

ToxicCloud(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}

class Mudslide extends Projectile{

Mudslide(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}

class BOOOOOOMER extends Projectile{

BOOOOOOMER(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 fill(0,0,0,100);
 sphere(10000);

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}

class Hellfire extends Projectile{

Hellfire(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}

class Aftershock extends Projectile{

Aftershock(Tower temptow, PVector aloc){
  super(temptow, aloc);
}
void make(){
  translate(loc.x,loc.y,loc.z);
 

   vel = PVector.sub(loc,target);
   loc.add(vel);
    translate(-loc.x, -loc.y, -loc.z);
}
}
