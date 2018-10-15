 //declare Jumper variables here  
Jumper[] crabs; 
int x;
int y;
int p;
 Jumper cry; 
 void setup()   
 {     
  
 	size(500,500);
 frameRate(10);
 cry = new Jumper();
 crabs = new Jumper[3000];
 for(int i = 0; i < crabs.length; i++)
  {
    crabs[i] = new Jumper();
  }

 }   
 void draw()   
 { 
   fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
   stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
   strokeWeight(3);
   background(0);
   for(int i=0; i<crabs.length; i++)
  {
    crabs[i].jump();
    crabs[i].show();
  }

 	cry.jump(); 
 }  


 

 class Jumper
 {
   int myX,myY;
   Jumper()
   {
     myX = 250;
     myY = 250;
   }
    void show(){
    ellipse(myX,myY,10,10);
   }
   void jump()
   {
     myX += (int)(Math.random()*10)-5;
     myY += (int)(Math.random()*10)-5;
   }
 }
