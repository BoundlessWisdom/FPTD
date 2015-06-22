abstract class Towers {
 
   float timer=millis(); 
   
  Towers(float tempx, float tempy, int type){
   PVector loc = new PVector(tempx, tempy);
   int type = type; //1 is air, 2 is fire, 3 is earth 
}

}
void make(){
  translate(loc.x,loc.y);
 if(type==1){
   fill(255,255,255,80);
 }
 
  if(type==2){
   fill(255,0,0,80);
 }
 
  if(type==3){
   fill(222,184,135);
 }
 box(1,5,1); 
}

void shoot(){
if((timer-millis())%200==0){ 
 timer-=200; 
if(type == 1){
projectiles.add(new Airbullet());} 
}
if(type == 2){
 projectiles.add(new Firebullet()); 
}
if(type == 3) {
projectiles.add(new Earthbullet());}
}
