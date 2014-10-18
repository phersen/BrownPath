float x,y,vx,vy;
float xp,yp;
int radius;
float colore;
float color0;
float color2;
float dist;

void setup(){
   size(640,640);
background(0);
x = width/2;
 y = height/2;
vx = 0;
 vy = 0;
radius = 10;
color0 =  250;
color2 =67;


}
void draw(){
dist = (width/2-x)*(width/2-x)+(height/2-y)*(height/2-y);
colore = map(dist,0,width*width/4+height*height/4,128,255);
fill(color0,colore,color2,5);
noStroke();
ellipse(x,y,radius,radius);
fill(color0,colore,color2);
ellipse(x,y,1,1);
vx = random(-6,6);
vy = random(-6,6);
xp = x+vx;
yp = y+vy;
if (xp<radius || xp>(width-radius)){
vx *= -1;
}
if (yp <radius || yp> (height-radius)){
vy *= -1;
}
stroke(250,colore,67,50);
line(x,y,x+vx,y+vy);
x += vx;
y += vy;
fill(30,1);
//rect(0,0,width,height);
}

void mousePressed(){
x = mouseX;
y = mouseY;
color0 = random(0,255);
color2 = random(0,255);
}
