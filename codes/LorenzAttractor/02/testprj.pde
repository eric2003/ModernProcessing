float x = 0.01;
float y = 0;
float z = 0;

float a = 10;
float b = 28;
float c = 8.0/3.0;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
    size( 800, 600, P3D );
    //background( 0 );
}

void draw() {
  background( 0 );  
  float dt = 0.01;
  float dx = ( a * ( y - x ) ) * dt;
  float dy = ( x * ( b - z ) - y ) * dt;
  float dz = ( x * y  - c * z ) * dt;
  
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  points.add( new PVector( x, y, z ) );
  
  translate( width / 2, height / 2 );
  scale( 5 );
  stroke( 255 );
  
  for ( PVector v: points ) {
    point( v.x, v.y, v.z );
  }
  
  //println( x, y, z );
}
