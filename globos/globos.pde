class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-2,2);
   vy=random(-2,-2);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {

      ellipse(x,y,4,4);
      image(cara,x-2,y-2,4,4);
  }
  
}

ArrayList<Globo> globos;
PImage cara;


void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
  cara = loadImage("5D9.jpg");
  
}

void draw()
{
  //background(640, 480);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  for(int i = 0; i< 1000; i++){
  globos.add(new Globo(mouseX,mouseY));}
}
