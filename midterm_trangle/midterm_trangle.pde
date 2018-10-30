ShapeSystem[] systems = new ShapeSystem[10];
//float count =0;
import processing.pdf.*;
void setup() {
  //size(640, 480);
  fullScreen();
  //size(1280, 960);
  beginRecord(PDF, "trangle_test6.pdf");
  //background(107, 153, 173);
  background(0);
  //background(255);
  for (int i = 0; i <systems.length; i++) {
    systems[i] = new ShapeSystem(radians(i*90), i*width/20);
  }
  //frameRate(5);
}

void draw() {
  //blendMode(ADD);
  translate(width/2, height/2);//;
  //rotate(PI/6);
  for (ShapeSystem ss : systems) {
    //ss.changeColor();
    ss.addShape();
  }
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}
