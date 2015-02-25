
void setup() {
  size(625, 381);
  PImage img = loadImage('AllDemoninations.jpg")'
   image(img, 0, 0);
   loadPixels();
   int pixel = pixels[0];
   
  // colorToGray();
  // updatePixels();
  // save("AllDenominationsBW.jpg");
}

void colorToGray() {
  int i = 0;
