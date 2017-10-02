Bacteria[] aBunch;  
void setup()   
{     
  size(400, 400); 
  aBunch = new Bacteria [300];
  for (int i = 0; i<aBunch.length; i++)
  {
    aBunch[i] = new Bacteria();
  }
}
void draw()   
{ 
  //fill(139,84,115);
  //rect(220,150,20,60);
  background(0);
  for (int i = 0; i<aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].walk();
    aBunch[i].move();
  }
}  
class Bacteria    
{     
  int bacX, bacY, bacColor;
  Bacteria() 
  {
    bacColor = (int)(Math.random()*256);
    bacX = bacY = 200;
  }
  void show()
  {
    noStroke();
    fill(75,47,14);
    rect(370,170,80,250);
    fill(37,77,44);
    ellipse(380,150,200,200);
    stroke(239, 242, 88);
    fill(bacColor, bacColor, bacColor);
    ellipse (bacX, bacY, 5, 5);
  }
  void walk()
  {
    bacX = bacX + (int)(Math.random()*3)-1;
    bacY = bacY + (int)(Math.random()*3)-1;
  }
  void move()
  {
    if (mouseX > bacX)
    {
      bacX = bacX + (int)(Math.random()*10)-1; 
      bacY = bacY + (int)(Math.random()*10)-4;
    } 
    else if (mouseX < bacX)
    {
      bacX = bacX + (int)(Math.random()*5)-6;
      bacY = bacY + (int)(Math.random()*5)-3;
    }
    else if (mouseY < bacY)
      bacY = bacY + (int)(Math.random()*10)-8;
    else 
      bacY = bacY + (int)(Math.random()*10)-1;
  }
}