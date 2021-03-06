// global variables (can be used everywhere below)
Cactus c1;      //makes a place in memory to keep cactus object
Dinosaur d1;    //makes a place in memory to keep dino object
float gravity;  // gravity
float distance; // track distance between dino and a cactus

// this function runs once only
void setup() {

  // draw the canvas
  size(800, 200);

  c1 = new Cactus (900, -0.1, -1);  // create cactus object
  d1 = new Dinosaur (0, 170, 0);    // craete dino object

  // set gravity
  gravity = 0.075;
}

// this function runs repeatedly
void draw() {

  // background clears each time draw() function loops
  background(255);

  // Re-draw sprites
  d1.update(gravity);
  c1.update(d1);    

}

// respond to keypress 
void keyPressed() {
  if (d1.getY() == 170) {
    d1.setA(-1);
  }
}