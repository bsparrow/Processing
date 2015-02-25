PImage webImg;

void setup() {
  size(990, 557);
  String url = "tornado-chasing-julesburg-colorado_81035_990x557.jpg";
  // Load image from a web server
  webImg = loadImage(url, "jpg");
}

void draw() {
  background(0);
  image(webImg, 0, 0);
  loadPixels();
  for (int i = 0; i < pixels.length; ++i) {
    //pixels[i]=pixels[i] * -1;
    int pxl = pixels[i];
    float b = blue(pxl)*(1+cos(frameCount*6.01))/2;
    float r = red(pxl)*(1+cos(frameCount*0.02))/2;
    float g = green(pxl)*(1+cos(frameCount*6.01))/2;
    pixels[i] = color(r, g, b);
  }
  updatePixels();
}
