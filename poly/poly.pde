float x2 = 0.0;
float y2 = 5.0;
float z2 = 0.0;
float dCam = PI;

/*

void setup(){
	size(400,400,P3D);
	pixelDensity(2);
	background(150);
}

void draw(){
	strokeWeight(0.1);
	stroke(255,10);
	noFill();
	//bezier(32,20,10,x2,y2,z2,80,75,50,30,75,32);
	camera(20.0, 35.0, 120.0, 50.0, 50.0, 0.0, 
       0.0, 1.0, 0.0);
	translate(50, 50, 0);
	dCam+=0.1;
	rotateX(dCam*PI/6);
	rotateY(dCam*-PI/3);
	// draw the control points
	//line(32,20,x2,y2);
	box(45);
	float delta = random(-5,5);
	//x2 += delta;
	//y2 += delta;
	//z2 += delta;
	
}
*/

import peasy.*;

PeasyCam cam;

void setup() {
  size(500,500,P3D);
  cam = new PeasyCam(this, 200);
  cam.setMinimumDistance(0);
  cam.setMaximumDistance(100);
}
void draw() {
  rotateX(-.5);
  rotateY(-.5);
  background(255);
  fill(255,0,0);
  //box(30);
  
  pushMatrix();
  translate(0,0,20);
  noFill();
  //box(5);
  bezier(0,0,10,x2,y2,z2,80,75,50,30,75,32);
  float delta = random(-5,5);
	x2 += delta;
	y2 += delta;
	z2 += delta;
  popMatrix();


}

