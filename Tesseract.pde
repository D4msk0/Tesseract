PVector[] points = new PVector[8];
float angle;

void setup() {
    size(600, 400, P3D);
    points[0] = new PVector( -100, -100, -100);
    points[1] = new PVector(100, -100, -100);
    points[2] = new PVector(100, 100, -100);
    points[3] = new PVector( -100, 100, -100);
    points[4] = new PVector( -100, -100,100);
    points[5] = new PVector(100, -100, 100);
    points[6] = new PVector(100, 100, 100);
    points[7] = new PVector( -100, 100, 100);
    
    
}

void draw() {
    background(0);
    translate(width/2, height/2);
    rotateY(angle);

    for (PVector v : points){
        stroke(255);
        strokeWeight(16);
        noFill();
        point(v.x, v.y, v.z);
    }

    for (int i = 0; i <4; i++){
        connect(i, (i+1)%4, points);
        connect(i+4, ((i+1) %4)+4, points);
        connect(i, i+4, points);
    }

    angle += 0.01;

    
}

void connect(int i, int j, PVector[] points){
    PVector a = points[i];
    PVector b = points[j];
    strokeWeight(1);
    stroke(255);
    line(a.x, a.y, a.z, b.x, b.y, b.z);
}