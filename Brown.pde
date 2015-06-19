//Brown Motion 1.0
//
//A simple, massless particle is freely moving according to a brownian motion
//
//The particle is displayed as a dot, surrounded by a transparent circle. 
//Each positions are linked by a line.
//
//by @phersen | @p_R100

//Main Variables
float x,y,vx,vy; //position and velocity of the particle 
int radius;      //size of the particle
float dist;      //distance of the particle from (0,0)

float colorR;    //color of the particle (R,G,B)
float colorG;
float colorB;

void setup(){
  size(640,640);
  background(0);
  x = width/2;
  y = height/2;
  vx = 0;
  vy = 0;
  radius = 15;
  colorR = 250;
  colorB = 67;
}

void draw(){
  //display the particle
  dist = (width/2-x)*(width/2-x)+(height/2-y)*(height/2-y);
  colorG = map(dist,0,width*width/4+height*height/4,128,255);
  noStroke();
  
  //first display a transparent halo
  fill(colorR,colorG,colorB,5);
  ellipse(x,y,radius,radius);
  
  //then display the center of the particle
  fill(colorR,colorG,colorB);
  ellipse(x,y,1,1);

  //move the particle with a random velocity vector (vx,vy)
  vx = random(-6,6);
  vy = random(-6,6);
  
  //check that the particle remains in the window
  if (x+vx<radius || x+vx>(width-radius)){
    vx *= -1;
  }
  if (y+vy <radius || y+vy> (height-radius)){
    vy *= -1;
  }

  //draw a line between the old and the new position
  stroke(colorR,colorG,colorB,50);
  line(x,y,x+vx,y+vy);

  //update the position of the particle
  x += vx;
  y += vy;
}

//when clicking this start a new Brownian path at a different position
void mousePressed(){
x = mouseX;
y = mouseY;
colorR = random(0,255);
colorB = random(0,255);
}
