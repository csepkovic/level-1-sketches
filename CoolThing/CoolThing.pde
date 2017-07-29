import java.util.Random;
void setup() {
  size(1000,1000);
}
int x;
int y;
int squares;
void draw() {
  int random4 = new Random().nextInt(255);
  int random5 = new Random().nextInt(255);
  int random6 = new Random().nextInt(255);
  background(0, 0, 0);
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
  for (int i = 0; i<squares; i++) {
    noStroke();
    rect(x++, y+400, 100, 100);
    x++;
    y++;
  }
  for (int i = 0; i<squares; i++) {
    noStroke();
    rect(x+400, y++, 100, 100);
    x++;
    y++;
  }
}

void keyPressed() {
  squares++;
}