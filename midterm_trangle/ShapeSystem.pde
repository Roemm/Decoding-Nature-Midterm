class ShapeSystem {
  ArrayList<Shape> shapes;
  float beginAngle;
  float moveAngle;
  float radians;
  float colorR;
  float r, g, b, o;
  float change, de;
  float xoff = 0;

  ShapeSystem(float _begin, float _rad) {
    shapes = new ArrayList<Shape>();
    beginAngle = _begin;
    moveAngle = _begin;
    radians = _rad;
    o = 40;
    colorR = 5;
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
      moveAngle-=1;
    }

    if (de<1) {
      b+=colorR;
      g-=colorR;
    } else if (de<2) {
      r+=colorR;
      b-=colorR;
    } else {
      g+=colorR;
      r-=colorR;
    }

    o-=1;
    xoff +=1;
    float n = noise(xoff);
    if (o>=0) {
      shapes.add(new Shape(n*radians*cos(moveAngle), n*radians*sin(moveAngle), r, g, b, o));
    }

    for (int i = shapes.size()-1; i >= 0; i--) {
      Shape s = shapes.get(i);
      s.display();
      if (s.isDead()) {
        shapes.remove(i);
      }
    }
    
  }

  //void changeColor() {



  //}
}
