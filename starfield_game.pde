PImage img;
float dia = 5;
int starNum=1;
int counter= 0;
ArrayList<Particle> stars;
Particle part;
void setup() {
  img = loadImage("Spaceship.png");
  stars = new ArrayList<Particle>();
  size(500, 500);
  frameRate(20);
}
void draw()
{
  background(0);
  showstars();
  createstars();
}

void showstars() {
  for (Particle p : stars) {
    p.show();
    p.move();
  }
}
void createstars() {
  for (int i=0; i < starNum; i++) {
    part = new Particle();
    stars.add(part);
  }
}
void mouseClicked() {
  stars.add(new Spaceship());
}
