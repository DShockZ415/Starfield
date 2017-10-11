Particle[] toho;
float x=250;
float y=250;
void setup()
{
  background(0);
	size(500,500);
  toho=new Particle[500];
  for(int i=0;i<toho.length;i++)
  {
    toho[i]=new NormalParticle();
  }
  for(int i=toho.length-1;i<toho.length;i++)
  {
    toho[i]=new OddballParticle();
  }
  for(int i=toho.length-50;i<toho.length-1;i++)
  {
    toho[i]=new JumboParticle();
  }
}

void draw()
{
  background(0);
	for(int i=0;i<toho.length;i++)
  {
    toho[i].move();
    toho[i].show();
  }
}
void mousePressed()
{
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
class NormalParticle implements Particle
{
  float nX,nY,nSpeed,nDir;
  int nSize;
  NormalParticle()
  {
    nX=x;
    nY=y;
    nSpeed=(int)((Math.random()*3)+1);
    nSize=20;
    nDir=(float)(PI*2*Math.random());
  }
public void move()
{
  nX=nX+cos(nDir)*nSpeed;
  nY=nY+sin(nDir)*nSpeed;
}
public void show()
{
  fill((int)(Math.random()*265),(int)(Math.random()*265),(int)(Math.random()*265));
  ellipse(nX,nY,nSize,nSize);
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
  int nSize;
  OddballParticle()
  {
    nX=y;
    nY=y;
    nSpeed=.5;
    nSize=50;
    nDir=(float)(Math.PI*2*Math.random());
  }
  public void move()
  {
    nX=nX+(int)((Math.random()*2)-1);
    nY=nY+(int)((Math.random()*2)-1);
  }
  public void show()
  {
    fill(255);
    ellipse(nX,nY,nSize,nSize);
  }
}
    
class JumboParticle extends NormalParticle
{
  JumboParticle()
  {
    nDir=(float)(PI*2*Math.random());
    nSize=50;
  }
}