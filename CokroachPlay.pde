ArrayList<Cokroach> coks;
PImage img;

void setup() {
  size(800, 800);
  //fullScreen();
  coks = new ArrayList<Cokroach>();
  img = loadImage("kecoa.png");
}

void draw() {
  background(255);
  for(Cokroach c : coks) {
    c.live();
  }
  
  fill(51);
  textSize(16);
  text("nums: " + coks.size(), 50, 750); 
}

void mouseClicked() {
  if(mouseButton == LEFT) {
    coks.add(new Cokroach(img, mouseX, mouseY));
  }
}
