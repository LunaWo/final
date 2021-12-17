import xyscope.*;
import ddf.minim.*; 

XYscope xy;
int marktime = 0;
int timeout = 1000;

void setupXYscope() {
  // initialize XYscope with default sound out
  xy = new XYscope(this);
}


void updateXYscope() {
  // build audio from shapes
  xy.buildWaves();

  // draw all analytics
  //xy.drawAll();
}

void setup() {
  size(900, 600, P2D);
  setupXYscope();
}

void drawkeys(){
  fill(255,255,255);
  rect(50,350,100,200);
  fill(0,0,0);
  textSize(50);
  text('C',75, 450);
  
  fill(255,255,255);
  rect(150,350,100,200);
  fill(0,0,0);
  textSize(50);
  text('D',175, 450);
  
  fill(255,255,255);
  rect(250,350,100,200);
  fill(0,0,0);
  textSize(50);
  text('E',275, 450);
  
  fill(255,255,255);
  rect(350,350,100,200);
  fill(0,0,0);
  textSize(50);
  text('F',375, 450);
  
  fill(255,255,255);
  rect(450,350,100,200);
  fill(0,0,0);
  textSize(50);
  text('G',475, 450);
  
  fill(255,255,255);
  rect(550,350,100,200);
  fill(0,0,0);
  textSize(50);
  text('A',575, 450);
  
  fill(255,255,255);
  rect(650,350,100,200);
  fill(0,0,0);
  textSize(50);
  text('B',675, 450);
  
  fill(255,255,255);
  rect(750,350,100,200);
  fill(0,0,0);
  textSize(50);
  text("C#",775, 450);
}

void draw() {
  background(127);
  drawkeys();
  if(keyPressed){
    marktime = millis();
    if (key == 'c') { // c
      //xy.clearWaves();
      xy.line(50, 100, 150, 100);
      fill(255,0,0);
      rect(50,350,100,200);
      fill(0,0,0);
      textSize(50);
      text('C',75, 450);
    } else if (key == 'd') { // d
      //xy.clearWaves();
      
      fill(0,255,0);
      rect(150,350,100,200);
      fill(0,0,0);
      textSize(50);
      text('D',175, 450);
      xy.line(150, 150, 250, 150);

    }else if (key == 'e') { // d
      //xy.clearWaves();
      
      fill(0,0,255);
      rect(250,350,100,200);
      fill(0,0,0);
      textSize(50);
      text('E',275, 450);
      xy.line(250, 150, 350, 150);

    }
    
     else if (key == 'f') { // d
      //xy.clearWaves();
      
      fill(255,255,0);
      rect(350,350,100,200);
      fill(0,0,0);
      textSize(50);
      text('F',375, 450);
      xy.line(350, 150, 450, 150);

    }
    
     else if (key == 'g') { // d
      //xy.clearWaves();
      
      fill(0,255,255);
      rect(450,350,100,200);
      fill(0,0,0);
      textSize(50);
      text('G',475, 450);
      xy.line(450, 150, 550, 150);

    }
    
     else if (key == 'a') { // d
      //xy.clearWaves();
      
      fill(255,0,255);
      rect(550,350,100,200);
      fill(0,0,0);
      textSize(50);
      text('A',575, 450);
      xy.line(550, 150, 650, 150);

    }
    
     else if (key == 'b') { // d
      //xy.clearWaves();
      
      fill(128,255,128);
      rect(650,350,100,200);
      fill(0,0,0);
      textSize(50);
      text('B',675, 450);
      xy.line(650, 150, 750, 150);

    }
    
     else if (key == 'C') { // d
      //xy.clearWaves();
      
      fill(50,50,255);
      rect(750,350,100,200);
      fill(0,0,0);
      textSize(50);
      text("C#",775, 450);
      xy.line(750, 150, 850, 150);

    }
  }

  updateXYscope();
  if (millis() > marktime + timeout) {
    xy.clearWaves();
  }

  surface.setTitle("" + frameRate);
}
