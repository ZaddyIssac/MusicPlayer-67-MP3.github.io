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
// -------------------------------------------------
// GLOBAL VARIABLES
// -------------------------------------------------

PImage image1;
PImage image2;

// -------------------------------------------------
// SETUP
// -------------------------------------------------

void setup() {

  fullScreen();

  // Load images
  image1 = loadImage("67-kid.jpg");
  image2 = loadImage("SoccerBall.jpg");

  smooth();
}

// -------------------------------------------------
// DRAW
// -------------------------------------------------

void draw() {

  background(255);

  // -------------------------------------------------
  // SCALE + LAYOUT
  // -------------------------------------------------

  float paperWidth = 14.2;
  float paperHeight = 28;

  float scaleFactor = min(displayWidth / paperWidth,
                          displayHeight / paperHeight);

  float offsetX = (displayWidth - paperWidth * scaleFactor) / 2;
  float offsetY = (displayHeight - paperHeight * scaleFactor) / 2;

  stroke(0);
  fill(255);

  // -------------------------------------------------
  // SONG TITLE OUTER BOX
  // -------------------------------------------------

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

  // -------------------------------------------------
  // CLOSE BUTTON
  // -------------------------------------------------

  rect(offsetX + 13.1 * scaleFactor,
       offsetY,
       1 * scaleFactor,
       1.4 * scaleFactor,
       3);

  fill(0);

  textAlign(CENTER, CENTER);
  textSize(0.6 * scaleFactor);

  text("X",
       offsetX + 13.6 * scaleFactor,
       offsetY + 0.7 * scaleFactor);

  // -------------------------------------------------
  // IMAGE DISPLAY BOX
  // -------------------------------------------------

  fill(255);

  float imageBoxX = offsetX + 1.3 * scaleFactor;
  float imageBoxY = offsetY + 15.5 * scaleFactor;
  float imageBoxW = 11.4 * scaleFactor;
  float imageBoxH = 11.4 * scaleFactor;

  rect(imageBoxX,
       imageBoxY,
       imageBoxW,
       imageBoxH,
       3);

  // -------------------------------------------------
  // IMAGE FIT INSIDE BOX
  // -------------------------------------------------

  float scaleImage = min(imageBoxW / image1.width,
                         imageBoxH / image1.height);

  float imageW = image1.width * scaleImage;
  float imageH = image1.height * scaleImage;

  float imageX = imageBoxX + (imageBoxW - imageW) / 2;
  float imageY = imageBoxY + (imageBoxH - imageH) / 2;

  image(image1, imageX, imageY, imageW, imageH);

  // -------------------------------------------------
  // LYRICS SECTION
  // -------------------------------------------------

  noFill();

  rect(offsetX + 5.2 * scaleFactor,
       offsetY + 4.6 * scaleFactor,
       8.3 * scaleFactor,
       7.1 * scaleFactor,
       3);

  // -------------------------------------------------
  // PROGRESS BAR
  // -------------------------------------------------

  rect(offsetX + 1.3 * scaleFactor,
       offsetY + 3 * scaleFactor,
       12 * scaleFactor,
       1.3 * scaleFactor,
       3);

  // -------------------------------------------------
  // PLAY BUTTON
  // -------------------------------------------------

  rect(offsetX + 1.3 * scaleFactor,
       offsetY + 4.6 * scaleFactor,
       1 * scaleFactor,
       1 * scaleFactor,
       3);

  fill(0);
  noStroke();

  triangle(offsetX + 1.4 * scaleFactor,
           offsetY + 4.7 * scaleFactor,
           offsetX + 2.1 * scaleFactor,
           offsetY + 5.1 * scaleFactor,
           offsetX + 1.4 * scaleFactor,
           offsetY + 5.5 * scaleFactor);

  // -------------------------------------------------
  // PAUSE BUTTON
  // -------------------------------------------------

  stroke(0);
  fill(255);

  rect(offsetX + 2.3 * scaleFactor,
       offsetY + 4.6 * scaleFactor,
       1 * scaleFactor,
       1 * scaleFactor,
       3);

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

  // -------------------------------------------------
  // FAST FORWARD
  // -------------------------------------------------

  stroke(0);
  fill(255);

  rect(offsetX + 1.3 * scaleFactor,
       offsetY + 5.6 * scaleFactor,
       1 * scaleFactor,
       1 * scaleFactor,
       3);

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

  // -------------------------------------------------
  // REWIND
  // -------------------------------------------------

  stroke(0);
  fill(255);

  rect(offsetX + 2.3 * scaleFactor,
       offsetY + 5.6 * scaleFactor,
       1 * scaleFactor,
       1 * scaleFactor,
       3);

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

  // -------------------------------------------------
  // SHUFFLE BUTTON
  // -------------------------------------------------

  stroke(0);
  noFill();

  rect(offsetX + 1.3 * scaleFactor,
       offsetY + 6.6 * scaleFactor,
       1 * scaleFactor,
       1 * scaleFactor,
       3);

  line(offsetX + 1.4 * scaleFactor,
       offsetY + 6.7 * scaleFactor,
       offsetX + 2.2 * scaleFactor,
       offsetY + 7.4 * scaleFactor);

  line(offsetX + 1.4 * scaleFactor,
       offsetY + 7.4 * scaleFactor,
       offsetX + 2.2 * scaleFactor,
       offsetY + 6.7 * scaleFactor);

// -------------------------------------------------
// LOOP BUTTON
// -------------------------------------------------

stroke(0);
fill(255);

rect(offsetX + 2.3 * scaleFactor,
     offsetY + 6.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);

noFill();
stroke(0);
strokeWeight(2);

// Circle with opening
arc(offsetX + 2.8 * scaleFactor,
    offsetY + 7.1 * scaleFactor,
    0.55 * scaleFactor,
    0.55 * scaleFactor,
    radians(40),
    radians(340));


strokeWeight(1);
  // -------------------------------------------------
  // FAVORITE BUTTON
  // -------------------------------------------------

  stroke(0);
  fill(255);

  rect(offsetX + 1.3 * scaleFactor,
       offsetY + 7.6 * scaleFactor,
       1 * scaleFactor,
       1 * scaleFactor,
       3);

  fill(0);
  noStroke();

  float fx = offsetX + 1.8 * scaleFactor;
  float fy = offsetY + 8.1 * scaleFactor;

  ellipse(fx - 0.15 * scaleFactor,
          fy - 0.08 * scaleFactor,
          0.3 * scaleFactor,
          0.3 * scaleFactor);

  ellipse(fx + 0.15 * scaleFactor,
          fy - 0.08 * scaleFactor,
          0.3 * scaleFactor,
          0.3 * scaleFactor);

  triangle(fx - 0.3 * scaleFactor,
           fy - 0.02 * scaleFactor,
           fx + 0.3 * scaleFactor,
           fy - 0.02 * scaleFactor,
           fx,
           fy + 0.3 * scaleFactor);

  // -------------------------------------------------
  // BOOKMARK BUTTON
  // -------------------------------------------------

  fill(255);
  stroke(0);

  rect(offsetX + 2.3 * scaleFactor,
       offsetY + 7.6 * scaleFactor,
       1 * scaleFactor,
       1 * scaleFactor,
       3);

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
           offsetY + 8.5 * scaleFactor);
}

// -------------------------------------------------
// MOUSE PRESSED
// -------------------------------------------------

void mousePressed() {
}

// -------------------------------------------------
// KEY PRESSED
// -------------------------------------------------

void keyPressed() {
}
