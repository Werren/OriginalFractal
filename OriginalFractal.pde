int z=0;
int ze=0;
public void setup()
{
  size(500,500);
 rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(250,250,480);
frameRate(5);
}
public void myFractal(int x, int y, int siz)
{
  rect(x,y,siz,siz);
  if(siz > 5)
  {
    noStroke();
      fill((int)(Math.random()*0),(int)(Math.random()*200),(int)(Math.random()*200));
    myFractal(x-siz/3+z,y,siz/2);
    myFractal(x+siz/3+ze,y,siz/2);
    myFractal(x,y-siz/3+ze,siz/2);
      myFractal(x,y+siz/3+z,siz/2);  
  }
}
public void mouseDragged(){
  z++;
  ze+=2;
  if(z>=10)
    z=-10;
    if(ze>=20)
    ze=-10;
}
