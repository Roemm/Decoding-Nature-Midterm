class Shape {
  float scale =20;
  float x, y;
  float r, g, b, o;

  Shape(float _x, float _y, float _r, float _g, float _b, float _o) {
    x = _x;
    y = _y;
    r = _r;
    g = _g;
    b = _b;
    o = _o;
  }

  void display() {
    stroke(r, g, b, o);
    noFill();
    rect(x, y, scale, scale);
  }
}
