int x,y;
void setup()
{
	size(250,450);
}
void draw()
{
	//your code here
}
class NormalParticle implements Particle
{
  double nX,nY,nSpeed,nDir;
  int ncolor;
  NormalParticle()
  {
    nX=0;
    nY=125;
    nSpeed=5;
    nDir=Math.PI*Math.Random();
  }
}
public void move()
{
  nX=nX+(Math.cos(nDir)*nSpeed);
  nY=nY+(Math.sin(nDir)*nSpeed);
}
public void show()
{
  fill((int)(Math.random(265)),(int)(Math.random(265)),(int)(Math.random(265)))
  ellipse(nX,nY,20,20);
}
  
interface Particle
{
  void.public move();
  void.public show();
}
class OddballParticle implements Particle
{
	double oX,oY,oSpeed,oDir;
  int ocolor;
  OddballParticle()
  {
    
}
class JumboParticle extends NormalParticle
{
	public void move()
  {
    nX=nX+(Math.cos(nDir)*15);
    nY=nY+(Math.sin(nDir)*15);
  }
  public void show()
  {
    fill(0);
    ellipse
    