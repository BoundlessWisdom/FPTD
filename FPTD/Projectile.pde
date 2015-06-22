abstract class Projectile{
  
 Projectile(){
   
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
}
}
