float a, b, c;
float centerX, centerY;
float spin;
float hyp, largeSide;

void setup() {
  size(displayWidth, displayHeight);
  smooth();
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  
  b = map(mouseX, 0, width, 1, 200);
  a = map(mouseY, 0, height, 1, 200);
  c = sqrt(sq(a) + sq(b));
  largeSide = a + b;
  hyp = sqrt(sq(c) + sq(c));
  centerX = (width/2);
  centerY = (height/2);
  
  // draw rectangles for a^2 and b^2
  rect(centerX, centerY, a, a);
  rect(centerX, centerY, -b, -b);
  
  // draw lines for the largest (c^2) rectangle
  line(centerX + a, centerY, centerX, centerY - b);
  line(centerX + a, centerY, centerX + largeSide, centerY - a);
  line(centerX + b, centerY - largeSide, centerX, centerY - b);
  line(centerX + b, centerY - largeSide, centerX + largeSide, centerY - a);
  
  // draw lines connecting vertices of squares to vertices of triangles
  line(centerX + a, centerY + a, centerX, centerY - b);
  line(centerX + a, centerY, centerX - b, centerY - b);
  line(centerX, centerY, centerX + largeSide, centerY - a);
  line(centerX, centerY, centerX + b, centerY - largeSide);
}