PImage bgImag;//int background
PImage soilImag;//int soil
PImage lifeImag;//int groundhog life
PImage groundhogImag;//int groundhog
PImage cabbageImag;
PImage soldierImag;//int soldier
int x = 0;//the soldier walk and go back use
int lightPos = 240;//the lightpos shoot and go back

void setup() {
  size(600,480,P2D);
  bgImag = loadImage("img/bg.jpg");
  soilImag = loadImage("img/soil.png");
  lifeImag = loadImage("img/life.png");
  groundhogImag = loadImage("img/groundhogIdle.png");
  soldierImag = loadImage("img/soldier.png");
  cabbageImag = loadImage("img/cabbage.png");
  //Every variable is used to import image
}

void draw() {
  
  image(bgImag, 0, 0);
  strokeWeight(15.0);//The above is the code for the grass. I put it here because it will block the groundhog's feet.
  strokeCap(SQUARE);
  stroke(124,204,25);
   line(0, 152, 800, 152);
  
  image(soilImag,0,160);
  image(lifeImag,10,10);
  image(lifeImag,80,10);
  image(groundhogImag,325,80);
  image(soldierImag,x,160);
  
     x=x+2  ;//let the soldier action
    if(x>640){//let the soldier go back to the original location
     x = -80;
  }
  image(cabbageImag,480,160);
  
  strokeWeight(10.0);//There code are used to let the lightPos can be action
    strokeCap(ROUND);
    stroke(255,0,0);//color
    
    
    
    stroke(255,255,0);//the sun outside color
    fill(253,184,19);//the sun inside color
    circle(520, 30, 160);//the sun size and location
}
