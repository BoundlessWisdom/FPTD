import java.awt.AWTException;
import java.awt.Robot;

class Player {
  int health = 20;
  int atk = 1;
  int def = 1;
  int level = 1;
  
  PVector location = new PVector(0, 0, 0);
  
  float speed;
  float fallSpeed;
  
  
  PVector look = new PVector(0, 0);
  float angleMult;
  
  PVector movedirection = new PVector(0,0);
  
  
  Robot robot;
  
  void update(long dtime) {
    updateLook(dtime);
    updateLoc(dtime);
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
      location.add(movedirection.mult(speed*dtime));}
       if(keys['a']){
           movedirection = PVector.fromAngle(look.y*PI/180);
           movedirection.rotate(-PI/2);
      location.add(movedirection.mult(speed*dtime));}
       if(keys['s']){
           movedirection = PVector.fromAngle(look.x*PI/180);
           movedirection.rotate(PI);
      location.add(movedirection.mult(speed*dtime));}
       if(keys['d']){
           movedirection = PVector.fromAngle(look.y*PI/180);
           movedirection.rotate(PI/2);
      location.add(movedirection.mult(speed*dtime));}
  }
  
 void setupPlayer() {
    try {
      robot = new Robot();
    } catch (AWTException e) {
      e.printStackTrace();
    }
  }
}
