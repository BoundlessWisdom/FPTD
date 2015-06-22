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
  
  
  Robot robot;
  
  void update(long dtime) {
    updateLook(dtime);
    updateLoc(dtime);
  }
  
  void updateLook(long dtime) {
    look.add((mouseX - baseMouseX) * angleMult, (mouseY - baseMouseY) * angleMult);
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
      location.add(0,0,speed*dtime);}
       if(keys['a']){
      location.add(-speed*dtime,0,0);}
       if(keys['s']){
      location.add(speed*dtime,0,0);}
       if(keys['d']){
      location.add(0,0,-speed*dtime);}
  }
  
 void setupPlayer() {
    try {
      robot = new Robot();
    } catch (AWTException e) {
      e.printStackTrace();
    }
  }
}
