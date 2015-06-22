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
  
  void updateLook(long time) {
    look.add((mouseX - baseMouseX) * angleMult, (mouseY - baseMouseY) * angleMult);
    robot.mouseMove(baseMouseX, baseMouseY);
  }
  
  void updateLoc(long time) {
    
  }
  
 void setupPlayer() {
    try {
      robot = new Robot();
    } catch (AWTException e) {
      e.printStackTrace();
    }
  }
}
