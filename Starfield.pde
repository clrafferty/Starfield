//your code here
Particle [] bob = new Particle[100];
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
float x,y ,rad,ang;
Particle (){
	x=0;
	y=0;
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
	popMatrix();
}
void move(){
x=x+(float)Math.cos(ang);
y=y+(float)Math.sin(ang);
rad=rad+Math.abs(y)/100;
}
}

class OddballParticle extends Particle
{
	//your code here
}


