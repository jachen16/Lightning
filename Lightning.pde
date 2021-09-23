int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;

int cr = 0;
int cg = 0;
int cb = 0;

void setup()
{
  size(500, 500);
  strokeWeight(3);
  background(82);
}

void draw()
{
  if ((int)(Math.random()*10) == 1) {
    cr = 0;
    cg = 0;
    cb = 0;
  } else if ((int)(Math.random()*10) < 3) {
    cr = 255;
    cg = 0;
    cb = 255;
  } else {
    cr = 255;
    cg = 55;
    cb = 0;
  }
  stroke(cr, 200+cg, 255-cb);
  while (endY <= 500) {
    endX = startX + ((int)(Math.random()*20)-10);
    endY = startY + ((int)(Math.random()*10));
    line (startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  noStroke();
  fill (180, 180, 180);
  ellipse (0, 10, 100, 50);
  ellipse (75, 10, 100, 50);
  ellipse (150, 10, 100, 50);
  ellipse (225, 10, 100, 50);
  ellipse (300, 10, 100, 50);
  ellipse (375, 10, 100, 50);
  ellipse (450, 10, 100, 50);
  ellipse (525, 10, 100, 50);
}
void mousePressed()
{
  background(82);
  startX = ((int)(Math.random()*300)+100);
  startY = 0;
  endX = startX;
  endY = 0;
}
