import java.awt.AWTException;
import java.awt.Robot;

class Player {
  int health = 20;
  int atk = 1;
  int def = 1;
  int level = 1;
  int xp = 0, gold = 0;
  PVector location = new PVector(0, 0, 0);
  
  float speed = 1;
  float fallSpeed;
  
  
  PVector look = new PVector(0, 0);
  float angleMult;
  
  PVector movedirection = new PVector(0,0);
  
  
  Robot robot;
  
  void update(long dtime) {
    updateLook(dtime);
    updateLoc(dtime);
    if(xp >10000)
    {
      levelUp();
    }
    if(health <= 0)
    {
      //die
    }
    if(level >= 5)
    {
      //win in demo
    }
  }
  
  void updateLook(long dtime) {
    look.add((mouseX - baseMouseX) * angleMult, 0, (mouseY - baseMouseY) * angleMult);
    robot.mouseMove(baseMouseX, baseMouseY);
  }
  
  void updateLoc(long dtime) {
    if (key!= CODED) { //stops errors with keys boolean from unwanted type & register key input
        keys [key] = true;
       
      }

      if (key == CODED) { //stop errors with keys boolean unwanted type & register key input
        keys [keyCode] = true;
      }
      if(keys['w']){
          movedirection = PVector.fromAngle(look.x*PI/180);
      location.add(PVector.mult(movedirection, 1000*speed*dtime));}
       if(keys['a']){
           movedirection = PVector.fromAngle(look.y*PI/180);
           movedirection.rotate(-PI/2);
      location.add(PVector.mult(movedirection, 1000*speed*dtime));}
       if(keys['s']){
           movedirection = PVector.fromAngle(look.x*PI/180);
           movedirection.rotate(PI);
      location.add(PVector.mult(movedirection, 1000*speed*dtime));}
       if(keys['d']){
           movedirection = PVector.fromAngle(look.y*PI/180);
           movedirection.rotate(PI/2);
      location.add(PVector.mult(movedirection, 1000*speed*dtime));}
  }
  
 void setupPlayer() {
    try {
      robot = new Robot();
    } catch (AWTException e) {
      e.printStackTrace();
    }
  }
  void levelUp()
  {
    level += 1;
    atk += 1;
    def += 1;
    health += 10;
    speed += 1;
    xp -= 10000;
  }
  
  void castfire(){
   int timer = frameCount;
   int timer2 = 0;
   if(keys['e'] && abs(timer-timer2) > 60){
   fireballs.add(new Fireball(loc, movedirection)); 
   timer2 = frameCount;
  }
  }
}
