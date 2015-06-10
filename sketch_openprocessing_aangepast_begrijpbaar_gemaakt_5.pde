//Deze code heeft de standaard zonnebloemkern. 

int maxDots = 1000;
float phi = 1/1.618033989; //golden ratio
float flow = 360-360 * phi + 0; //change this value for varying effects;
float radius = 20;
float dot_growth;
float current_dot = 0;
float rotation = 0;
float x;
float y;
float w = 2;
float h = 2;
float degrees;
float colorInc;
 
void setup() {
  size(700,700);
  background(0);
  noFill();
  //colorMode(HSB);
  strokeWeight(0.1);
  frameRate(40);
   
  //phi = 1/1.618033989;
  //flow = 360-90 * phi + 0; //change this value for varying effects
  //radius = 5;
  dot_growth = 1.005;
}
 
void draw() {
  current_dot++; //++ is het verhogen van de value met 1. Dus hier is het current_dot + 1
  rotation += flow; //+= betekent rotation = rotation + flow
  rotation -= int(rotation/360) * 360; //rotation = rotation - int
  radius *=dot_growth; //radius = radius * dot_growth
  stroke(255);
  //stroke(phi*current_dot/2, phi*current_dot/1, 255);
  y = cos(rotation * PI/180) * radius + width/2;
  x = sin(rotation * PI/180) * radius + height/2;
  ellipse(x,y,w,h);
   
  w+=phi/14;
  h+=phi/14;
}
