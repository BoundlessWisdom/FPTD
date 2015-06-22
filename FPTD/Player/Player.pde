class Player {
  PVector location = new PVector(0, 0, 0);
  
  float speed;
  float fallSpeed;
  
  
  PVector look = new PVector(0, 0);
  
  
  
  
  
  void update(long dtime) {
    updateLook(dtime);
    updateLoc(dtime);
  }
  
  void updateLook(long time) {
    look.add(mouseX - baseMouseX * 1, 
  }
  
  void updateLoc(long time) {
    
  }
}
