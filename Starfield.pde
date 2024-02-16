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
class Particle {
  double myX, myY, myAngle, mySpeed;
  float r, g, b, a, d;
  Particle() {
    myAngle= Math.random()*(2*Math.PI);
    mySpeed= Math.random()* 5;
    myX= width/2;
    myY= height/2;
    r =(float)(Math.random()*256);
    g =(float)(Math.random()*256);
    b =(float)(Math.random()*256);
    d = dia;
    a = 255;
  }
  void move() {
    counter++;
    a=map((float)counter*(float)mySpeed,(float)0, (float)height, (float)30, (float)255);
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show() {
    fill (r, b, g, a);
    ellipse((float)myX, (float)myY, d, d);
  }
}
class Spaceship extends Particle {
  Spaceship() {
    myX = mouseX;
    myY= mouseY;
  }
  void move() {
    if (keyCode == UP) {
      myY-=2;
    } else if (keyCode == DOWN) {
      myY+=2;
    }else if (keyCode == LEFT) {
      myX-=2;
    }else if (keyCode == RIGHT) {
      myX+=2;
    }
  }
  void show() {
    image(img, (float)myX, (float)myY, (float)40, (float)40);
  }
}
