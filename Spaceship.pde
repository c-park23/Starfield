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
