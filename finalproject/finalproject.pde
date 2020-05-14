import ddf.minim.*;
import ddf.minim.signals.*;

Minim minim;
AudioPlayer groove;
int n=0;
void setup()
{
  size(800, 800, P3D);
  noStroke();
  rectMode(CENTER);
  minim = new Minim(this);
  groove = minim.loadFile("Il Vento Doro (Golden Wind).mp3", 2048);
  groove.play();
}

void draw()
{
  background(0);
  
  for(int i = 0; i < groove.bufferSize() - 3; i++)
  {
    stroke(255,0,0);
    line(100  + groove.right.get(i)*100, i, 100  + groove.right.get(i+1)*100, i+1);
    stroke(255, 127, 0);
    line(200 + groove.right.get(i)*100, i, 200 + groove.right.get(i+1)*100, i+1);
    stroke(255, 255, 0);
    line(300  + groove.right.get(i)*100, i, 300  + groove.right.get(i+1)*100, i+1);
    stroke(0, 255, 0);
    line(400 + groove.right.get(i)*100, i, 400 + groove.right.get(i+1)*100, i+1);
    stroke(0,0,255);
    line(500  + groove.right.get(i)*100, i, 500  + groove.right.get(i+1)*100, i+1);
    stroke(75, 0, 130);
    line(600 + groove.right.get(i)*100, i, 600 + groove.right.get(i+1)*100, i+1);
    stroke(148, 0, 211);
    line(700  + groove.right.get(i)*100, i, 700  + groove.right.get(i+1)*100, i+1);
  }
  stroke(0);
  for(int i=600; i < groove.bufferSize() - 4; i++) {
   rotate(n*PI/random(400)*0.1);
   fill(random(255),random(255),random(255));
   rect(i,i,groove.left.get(i)*25,groove.left.get(i)*25);
  } 
  for(int i=10; i < groove.bufferSize() - 2; i++) {
   rotate(n*-PI/random(70)*0.1);
   fill(random(255),random(255),random(255));
   ellipse(i,i,groove.left.get(i)*25,groove.right.get(i)*25);
  } 
  /*for(int i=300; i < groove.bufferSize() - 80; i++) {
   rotate(n*PI/300*0.1);
   stroke(40,89,175);
   line(i,i,groove.right.get(i)*25,groove.right.get(i)*25);
  } 
  for(int i=900; i < groove.bufferSize() - 80; i++) {
   rotate(n*-PI/400*0.1);
   stroke(30,69,75);
   line(i,i,groove.left.get(i)*25,groove.right.get(i)*25);
  } */
  n=n+2;
}
