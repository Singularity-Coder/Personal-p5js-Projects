/*
Programming Non-Euclidean Inversions by Programming Chaos
https://www.youtube.com/watch?v=oHCA9RDJR-M&ab_channel=ProgrammingChaos
*/

float radius = 350;
PImage img;

void setup() {
  fullScreen(); // Window will be full screen
  img = loadImage("scream2.jpg");
  noStroke();
}

// This goes through each pixel in the image, take location of pixel, invert it and plot it at new location
void draw() {
  background (200) ;
  PVector p,invert;
  p = new PVector();
  invert = new PVector ();
  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++){
    p.x = x - img.width*0.5;
    p.y = y - img.height*0.5;
    invert = invert(p);
    color pix = img. get(x,y);
    fill(pix);
    circle(width*0.5+invert.x,height*0.5+invert.y,2);
    }
  }
}

// PVector object is a 2D vector
PVector invert(PVector p){
  float x,y,d;
  d = p.x*p.x+p.y*p.y;
  x = (radius*radius*p.x)/d;
  y = (radius*radius*p.y)/d;
  return (new PVector (x,y)) ;
}
