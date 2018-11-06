// add your Reference_Arc code here
Rain r1;

int numDrops = 1;
Rain[] drops = new Rain[numDrops]; // Declare and create the array

void setup() {
  size(500, 500);
  background(0, 0, 0, 99);
  smooth();
  noStroke();


  //Loop through array to create each object
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
  }
}

void draw() {
  noStroke();
  fill(100,150,200);
  rect(0, 0, 500, 500);
  fill(100,100,100);
  rect(0,400,500,100);
  fill(255,255,255);
  stroke(0,0,0);
  strokeWeight(6);
  ellipse(450,350,10,10);
  line(450,375,450,355);
  line(450,375,460,400);
  line(450,375,440,400);
  line(450,365,440,360);
  stroke(0,0,255);
  strokeWeight(8);
  noFill();
  arc(500,400,200,200,radians(180),radians(270));

  //Loop through array to use objects.
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
  }
}


class Rain {
  float r = random(500);
  float y = random(-height);

  void fall() {
    y = y + 7;
    if (mousePressed) {
      noFill();
      stroke(0,255,0);
      arc(y+50, y-110, 100, 200, radians(0), radians(120));
     
      
    } else {
     
    }
    if (y>height) {
      r = random(500);
      y = random(-200);
    }
  }
}
