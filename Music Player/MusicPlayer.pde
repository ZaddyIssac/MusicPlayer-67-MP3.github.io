/* Music App, Final Project
*/
//
//Minim Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//
void setup() {
fullScreen();

float paperWidth = 14.2;
float paperHeight = 28;

float scaleFactor;
float offsetX;
float offsetY;

scaleFactor = min(displayWidth / paperWidth,
                  displayHeight / paperHeight);

offsetX = (displayWidth - paperWidth * scaleFactor) / 2;
offsetY = (displayHeight - paperHeight * scaleFactor) / 2;

background(255);
stroke(0);
fill(255);

// Song Title Outer Box
rect(offsetX + 3 * scaleFactor,
     offsetY + 0.5 * scaleFactor,
     8.4 * scaleFactor,
     2 * scaleFactor,
     3);

// Song Title Text Area
rect(offsetX + 4.8 * scaleFactor,
     offsetY + 0.5 * scaleFactor,
     5 * scaleFactor,
     1.3 * scaleFactor,
     3);

// Artist Name Box
rect(offsetX + 4.8 * scaleFactor,
     offsetY + 1.8 * scaleFactor,
     5 * scaleFactor,
     0.7 * scaleFactor,
     3);

// X Close Button
rect(offsetX + 13.1 * scaleFactor,
     offsetY + 0 * scaleFactor,
     1 * scaleFactor,
     1.4 * scaleFactor,
     3);

// X symbol
fill(0);
textAlign(CENTER, CENTER);
textSize(0.6 * scaleFactor);
text("X",
     offsetX + 13.1 * scaleFactor + 0.5 * scaleFactor,
     offsetY + 0 * scaleFactor + 0.7 * scaleFactor);

// Image Display Box
fill(255);
rect(offsetX + 1.3 * scaleFactor,
     offsetY + 15.5 * scaleFactor,
     11.4 * scaleFactor,
     11.4 * scaleFactor,
     3);

// Lyrics Section
rect(offsetX + 5.2 * scaleFactor,
     offsetY + 4.6 * scaleFactor,
     8.3 * scaleFactor,
     7.1 * scaleFactor,
     3);

// Progress Bar
rect(offsetX + 1.3 * scaleFactor,
     offsetY + 3 * scaleFactor,
     12 * scaleFactor,
     1.3 * scaleFactor,
     3);

// Play Box
rect(offsetX + 1.3  * scaleFactor,
     offsetY + 4.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

// Play symbol (triangle)
fill(0);
noStroke();
triangle(offsetX + 1.4 * scaleFactor,
         offsetY + 4.7 * scaleFactor,
         offsetX + 2.1 * scaleFactor,
         offsetY + 5.1 * scaleFactor,
         offsetX + 1.4 * scaleFactor,
         offsetY + 5.5 * scaleFactor);

// Pause Box
stroke(0);
fill(255);
rect(offsetX + 2.3 * scaleFactor,
     offsetY + 4.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

// Pause symbol (two bars)
fill(0);
noStroke();
rect(offsetX + 2.4 * scaleFactor,
     offsetY + 4.7 * scaleFactor,
     0.2 * scaleFactor,
     0.8 * scaleFactor);
rect(offsetX + 2.8 * scaleFactor,
     offsetY + 4.7 * scaleFactor,
     0.2 * scaleFactor,
     0.8 * scaleFactor);

// Fast Forward Box
stroke(0);
fill(255);
rect(offsetX + 1.3 * scaleFactor,
     offsetY + 5.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

// Fast forward symbol (double triangle)
fill(0);
noStroke();
triangle(offsetX + 1.35 * scaleFactor,
         offsetY + 5.7 * scaleFactor,
         offsetX + 1.75 * scaleFactor,
         offsetY + 6.1 * scaleFactor,
         offsetX + 1.35 * scaleFactor,
         offsetY + 6.5 * scaleFactor);
triangle(offsetX + 1.65 * scaleFactor,
         offsetY + 5.7 * scaleFactor,
         offsetX + 2.05 * scaleFactor,
         offsetY + 6.1 * scaleFactor,
         offsetX + 1.65 * scaleFactor,
         offsetY + 6.5 * scaleFactor);

// Fast Rewind Box
stroke(0);
fill(255);
rect(offsetX + 2.3 * scaleFactor,
     offsetY + 5.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

// Rewind symbol (double triangle reversed)
fill(0);
noStroke();
triangle(offsetX + 3.25 * scaleFactor,
         offsetY + 5.7 * scaleFactor,
         offsetX + 2.85 * scaleFactor,
         offsetY + 6.1 * scaleFactor,
         offsetX + 3.25 * scaleFactor,
         offsetY + 6.5 * scaleFactor);
triangle(offsetX + 2.95 * scaleFactor,
         offsetY + 5.7 * scaleFactor,
         offsetX + 2.55 * scaleFactor,
         offsetY + 6.1 * scaleFactor,
         offsetX + 2.95 * scaleFactor,
         offsetY + 6.5 * scaleFactor);

// Favourite Box
stroke(0);
fill(255);
rect(offsetX + 1.3 * scaleFactor,
     offsetY + 7.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

// Favourite symbol (heart)
fill(0, 0, 0);
noStroke();
float fx = offsetX + 1.8 * scaleFactor;
float fy = offsetY + 8.1 * scaleFactor;
ellipse(fx - 0.15 * scaleFactor, fy - 0.08 * scaleFactor,
        0.3 * scaleFactor, 0.3 * scaleFactor);
ellipse(fx + 0.15 * scaleFactor, fy - 0.08 * scaleFactor,
        0.3 * scaleFactor, 0.3 * scaleFactor);
triangle(fx - 0.3 * scaleFactor, fy - 0.02 * scaleFactor,
         fx + 0.3 * scaleFactor, fy - 0.02 * scaleFactor,
         fx, fy + 0.3 * scaleFactor);

// Shuffle Box
stroke(0);
fill(255);
rect(offsetX + 1.3 * scaleFactor,
     offsetY + 6.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

// Shuffle symbol (crossed arrows – simple X)
stroke(0);
noFill();
line(offsetX + 1.4 * scaleFactor,
     offsetY + 6.7 * scaleFactor,
     offsetX + 2.2 * scaleFactor,
     offsetY + 7.4 * scaleFactor);
line(offsetX + 1.4 * scaleFactor,
     offsetY + 7.4 * scaleFactor,
     offsetX + 2.2 * scaleFactor,
     offsetY + 6.7 * scaleFactor);

// Loop Box
stroke(0);
fill(255);
rect(offsetX + 2.3 * scaleFactor,
     offsetY + 6.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

// Loop symbol (circular arrow)
noFill();
float lx = offsetX + 2.8 * scaleFactor;
float ly = offsetY + 7.1 * scaleFactor;
ellipse(lx, ly, 0.6 * scaleFactor, 0.6 * scaleFactor);
line(lx + 0.3 * scaleFactor, ly,
     lx + 0.5 * scaleFactor, ly - 0.2 * scaleFactor);
line(lx + 0.3 * scaleFactor, ly,
     lx + 0.5 * scaleFactor, ly + 0.2 * scaleFactor);

// BookMark Box
stroke(0);
fill(255);
rect(offsetX + 2.3 * scaleFactor,
     offsetY + 7.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

// Bookmark symbol
fill(0);
noStroke();
rect(offsetX + 2.45 * scaleFactor,
     offsetY + 7.65 * scaleFactor,
     0.55 * scaleFactor,
     0.6 * scaleFactor);
triangle(offsetX + 2.45 * scaleFactor,
         offsetY + 8.25 * scaleFactor,
         offsetX + 3 * scaleFactor,
         offsetY + 8.25 * scaleFactor,
         offsetX + 2.725 * scaleFactor,
         offsetY + 8.5 * scaleFactor);}//End Setup
//
void draw() {
// Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

// Load images (MUST be in /data folder)
PImage image1 = loadImage("67-kid.jpg");
PImage image2 = loadImage("SoccerBall.jpg");

// Layout
int numberOfButtons = 15;
int widthOfButton = appWidth / numberOfButtons;
int beginningButtonSpace = widthOfButton;

// Image 1 box
float imageDivX1 = beginningButtonSpace;
float imageDivY1 = appHeight * 0.2;
float imageDivWidth1 = appWidth * 0.4;
float imageDivHeight1 = appHeight * 0.3;

// Image 2 box
float imageDivX2 = appWidth * 0.55;
float imageDivY2 = appHeight * 0.2;
float imageDivWidth2 = appWidth * 0.3;
float imageDivHeight2 = appHeight * 0.3;

// ---------- IMAGE 1 (FILL BOX) ----------
float scale1 = max(imageDivWidth1 / image1.width, imageDivHeight1 / image1.height);
float newW1 = image1.width * scale1;
float newH1 = image1.height * scale1;

float x1 = imageDivX1 + (imageDivWidth1 - newW1) / 2;
float y1 = imageDivY1 + (imageDivHeight1 - newH1) / 2;

// ---------- IMAGE 2 (FILL BOX) ----------
float scale2 = max(imageDivWidth2 / image2.width, imageDivHeight2 / image2.height);
float newW2 = image2.width * scale2;
float newH2 = image2.height * scale2;

float x2 = imageDivX2 + (imageDivWidth2 - newW2) / 2;
float y2 = imageDivY2 + (imageDivHeight2 - newH2) / 2;

// Draw boxes (optional)
rect(imageDivX1, imageDivY1, imageDivWidth1, imageDivHeight1);
rect(imageDivX2, imageDivY2, imageDivWidth2, imageDivHeight2);

// Clip + draw image1
clip((int)imageDivX1, (int)imageDivY1, (int)imageDivWidth1, (int)imageDivHeight1);
image(image1, x1, y1, newW1, newH1);
noClip();

// Clip + draw image2
clip((int)imageDivX2, (int)imageDivY2, (int)imageDivWidth2, (int)imageDivHeight2);
image(image2, x2, y2, newW2, newH2);
noClip();}//End Setup
//
void mousePressed() {}//End Mouse Pressed
//
void keyPressed() {}//End Key Pressed 
