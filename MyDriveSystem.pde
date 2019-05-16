
class MyDriveSystem extends DriveSystem {
  int svr, svl;
  int rightSpeed, leftSpeed;
  int approach=0;
  int step;
  int cartime;
  int x = 0;

  MyDriveSystem(Car myCar) {
    super(myCar);
    noSense=0;
    cartime = millis();
  
  }
  void drive() {
  
      firstRound();


 

     
    
    }
    
    void follow(){
     
    if (myCar.sensorValueRight <150 && myCar.sensorValueLeft <150){
      myCar.setLeftSpeed (31);
      myCar.setRightSpeed (30); 
   }
    if (myCar.sensorValueRight < 150 && myCar.sensorValueLeft > 150){
      myCar.setLeftSpeed(10);
      myCar.setRightSpeed(20); 
   }
     if (myCar.sensorValueRight >150 && myCar.sensorValueLeft < 150){
         myCar.setLeftSpeed(20);
         myCar.setRightSpeed(10);        
   }
        if (myCar.sensorValueRight >150 && myCar.sensorValueLeft > 150){
         myCar.setLeftSpeed(20);
         myCar.setRightSpeed(70);        
   }
}
  void followOut(){
     
    
    if (myCar.sensorValueRight <150 && myCar.sensorValueLeft <150){
      myCar.setLeftSpeed (31);
      myCar.setRightSpeed (30); 
   }
    if (myCar.sensorValueRight > 150 && myCar.sensorValueLeft < 150){
      myCar.setLeftSpeed(10);
      myCar.setRightSpeed(20); 
   }
     if (myCar.sensorValueRight <150 && myCar.sensorValueLeft > 150){
         myCar.setLeftSpeed(20);
         myCar.setRightSpeed(10);        
   }
        if (myCar.sensorValueRight >150 && myCar.sensorValueLeft > 150){
         myCar.setLeftSpeed(70);
         myCar.setRightSpeed(10);        
   }
}
    void moveIn(){
         myCar.setLeftSpeed(40);
         myCar.setRightSpeed(30);           
     }
     
    void moveOut(){
         myCar.setLeftSpeed(30);
         myCar.setRightSpeed(40);      
     }
     
    void firstRound(){
    
      int elapsedTime = millis() - cartime;
 
    
        if (elapsedTime < 7000){
         follow();
        }
        if(elapsedTime > 7000 && elapsedTime < 7400){
         moveIn();
             
        }
        if (elapsedTime > 7400 && elapsedTime < 10400 ){
         follow();
         
        }
        if (elapsedTime > 10400 && elapsedTime < 10500 ){
          moveOut();
        }
        if (elapsedTime > 10500 && elapsedTime < 15000 ){
          followOut();
        }
        if (elapsedTime > 15000 && elapsedTime < 15200  ){
          moveOut();
          
        }
        if (elapsedTime > 15200 && elapsedTime < 18000){
          followOut();
     
        }
         if (elapsedTime > 18000 && elapsedTime < 18300  ){
         moveIn();
        }
         if (elapsedTime > 18300 && elapsedTime < 20000  ){
         follow();
        }
         if (elapsedTime > 20000 && elapsedTime < 20200  ){
         moveIn();
        }
         if (elapsedTime > 20200 && elapsedTime < 40000  ){
         follow();
        }
        if (elapsedTime > 40000  ){
         cartime = millis();
        }

        }
       }
     
    
   
 
        
