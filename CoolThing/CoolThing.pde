import java.util.Random;
void setup() {
  size(500,500);
}
int x;
int y;
int squares;
void draw() {
  int random = new Random().nextInt(255);
  int random1 = new Random().nextInt(255);
  int random2 = new Random().nextInt(255);
  background(0, 0, 0);
  if (x<=0){
    for (int i=0; i<450; i++){
     x++; 
    }
  } else if (x>=450){
    for (int i=0; i<450; i++){
     x--; 
    }
  } if (y<=0){
    for (int i=0; i<450; i++){
     y++; 
    }
  } else if (y>=450){
    for (int i=0; i<450; i++){
     y--; 
    }
  } fill (random, random1, random2);
  for (int i = 0; i<squares; i++) {
  rect(x++, y++, 50, 50);
  x++;
  y++;
  }
}

void mouseClicked() {
  squares++;
}