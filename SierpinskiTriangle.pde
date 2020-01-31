public void setup()
{
  size(900, 900);
    background(0);
}
public void draw()
{
  sierpinski(100, 780, 700);
}

public void sierpinski(int x, int y, int len) 
{
  if(len > 20){
    fill(len - 60, len - 20, len - 120);
      triangle(x,y,x+len/2,y-len,x+len,y);
    sierpinski(x, y, (len/2));
    sierpinski(x + (len/2), y, len/2);
    sierpinski(x + (len/4), y - (len/2), len/2);
  }
}