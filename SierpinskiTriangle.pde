public void setup()
{  
  size(2000, 1500);
  background(0, 0, 0);
}
public void draw()
{
  fill(0, 0, 0, 40);
  rect(0, 0, 2000, 2000);
  sierpinski(mouseX - 350, mouseY + 350, 200);
}


public void sierpinski(int x, int y, int len) 
{
  if(len > 20){
    fill(len - 30, len/1.4, len - 40);
      triagle(x,y,x+len/2,y-len,x+len,y);
    sierpinski(x, y, (len/2));
    sierpinski(x + (len/2), y, len/2);
    sierpinski(x + (len/4), y - (len/2), len/2);
  }
}