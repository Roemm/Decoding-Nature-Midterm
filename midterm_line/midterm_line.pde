ShapeSystem[] systems = new ShapeSystem[50];
//float count =0;
import processing.pdf.*;
void setup() {
  size(1280,960);
  //fullScreen();
  beginRecord(PDF, "line_test.pdf");
  background(0);
  //background(107, 153, 173);
  for (int i = 0; i <systems.length; i++) {
    systems[i] = new ShapeSystem(radians(i*30), i*width/100);
  }
  //frameRate(5);
}

void draw() {
  //blendMode(LIGHTEST);
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
