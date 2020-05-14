import ddf.minim.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer groove;

void setup()
{
  size(512, 200, P3D);

  minim = new Minim(this);
  groove = minim.loadFile("Anosmia.mp3", 2048);
}

void draw()
{
  background(0);
  
  stroke(255);
  
  for(int i = 0; i < groove.bufferSize() - 1; i++)
  {
    line(i, 50  + groove.left.get(i)*50,  i+1, 50  + groove.left.get(i+1)*50);
    line(i, 150 + groove.right.get(i)*50, i+1, 150 + groove.right.get(i+1)*50);
  }
}

void keyPressed()
{
  if ( key == 'l' ) groove.loop();
}
