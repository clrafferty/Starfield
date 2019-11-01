//your code here
Particle [] bob = new Particle[500];
void setup()
{
size(1000,1000);
background(0);
for(int i =0 ; i<bob.length ; i++)
	bob[i]=new Particle();
}
void draw()
{
	background(0);
for(int i =0 ; i<bob.length ; i++){
bob[i].show();
bob[i].move();
}
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
	//your code here
}


