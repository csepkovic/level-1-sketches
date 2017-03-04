void setup() {
  size(1000, 1000);
}
int x = 100;
int x2 = 800;
int a = 700;
int a2 = 570;
int pX = 200;
int pY = 500;
float yVel = 0;
int gravity = 1;
boolean isJumping;
void draw() {
  background(255, 255, 255);
  fill (0, 0, 0);
  rect(pX, pY, 50, 70);
  println("py: " + pY);   
  println("yVel:" + yVel); 
  fill(255, 50, 50);
  rect (0, 570, 1000, 1000);
  if (isJumping) {
    pY-=yVel;
    yVel-=0.1;
  }
  if (pY>=500) {
   isJumping = false;
  yVel=0;
}
}
void keyPressed() {
  yVel = 5;
  isJumping = true;
}













//rect(x, a2, 300, 1000);
//x-=4;
//rect(x2, a, 300, 1000);
//rect (0, 570, 1000, 1000);
//x2-=4;
//if (x == -320) {
//a2 = (int)random(250, 800);
//x=1000;
//} 
//if (x2 == -300) {
//a = (int)random(250, 800);
//x2=1000;

