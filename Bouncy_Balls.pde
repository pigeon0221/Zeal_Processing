goutte[] gouttes = new goutte[0];



float theta; 
import ddf.minim.*;
 boolean direction=true;
Minim minim;
AudioPlayer song;

int moveup=1000;

float treeMorph=0;
int y=50;
float[][] fire = new float [100000][15];
float currentflamef, nextflamef;
int currentflame=0, nextflame;
float val1=random(256);
float val2=random(256);
float val3=random(256);

boolean hitground=false;
void setup() {
    // file = new SoundFile(this, "Z.mp3");
  //file.play();
  size(1000, 1000);
   if(millis()<30000){
  frameRate(126);
   }
   if(millis()>33000){
  frameRate(5);
   }
  colorMode(RGB, 255, 255, 255, 100);

  rectMode(CENTER);
  smooth();
  noStroke();

minim = new Minim(this);
 
  // this loads mysong.wav from the data folder
  song = minim.loadFile("Z.mp3");
  song.play();
      
}

void draw() {
  background(0,0,0,0);
  

  if(millis()<33000){
    create_fire();
    update_fire(); 
    draw_fire();
  
  Circle(50);
  Circle(950);
  }
  if(millis()>4000){
  Circle(150);
  Circle(850);
  }
  if(millis()>8000){
  Circle(250);
  Circle(750);
  }
  if(millis()>12000){
  Circle(350);
  Circle(650);
  }
  if(millis()>16900){
  Circle(450);
  Circle(550);
  }
  if(millis()>33000){
    clear();
  }

 
 

 
 

if(millis()>16900){
  int n=1;
 
   
  
  for (int a=0; a<n; a++) {
    new goutte();
  }
  for (int a=0; a<gouttes.length; a++) {
    gouttes[a].dessine();
  }
  while (gouttes[0].l>245) {
    gouttes = (goutte[]) subset(gouttes, 1);
  }
}
 if(millis()>34500){
    create_fire();
    update_fire(); 
    
  }
  if(millis()>35500){
  if(millis()>35000){  
  fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>37000){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
   if(millis()>39000){  
    fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>41000){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
   if(millis()>43000){  
    fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>45000){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
   if(millis()>47000){  
    fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>49000){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
   if(millis()>50000){  
    fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>50500){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>51000){  
    fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>51500){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
   if(millis()>53500){  
    fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>55500){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>57500){  
    fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>59500){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>61500){  
    fill(255);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(0);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
  if(millis()>63500){  
  fill(0);
  rect(200,200,100,10);
  rect(200,220,10,120);
  fill(255);
  rect(800,200,100,10);
  rect(800,220,10,120);
  }
   
     draw_fire();
      strokeWeight(3);
   stroke(255);
  // Let's pick an angle 0 to 90 degrees based on the mouse position
  float a = treeMorph;
  
  if(treeMorph<90 && direction==true){
    treeMorph=treeMorph+.5;
  }
  else{
    direction=false;
    treeMorph=treeMorph-.5;
  }
  if(treeMorph==0){
     direction=true;
  }
  
  
  // Convert it to radians
  theta = radians(a);
  // Start the tree from the bottom of the screen
  translate(width/2,height);
  // Draw a line 120 pixels
  line(0,0,0,-250);
  // Move to the end of that line
  translate(0,-250);
  // Start the recursive branching!
  branch(290);
  
  
  
  }
  
  
 
  if(millis()<16900){
  strokeWeight(0);
  }
  else{
    strokeWeight(1);
  }
  
  if(millis()>66000){  
  clear();
  }
  //2nd Break
  
}



void Circle(int x) {

  

  if (y<950 && hitground==false) {
    fill(255, val1, val2, val3);
    ellipse(x, y, 100, 100);
    y=y+1;
  } else {
    fill(255, val1, val2, val3);
    ellipse(x, y, 100, 100);
    hitground=true;
    y=y-1;
  }
  if (y==50) {
    val1=random(256);
    val2=random(256);
    val3=random(256);  
    if(millis()>13500){
    
    val1=(0);
    val2=(0);
    val3=(0);
    
  }
    hitground=false;
  }
  if (y==950) {
    val1=random(256);
    val2=random(256);
    val3=random(256);
      if(millis()>15000){
    
    val1=(0);
    val2=(0);
    val3=(0);
    
  }
  }
}










void update_fire() {
  for (int flame=0; flame<100000; flame++) {
    if (fire[flame][0]==1) {

      if (get(int(fire[flame][1]), int(fire[flame][2]))>200) {
        fire[flame][0]=0;
      }
      fire[flame][1]=fire[flame][1]+fire[flame][5]*cos(fire[flame][3]);
      fire[flame][2]=fire[flame][2]+fire[flame][5]*sin(fire[flame][3]);
    }
    fire[flame][7]+=1;
    if (fire[flame][7]>fire[flame][6]) {
      fire[flame][0]=0;
    }
  }
}
void draw_fire() {
  for (int flame=0; flame<currentflame; flame++) {
    if (fire[flame][0]==1) {
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
  if(millis()>34500){
    clear();
  }
  nextflame=currentflame+10;
  for (int flame=currentflame; flame<nextflame; flame++) {
    fire[flame][0]=1;
    if(millis()<33000){
     fire[flame][1]=500;
    fire[flame][2]=1000;
    fire[flame][9]=val1;//red
    fire[flame][10]=val2;//green
    }
    if(millis()>34500){
     fire[flame][1]=500;
    fire[flame][2]=0;
    fire[flame][9]=200;//red
    fire[flame][10]=0;//green
    }
    fire[flame][3]=random(0, PI*2);//angle
    fire[flame][4]=random(200, 200);//size
    fire[flame][5]=random(.5, 1);//speed
    fire[flame][6]=random(5, 20)/fire[flame][5];//maxlife
    fire[flame][7]=0;//currenlife
    if(millis()<16900){
    fire[flame][8]=PI;
    }
     else{
    fire[flame][8]=random(0,TWO_PI);
    
    }
    
  }
  currentflame=nextflame;
}


class goutte {
  int x, y;
  float l;
  goutte() {
    x = floor(random(width));
    y = floor(random(height));
    l=0;
     if(millis()<33000){
    line(x, 0, x, y);
     }
    gouttes = (goutte[]) append(gouttes, this);
  }
  void dessine() {
    l+=1; 
    l*=1.08;
    if(millis()<33000){
    stroke(255, (255-l));
    }
    if(millis()>35500){
      fill(0);
     ellipse(x,y, l, l*0.3);
    }
  }
}



void branch(float h) {
  // Each branch will be 2/3rds the size of the previous one
  h *= 0.66;
  
  // All recursive functions must have an exit condition!!!!
  // Here, ours is when the length of the branch is 2 pixels or less
  if (h > 2) {
    pushMatrix();    // Save the current state of transformation (i.e. where are we now)
    rotate(theta);   // Rotate by theta
    line(0, 0, 0, -h);  // Draw the branch
    translate(0, -h); // Move to the end of the branch
    branch(h);       // Ok, now call myself to draw two new branches!!
    popMatrix();     // Whenever we get back here, we "pop" in order to restore the previous matrix state
    
    // Repeat the same thing, only branch off to the "left" this time!
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}