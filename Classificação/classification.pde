PImage img;
PImage imgP;
PImage imgN;

void setup(){  
  size(1920,620);
     img = loadImage("img.png");
     imgP = loadImage("img.png");
     imgN = loadImage("img.png");
     color co;
  float r, g, b;


float w1 = 149.3903; float w2 = -172.40575; float w3 = -10.99959;float bias = 1031.2423;
  for(int i=0; i<img.width; i++){
    for(int j = 0; j < img.height; j++){
      co = img.get(i,j);
      r = red(co);
      g = green(co);
      b = blue(co);

      float newS = (w1*r) + (w2*g) + (w3 * b)  + bias;
      if(newS > 0)
      {
         imgP.set(i,j, color(255,255,255));
      }
      else
      {
                 imgN.set(i,j, color(255,255,255));

      }
      
    }
  }
  imgP.save("Positive.png");
  imgN.save("Negative.png");
}
  void draw()
  {
    image(imgN,0,0,img.width/3,img.height/3);
    image(imgP, img.width/2 - (img.width/6),0, img.width/3, img.height/3);
  }
 
