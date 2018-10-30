ShapeSystem[] systems = new ShapeSystem[100];
//float count =0;

void setup() {
  //size(640, 480);
  fullScreen();
  //background(107, 153, 173);
  background(0);
  for (int i = 0; i <systems.length; i++) {
    systems[i] = new ShapeSystem(radians(-45+i*60), 20+i*width/50);
  }
  //frameRate(5);
}

void draw() {
  blendMode(ADD);
  translate(width/2, height/8);//;
  rotate(PI/6);
  for (ShapeSystem ss : systems) {
    //ss.changeColor();
    ss.addShape();
  }
}
