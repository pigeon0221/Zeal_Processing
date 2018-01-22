import ddf.minim.*;
goutte[] gouttes = new goutte[0];
float scaler = 1;
float acircle = 0, mw, mh, rcircle = 100;
float nC = 36;
boolean addMode = false;
float zoom = 1;
float end = 200000;
boolean hitRoof = false;
boolean hitRight = false;
boolean hitLeft = false;
int rvalue = 1000;
float kick2 = 83000;
float drop = 132200;
float closing = 165000;
float tcube;
float thetacube;
int maxFrameCount = 75;
float buildup2 = 100000;
int acube = 101;
int spacecube = 100;
boolean expand = false;
color c1;
color c2;
float firstKick = 17300;
float theta;
boolean directionTree = true;
Minim minim;
AudioPlayer song;
int moveup = 1000;
float treeMorph = 0;
int y = 50;
float[][] fire = new float[100000][15];
float currentflamef, nextflamef;
int currentflame = 0, nextflame;
float val1 = random(256);
float val2 = random(256);
float val3 = random(256);
boolean hitground = false;
int quantity = 300;
float[] xPosition = new float[quantity];
float[] yPosition = new float[quantity];
int[] flakeSize = new int[quantity];
int[] direction = new int[quantity];
int minFlakeSize = 3;
int maxFlakeSize = 12;

void setup() {
  scale(zoom);
  size(1000, 1000, P3D);
  mw = width / 2;
  mh = height / 2;
  if (millis() < 30000) {
    frameRate(120);
  }
  if (millis() > 33000) {
    frameRate(5);
  }
  colorMode(RGB, 255, 255, 255, 100);

  rectMode(CENTER);
  smooth();
  noStroke();

  for (int i = 0; i < quantity; i++) {
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    direction[i] = round(random(0, 1));
  }

  minim = new Minim(this);

  // this loads the song
  song = minim.loadFile("Z.mp3");
  song.play();
}

void draw() {

  background(0, 0, 0, 0);

  translate(width / 2, height / 2); // use translate around scale
  scale(scaler);
  translate(-width / 2, -height / 2);

  if (millis() < 33000) {
    create_fire();
    update_fire();
    draw_fire();

    Circle(50);

    Circle(950);
  }
  if (millis() > 4000) {
    Circle(150);
    Circle(850);
  }
  if (millis() > 8000) {
    Circle(250);
    Circle(750);
  }
  if (millis() > 12000) {
    Circle(350);
    Circle(650);
  }
  if (millis() > firstKick) {
    Circle(450);
    Circle(550);
  }
  if (millis() > 33000) {
    clear();
  }

  if (millis() > firstKick) {
    int n = 1;

    for (int a = 0; a < n; a++) {
      new goutte();
    }
    for (int a = 0; a < gouttes.length; a++) {
      gouttes[a].dessine();
    }
    while (gouttes[0].l > 245) {
      gouttes = (goutte[]) subset(gouttes, 1);
    }
  }
  if (millis() > 34500) {
    create_fire();
    update_fire();
  }
  if (millis() > 35500) {
    if (millis() > 35000) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 37000) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 39000) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 41000) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 43000) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 45000) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 47000) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 49000) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 49500 + 1000) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 50000 + 1000) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 50500 + 1000) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 51000 + 1000) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 51500 + 1000) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 54500) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 56500) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 58500) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 60500) {
      fill(255);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(0);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }
    if (millis() > 62500) {
      fill(0);
      rect(200, 200, 100, 10);
      rect(200, 220, 10, 120);
      fill(255);
      rect(800, 200, 100, 10);
      rect(800, 220, 10, 120);
    }

    draw_fire();
    strokeWeight(1);
    stroke(255);
    // Let's pick an angle 0 to 90 degrees based on the mouse position
    float a = treeMorph;

    if (treeMorph < 90 && directionTree == true) {
      treeMorph = treeMorph + .2;
    } else {
      directionTree = false;
      treeMorph = treeMorph - .2;
    }
    if (treeMorph == 0) {
      directionTree = true;
    }

    // Convert it to radians
    theta = radians(a);
    // Start the tree from the bottom of the screen
    translate(width / 2, height);
    // Draw a line 120 pixels
    line(0, 0, 0, -250);
    // Move to the end of that line
    translate(0, -250);
    // Start the recursive branching!
    branch(290);
  }

  if (millis() < firstKick) {
    strokeWeight(0);
  } else {
    strokeWeight(1);
  }

  if (millis() > 65500) {
    clear();
  }

  if (millis() > 66500) {
    strokeWeight(0);
    fill(0);
    clear();
    strokeWeight(1);
    fill(255);
    translate(-width / 2, -height);
    translate(0, 250);

    rcircle = rvalue;
    acircle++;
    if (millis() > closing) {
      rcircle = .000001;
    }
    for (int i = 1; i <= nC; i++) {
      //fill(200,10+sin(radians(acircle+(360/nC)*i))*55,50+cos(acircle+(360/nC)*i)*55);

      if (millis() < 68000) {
        fill(0);
      }
      if (millis() > 68000) {
        fill(255);
      }
      if (millis() > drop) {
        fill(random(255), random(255), random(255));
      }

      ellipse(mw + sin(radians(acircle + (360 / nC) * i)) * rcircle, mh + cos(radians(acircle + (360 / nC) * i)) * rcircle, 10 * (rcircle / 100), 10 * (rcircle / 100));
    }

    if (rvalue > 400 && millis() < buildup2) {
      rvalue = rvalue - 1;
    }
    if (millis() > buildup2 && rvalue > 10 && expand == false) {
      rvalue = rvalue - 1;
      if (rvalue == 10) {
        expand = true;
      }
    }
    if (expand == true && rvalue < 350 && millis() > drop - 1000) {
      rvalue += 10;
    }
    if (millis() > drop && millis() < closing) {
      acube = 151;
      spacecube = 150;
      scaler += 0.02;
    }
    if (millis() > closing) {
      if (scaler > 1) {
        scaler -= 0.04;
      } else {
        fill(0, 255, 0);
        textSize(50);
        textAlign(CENTER);
        text("Song: Tchami - Zeal", 500, 150);
        scaler -= 0.001;
        text("Video made by Alex Lazar", 500, 850);
        text("Made with Processing", 500, 950);
      }
    }

    if (millis() < closing) {
      for (int i = 0; i < xPosition.length; i++) {
        if (millis() > drop) {
          fill(255, random(255), random(255), random(255));
        }
        if (millis() < drop) {
          fill(255);
        }

        ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);

        if (direction[i] == 0) {
          xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
        } else {
          xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
        }

        yPosition[i] += flakeSize[i] + direction[i];

        if (xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
          xPosition[i] = random(0, width);
          yPosition[i] = -flakeSize[i];
        }
      }
    }
  }
  //2nd Break

  if (millis() > kick2) {

    //Circle Spinning

    translate(width / 2, height / 2);
    tcube = (float) frameCount / maxFrameCount;
    theta = TWO_PI * tcube;

    // lights
    directionalLight(245, 245, 245, 300, -200, -200);
    ambientLight(240, 240, 240);

    // rotate the whole cube
    rotateY(radians(145));
    rotateX(radians(45));

    // 3 nested for loops to create sides  
    for (int x = -spacecube; x <= spacecube; x += 20) {
      for (int y = -spacecube; y <= spacecube; y += 20) {
        for (int z = -spacecube; z <= spacecube; z += 200) {

          // map size of small cubes with offset
          float offSet = ((x * y * z)) / acube;
          float sz = map(sin(-theta + offSet), -1, 1, -0, 20);

          if (millis() < drop) {
            c1 = color(255, 255, 255);
            c2 = color(0, 0, 0);
          }
          if (millis() > drop) {
            c1 = color(random(255), random(255), random(255));
            c2 = color(random(255), random(255), random(255));
          }

          if ((x * y * z) % 30 == 0) {
            fill(c1);
            stroke(c2);
          } else {
            fill(c2);
            stroke(c1);
          }

          // small blocks, 3 times to create cube
          shp(x, y, z, sz);
          shp(y, z, x, sz);
          shp(z, x, y, sz);
        }
      }
    }
  }

  if (millis() > end) {
    clear();
  }
}

void Circle(int x) {

  if (y < 950 && hitground == false) {
    fill(255, val1, val2, val3);
    if (millis() > drop) {
      fill(255, random(255), random(255), random(255));
    }
    ellipse(x, y, 100, 100);
    y = y + 1;
  } else {
    fill(255, val1, val2, val3);
    if (millis() > drop) {
      fill(255, random(255), random(255), random(255));
    }
    ellipse(x, y, 100, 100);
    hitground = true;
    y = y - 1;
  }
  if (y == 50) {
    val1 = random(256);
    val2 = random(256);
    val3 = random(256);
    if (millis() > 13500) {
      val1 = (0);
      val2 = (0);
      val3 = (0);
    }
    hitground = false;
  }
  if (y == 950) {
    val1 = random(256);
    val2 = random(256);
    val3 = random(256);
    if (millis() > 15000) {
      val1 = (0);
      val2 = (0);
      val3 = (0);
    }
  }
}

void update_fire() {
  for (int flame = 0; flame < 100000; flame++) {
    if (fire[flame][0] == 1) {

      if (get(int(fire[flame][1]), int(fire[flame][2])) > 200) {
        fire[flame][0] = 0;
      }
      fire[flame][1] = fire[flame][1] + fire[flame][5] * cos(fire[flame][3]);
      fire[flame][2] = fire[flame][2] + fire[flame][5] * sin(fire[flame][3]);
    }
    fire[flame][7] += 1;
    if (fire[flame][7] > fire[flame][6]) {
      fire[flame][0] = 0;
    }
  }
}
void draw_fire() {
  for (int flame = 0; flame < currentflame; flame++) {
    if (fire[flame][0] == 1) {
      fill(fire[flame][9], fire[flame][10], 0, 40);
      pushMatrix();
      translate(fire[flame][1], fire[flame][2]);
      rotate(fire[flame][8]);
      rect(0, 0, fire[flame][4], fire[flame][4]);
      popMatrix();
    }
  }
}
void create_fire() {
  if (millis() > 34500) {
    clear();
  }
  nextflame = currentflame + 10;
  for (int flame = currentflame; flame < nextflame; flame++) {
    fire[flame][0] = 1;
    if (millis() < 33000) {
      fire[flame][1] = 500;
      fire[flame][2] = 1000;
      fire[flame][9] = val1; //red
      fire[flame][10] = val2; //green
    }
    if (millis() > 34500) {
      fire[flame][1] = 500;
      fire[flame][2] = 0;
      fire[flame][9] = 200; //red
      fire[flame][10] = 0; //green
    }
    fire[flame][3] = random(0, PI * 2); //angle
    fire[flame][4] = random(200, 200); //size
    fire[flame][5] = random(.5, 1); //speed
    fire[flame][6] = random(5, 20) / fire[flame][5]; //maxlife
    fire[flame][7] = 0; //currenlife
    if (millis() < firstKick) {
      fire[flame][8] = PI;
    } else {

      fire[flame][8] = random(0, TWO_PI);
    }
  }
  currentflame = nextflame;
}

class goutte {
  int x, y;
  float l;
  goutte() {
    x = floor(random(width));
    y = floor(random(height));
    l = 0;
    if (millis() < 33000) {
      line(x, 0, x, y);
    }
    gouttes = (goutte[]) append(gouttes, this);
  }
  void dessine() {
    l += 1;
    l *= 1.08;
    if (millis() < 33000) {
      stroke(255, (255 - l));
    }
    if (millis() > 35500) {
      fill(0);
      ellipse(x, y, l, l * 0.3);
    }
  }
}

void branch(float h) {
  // Each branch will be 2/3rds the size of the previous one
  h *= 0.66;
  // Here, ours is when the length of the branch is 2 pixels or less
  if (h > 2) {
    pushMatrix(); // Save the current state of transformation (i.e. where are we now)
    rotate(theta); // Rotate by theta
    line(0, 0, 0, -h); // Draw the branch
    translate(0, -h); // Move to the end of the branch
    branch(h); // Ok, now call myself to draw two new branches!!
    popMatrix(); // Whenever we get back here, we "pop" in order to restore the previous matrix state
    // Repeat the same thing, only branch off to the "left" this time!
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}

void shp(float x, float y, float z, float d) {
  pushMatrix();
  translate(x, y, z);
  box(d);
  popMatrix();
}

/*void keyPressed() {    **Zooming for testing purposes**
  if (key == 'z') {
    scaler -= 0.1;
  } // smaller
  if (key == 'x') {
    scaler += 0.1;
  } // bigger
  if (key == 'c') {
    scaler = 1;
  } // reset scale
}    */