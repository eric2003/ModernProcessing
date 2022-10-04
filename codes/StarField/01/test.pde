class Star
{
  float x;
  float y;
  float z;
  Star(){
    x = random(0,width);
    y = random(0,height);
    z = random(0,width);
  }
  void update(){
  };
  void show(){
    fill(255);
    noStroke();
    ellipse( x, y, 8, 8 );
  };
};

Star[] stars = new Star[100];

void setup() {
    size(400, 400); 
    for( int i = 0; i < stars.length; i ++ ) {
      stars[i] = new Star();
    }
}

void draw() {
    background(0);
    for( int i = 0; i < stars.length; i ++ ) {
      stars[i].update();
      stars[i].show();
    }    
}
