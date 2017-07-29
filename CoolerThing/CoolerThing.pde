import java.util.Random;
void setup() {
 size(1000, 1000); 
 background(0, 0, 0);
}
int randomX;
int randomY;
int random1;
int random2;
int random3;
int randomSize;
int x;
int y;
int squares;
int random4;
int random5;
int random6;
void draw() {
  //background(0, 0, 0);
  random4 = new Random().nextInt(255);
  random5 = new Random().nextInt(255);
  random6 = new Random().nextInt(255);
  randomX = new Random().nextInt(900);
  randomX+=50;
  randomY = new Random().nextInt(900);
  randomY+=50;
  random1 = new Random().nextInt(205);
  random1+=50;
  random2 = new Random().nextInt(205);
  random2+=50;
  random3 = new Random().nextInt(205);
  random3+=50;
  randomSize = new Random().nextInt(50);
  randomSize+=50;
  noStroke();
  fill(random1, random2, random3);
  ellipse(randomX, randomY, randomSize, randomSize);
  if (x<=0){
    for (int i=0; i<900; i++){
     x++; 
    }
  } else if (x>=900){
    for (int i=0; i<900; i++){
     x--; 
    }
  } if (y<=0){
    for (int i=0; i<900; i++){
     y++; 
    }
  } else if (y>=900){
    for (int i=0; i<900; i++){
     y--; 
    }
  } fill (random4, random5, random6);
  for (int i = 0; i<squares; i++) {
    noStroke();
    rect(x++, y++, 100, 100);
    x++;
    y++;
  }
   
}
void keyPressed() {
  squares++;
}