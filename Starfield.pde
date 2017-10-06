Particle[] toho;
float speedboost=0;
void setup()
{
  background(0);
	size(250,450);
  toho=new Particle[20];
  for(int i=0;i<toho.length;i++)
  {
    toho[i]=new NormalParticle();
  }
  for(int i=toho.length-1;i<toho.length;i++)
  {
    toho[i]=new OddballParticle();
  }
  for(int i=toho.length-5;i<toho.length-1;i++)
  {
    toho[i]=new JumboParticle();
  }
}

void draw()
{
	for(int i=0;i<toho.length;i++)
  {
    toho[i].move();
    toho[i].show();
  }
}
class NormalParticle implements Particle
{
  float nX,nY,nSpeed,nDir;
  int ncolor;
  NormalParticle()
  {
    nX=125;
    nY=0;
    nSpeed=.1;
    nDir=(float)(PI*Math.random());
  }
public void move()
{
  nX=nX+cos(nDir)*nSpeed;
  nY=nY+sin(nDir)*nSpeed;
}
public void show()
{
  fill((int)(Math.random()*265),(int)(Math.random()*265),(int)(Math.random()*265));
  ellipse(nX,nY,20,20);
}
}
  
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle
{
	float nX,nY,nSpeed,nDir;
  int ncolor;
  OddballParticle()
  {
    nX=125;
    nY=225;
    nSpeed=.5+speedboost;
    nDir=(float)(Math.PI*2*Math.random());
  }
  public void move()
  {
    nX=nX+cos(nDir)*nSpeed;
    nY=nY+sin(nDir)*nSpeed;
    if(mousePressed)
      speedboost=speedboost+100;
    else
      speedboost=0;
  }
  public void show()
  {
    fill(255);
    ellipse(nX,nY,50,50);
  }
}
    
class JumboParticle extends NormalParticle
{
	public void move()
  {
  nX=nX+cos(nDir)*nSpeed;
  nY=nY+sin(nDir)*nSpeed;
  }
  public void show()
  {
    fill(255);
    ellipse(nX,nY,50,50);
  }
}