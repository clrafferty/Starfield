//your code here
Particle [] bob = new Particle[500];
//PImage jesus;
void setup()
{
size(1000,1000);
background(0);
for(int i =1 ; i<bob.length ; i++)
	bob[i]=new Particle();
bob[0] = new OddballParticle();
}

void draw()
{
	background(0);
for(int i =1 ; i<bob.length ; i++){
bob[i].show();
bob[i].move();
}
bob[0].show();
bob[0].move();
}
class Particle
{
float x,y ,rad,ang, mySpeed;
Particle (){
	x=0;
	y=0;
	mySpeed =(float)Math.random()* 10;
	rad=1;
	ang =(float) (PI*Math.random()*2);
}
void show(){
	fill(255);
	noStroke();
	pushMatrix();
	translate(500,500);
	rotate(ang);
	ellipse(x,y,rad,rad);
	strokeWeight(2);
	stroke(255);
	line(x,y,0,0);
	popMatrix();
	if(x>700||y>700){
		x=0;
		y=0;
		rad = 1;
	}
}
void move(){
x=x+(float)Math.cos(ang)*mySpeed;
y=y+(float)Math.sin(ang)*mySpeed;
rad+=.1*mySpeed;
}
}

class OddballParticle extends Particle
{
PImage yes;
float ex,why; 
OddballParticle(){
	yes = loadImage("jeez.png");
	ex=500;
	why=500;
}
void show(){
	image(yes,ex,why);
}
void move(){
	ex = ex +(float)(Math.random()*-1+0.5);
	why = why + (float)(Math.random()*-1+0.5);
}
}