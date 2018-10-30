class ShapeSystem {
  ArrayList<Shape> shapes;
  float beginAngle;
  float moveAngle;
  float radians;
  color colorR;
  float r, g, b, o;
  float change, de;
  float xoff = 0;

  ShapeSystem(float _begin, float _rad) {
    shapes = new ArrayList<Shape>();
    beginAngle = _begin;
    moveAngle = _begin;
    radians = _rad;
    o = 40;
    de = random(3);
    if (de<1) {
      r = 0;
      g = 255;
      b= 150;
    } else if (de<2) {
      r = 150;
      g = 0;
      b = 255;
    } else {
      r = 255;
      g = 150;
      b = 0;
    }
  }

  void addShape() {
    if (moveAngle>beginAngle-QUARTER_PI/2) {
      moveAngle-=.01;
    }

    if (de<1) {
      b+=10;
      g-=10;
    } else if (de<2) {
      r+=10;
      b-=10;
    } else {
      g+=10;
      r-=10;
    }
    
    o-=1;
    xoff +=.01;
    float n = noise(xoff);
    shapes.add(new Shape(n*radians*cos(moveAngle), n*radians*sin(moveAngle), r, g, b, o));   
    for (Shape s : shapes) {
      s.display();
    }
  }

  //void changeColor() {



  //}
}
