abstract class Towers {
 
   float timer=millis(); 
   int type;
   PVector loc;
  Towers(float tempx, float tempy, int type){
   loc = new PVector(tempx, tempy);
   this.type = type; //1 is air, 2 is fire, 3 is earth 
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
 timer-=5000; 
if(type == 1){
projectiles.add(new Airbullet());} 
}
}
}
