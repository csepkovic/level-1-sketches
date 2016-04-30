import ddf.minim.*;
Minim minim;
AudioPlayer song;
PImage pictureOfRecord;
void rotateImage(PImage image, int amountToRotate) {
 translate (width/2, height/2);
 rotate(amountToRotate*TWO_PI/360);
 translate(-image.width/2,-image.height/2); 
}
int imageAngle = 0;
void setup (){
  minim = new Minim(this);
  song = minim.loadFile("Shrek.mp3", 512);
  pictureOfRecord= loadImage("record.png");
  size(pictureOfRecord.width, pictureOfRecord.height);
}
void draw (){
  if (mousePressed){
  imageAngle++;
  song.play();
  } else {
   song.pause(); 
  }
  rotateImage(pictureOfRecord, imageAngle);
  image(pictureOfRecord, 0, 0);
}
