float x2 = 0.0;
float y2 = 5.0;



void setup(){
	size(400,400);
	pixelDensity(2);
}

void draw(){
	
	background(150);
	noFill();
	bezier(32,20,x2,y2,80,75,30,75);
	// draw the control points
	//line(32,20,x2,y2);

	float delta = random(-5,5);
	x2 += delta;
	y2 += delta;
	
}

/*
void setup(){
size(100, 100, P3D);
noFill();
}
void draw(){
background(204);
camera(mouseX, 35.0, 120.0, 50.0, 50.0, 0.0, 
       0.0, 1.0, 0.0);
translate(50, 50, 0);
rotateX(-PI/6);
rotateY(PI/3);
box(45);
}
*/