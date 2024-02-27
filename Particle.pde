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
