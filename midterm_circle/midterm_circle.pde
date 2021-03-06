ShapeSystem[] systems = new ShapeSystem[100];
//float count =0;
import processing.pdf.*;
void setup() {
  //size(640, 480);
  fullScreen();
  beginRecord(PDF, "circle_test.pdf");
  //background(107, 153, 173);
  background(0);
  //background(255);
  for (int i = 0; i <systems.length; i++) {
    systems[i] = new ShapeSystem(radians(i*30), i*width/300);
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
