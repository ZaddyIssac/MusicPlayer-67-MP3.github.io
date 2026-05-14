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
/* Music App */

PImage image1;
PImage image2;

// -------------------------------------------------
// SETUP
// -------------------------------------------------

void setup() {

  println(displayWidth, displayHeight);

  fullScreen();

  image1 = loadImage("67-kid.jpg");
  image2 = loadImage("SoccerBall.jpg");

  smooth();
}

// -------------------------------------------------
// DRAW
// -------------------------------------------------

void draw() {

  background(255);

  int appWidth = displayWidth;
  int appHeight = displayHeight;

  // -------------------------------------------------
  // PAPER SIZE (VERTICAL PHONE LAYOUT)
  // -------------------------------------------------

  float paperWidth = 142;
  float paperHeight = 280;

  // -------------------------------------------------
  // SCALE FACTOR
  // -------------------------------------------------

  float scaleFactor = min(appWidth / paperWidth,
                          appHeight / paperHeight);

  // -------------------------------------------------
  // CENTERING
  // -------------------------------------------------

  float offsetX = (appWidth - paperWidth * scaleFactor) / 2;
  float offsetY = (appHeight - paperHeight * scaleFactor) / 2;

  // -------------------------------------------------
  // SONG TITLE OUTER BOX
  // -------------------------------------------------

  float songTitleOuterBoxX = offsetX + 30 * scaleFactor;
  float songTitleOuterBoxY = offsetY + 5 * scaleFactor;
  float songTitleOuterBoxWidth = 84 * scaleFactor;
  float songTitleOuterBoxHeight = 20 * scaleFactor;

  // -------------------------------------------------
  // SONG TITLE TEXT BOX
  // -------------------------------------------------

  float songTitleTextBoxX = offsetX + 48 * scaleFactor;
  float songTitleTextBoxY = offsetY + 5 * scaleFactor;
  float songTitleTextBoxWidth = 50 * scaleFactor;
  float songTitleTextBoxHeight = 13 * scaleFactor;

  // -------------------------------------------------
  // ARTIST NAME BOX
  // -------------------------------------------------

  float artistNameBoxX = offsetX + 48 * scaleFactor;
  float artistNameBoxY = offsetY + 18 * scaleFactor;
  float artistNameBoxWidth = 50 * scaleFactor;
  float artistNameBoxHeight = 7 * scaleFactor;

  // -------------------------------------------------
  // CLOSE BUTTON
  // -------------------------------------------------

  float closeButtonX = offsetX + 131 * scaleFactor;
  float closeButtonY = offsetY + 7 * scaleFactor;
  float closeButtonWidth = 7 * scaleFactor;
  float closeButtonHeight = 7 * scaleFactor;

  // -------------------------------------------------
  // PROGRESS BAR
  // -------------------------------------------------

  float progressBarX = offsetX + 13 * scaleFactor;
  float progressBarY = offsetY + 30 * scaleFactor;
  float progressBarWidth = 120 * scaleFactor;
  float progressBarHeight = 13 * scaleFactor;

  // -------------------------------------------------
  // LYRICS SECTION
  // -------------------------------------------------

  float lyricsSectionX = offsetX + 52 * scaleFactor;
  float lyricsSectionY = offsetY + 46 * scaleFactor;
  float lyricsSectionWidth = 83 * scaleFactor;
  float lyricsSectionHeight = 71 * scaleFactor;

  // -------------------------------------------------
  // IMAGE DISPLAY BOX
  // -------------------------------------------------

  float imageDisplayBoxX = offsetX + 13 * scaleFactor;
  float imageDisplayBoxY = offsetY + 155 * scaleFactor;
  float imageDisplayBoxWidth = 114 * scaleFactor;
  float imageDisplayBoxHeight = 114 * scaleFactor;

  // -------------------------------------------------
  // PLAY BUTTON
  // -------------------------------------------------

  float playButtonX = offsetX + 13 * scaleFactor;
  float playButtonY = offsetY + 46 * scaleFactor;
  float playButtonWidth = 10 * scaleFactor;
  float playButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // PAUSE BUTTON
  // -------------------------------------------------

  float pauseButtonX = offsetX + 23 * scaleFactor;
  float pauseButtonY = offsetY + 46 * scaleFactor;
  float pauseButtonWidth = 10 * scaleFactor;
  float pauseButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // FAST FORWARD BUTTON
  // -------------------------------------------------

  float fastForwardButtonX = offsetX + 13 * scaleFactor;
  float fastForwardButtonY = offsetY + 56 * scaleFactor;
  float fastForwardButtonWidth = 10 * scaleFactor;
  float fastForwardButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // REWIND BUTTON
  // -------------------------------------------------

  float rewindButtonX = offsetX + 23 * scaleFactor;
  float rewindButtonY = offsetY + 56 * scaleFactor;
  float rewindButtonWidth = 10 * scaleFactor;
  float rewindButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // SHUFFLE BUTTON
  // -------------------------------------------------

  float shuffleButtonX = offsetX + 13 * scaleFactor;
  float shuffleButtonY = offsetY + 66 * scaleFactor;
  float shuffleButtonWidth = 10 * scaleFactor;
  float shuffleButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // LOOP BUTTON
  // -------------------------------------------------

  float loopButtonX = offsetX + 23 * scaleFactor;
  float loopButtonY = offsetY + 66 * scaleFactor;
  float loopButtonWidth = 10 * scaleFactor;
  float loopButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // FAVORITE BUTTON
  // -------------------------------------------------

  float favoriteButtonX = offsetX + 13 * scaleFactor;
  float favoriteButtonY = offsetY + 76 * scaleFactor;
  float favoriteButtonWidth = 10 * scaleFactor;
  float favoriteButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // BOOKMARK BUTTON
  // -------------------------------------------------

  float bookmarkButtonX = offsetX + 23 * scaleFactor;
  float bookmarkButtonY = offsetY + 76 * scaleFactor;
  float bookmarkButtonWidth = 10 * scaleFactor;
  float bookmarkButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // DRAW BOXES
  // -------------------------------------------------

  stroke(0);
  fill(255);

  rect(songTitleOuterBoxX, songTitleOuterBoxY, songTitleOuterBoxWidth, songTitleOuterBoxHeight, 3);
  rect(songTitleTextBoxX, songTitleTextBoxY, songTitleTextBoxWidth, songTitleTextBoxHeight, 3);
  rect(artistNameBoxX, artistNameBoxY, artistNameBoxWidth, artistNameBoxHeight, 3);
  rect(closeButtonX, closeButtonY, closeButtonWidth, closeButtonHeight, 3);
  rect(progressBarX, progressBarY, progressBarWidth, progressBarHeight, 3);
  rect(lyricsSectionX, lyricsSectionY, lyricsSectionWidth, lyricsSectionHeight, 3);
  rect(imageDisplayBoxX, imageDisplayBoxY, imageDisplayBoxWidth, imageDisplayBoxHeight, 3);

  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight, 3);
  rect(pauseButtonX, pauseButtonY, pauseButtonWidth, pauseButtonHeight, 3);
  rect(fastForwardButtonX, fastForwardButtonY, fastForwardButtonWidth, fastForwardButtonHeight, 3);
  rect(rewindButtonX, rewindButtonY, rewindButtonWidth, rewindButtonHeight, 3);
  rect(shuffleButtonX, shuffleButtonY, shuffleButtonWidth, shuffleButtonHeight, 3);
  rect(loopButtonX, loopButtonY, loopButtonWidth, loopButtonHeight, 3);
  rect(favoriteButtonX, favoriteButtonY, favoriteButtonWidth, favoriteButtonHeight, 3);
  rect(bookmarkButtonX, bookmarkButtonY, bookmarkButtonWidth, bookmarkButtonHeight, 3);

  // -------------------------------------------------
  // IMAGE VARIABLES
  // -------------------------------------------------

  float imageScale = min(imageDisplayBoxWidth / image1.width,
                         imageDisplayBoxHeight / image1.height);

  float imageWidth = image1.width * imageScale;
  float imageHeight = image1.height * imageScale;

  float imageX = imageDisplayBoxX + (imageDisplayBoxWidth - imageWidth) / 2;
  float imageY = imageDisplayBoxY + (imageDisplayBoxHeight - imageHeight) / 2;

  // -------------------------------------------------
  // DRAW IMAGE
  // -------------------------------------------------

  clip((int)imageDisplayBoxX,
       (int)imageDisplayBoxY,
       (int)imageDisplayBoxWidth,
       (int)imageDisplayBoxHeight);

  image(image1, imageX, imageY, imageWidth, imageHeight);

  noClip();

  // -------------------------------------------------
  // PLAY SYMBOL
  // -------------------------------------------------

  float playSymbolDivX1 = playButtonX + playButtonWidth * 1/4;
  float playSymbolDivY1 = playButtonY + playButtonHeight * 1/4;

  float playSymbolDivX2 = playButtonX + playButtonWidth * 3/4;
  float playSymbolDivY2 = playButtonY + playButtonHeight * 1/2;

  float playSymbolDivX3 = playButtonX + playButtonWidth * 1/4;
  float playSymbolDivY3 = playButtonY + playButtonHeight * 3/4;

  fill(0);

  triangle(playSymbolDivX1,
           playSymbolDivY1,
           playSymbolDivX2,
           playSymbolDivY2,
           playSymbolDivX3,
           playSymbolDivY3);

  // -------------------------------------------------
  // PAUSE SYMBOL
  // -------------------------------------------------

  float pauseSymbolDivX1 = pauseButtonX + pauseButtonWidth * 1/4;
  float pauseSymbolDivY1 = pauseButtonY + pauseButtonHeight * 1/5;
  float pauseSymbolDivWidth1 = pauseButtonWidth * 1/5;
  float pauseSymbolDivHeight1 = pauseButtonHeight * 3/5;

  float pauseSymbolDivX2 = pauseButtonX + pauseButtonWidth * 3/5;
  float pauseSymbolDivY2 = pauseButtonY + pauseButtonHeight * 1/5;
  float pauseSymbolDivWidth2 = pauseButtonWidth * 1/5;
  float pauseSymbolDivHeight2 = pauseButtonHeight * 3/5;

  rect(pauseSymbolDivX1,
       pauseSymbolDivY1,
       pauseSymbolDivWidth1,
       pauseSymbolDivHeight1);

  rect(pauseSymbolDivX2,
       pauseSymbolDivY2,
       pauseSymbolDivWidth2,
       pauseSymbolDivHeight2);
       // -------------------------------------------------
// FAST FORWARD SYMBOL
// -------------------------------------------------

float fastForwardSymbolX1 = fastForwardButtonX + fastForwardButtonWidth * 0.15;
float fastForwardSymbolY1 = fastForwardButtonY + fastForwardButtonHeight * 0.2;

float fastForwardSymbolX2 = fastForwardButtonX + fastForwardButtonWidth * 0.45;
float fastForwardSymbolY2 = fastForwardButtonY + fastForwardButtonHeight * 0.5;

float fastForwardSymbolX3 = fastForwardButtonX + fastForwardButtonWidth * 0.15;
float fastForwardSymbolY3 = fastForwardButtonY + fastForwardButtonHeight * 0.8;

triangle(fastForwardSymbolX1,
         fastForwardSymbolY1,
         fastForwardSymbolX2,
         fastForwardSymbolY2,
         fastForwardSymbolX3,
         fastForwardSymbolY3);

float fastForwardSymbolX4 = fastForwardButtonX + fastForwardButtonWidth * 0.45;
float fastForwardSymbolY4 = fastForwardButtonY + fastForwardButtonHeight * 0.2;

float fastForwardSymbolX5 = fastForwardButtonX + fastForwardButtonWidth * 0.75;
float fastForwardSymbolY5 = fastForwardButtonY + fastForwardButtonHeight * 0.5;

float fastForwardSymbolX6 = fastForwardButtonX + fastForwardButtonWidth * 0.45;
float fastForwardSymbolY6 = fastForwardButtonY + fastForwardButtonHeight * 0.8;

triangle(fastForwardSymbolX4,
         fastForwardSymbolY4,
         fastForwardSymbolX5,
         fastForwardSymbolY5,
         fastForwardSymbolX6,
         fastForwardSymbolY6);

// -------------------------------------------------
// REWIND SYMBOL
// -------------------------------------------------

float rewindSymbolX1 = rewindButtonX + rewindButtonWidth * 0.85;
float rewindSymbolY1 = rewindButtonY + rewindButtonHeight * 0.2;

float rewindSymbolX2 = rewindButtonX + rewindButtonWidth * 0.55;
float rewindSymbolY2 = rewindButtonY + rewindButtonHeight * 0.5;

float rewindSymbolX3 = rewindButtonX + rewindButtonWidth * 0.85;
float rewindSymbolY3 = rewindButtonY + rewindButtonHeight * 0.8;

triangle(rewindSymbolX1,
         rewindSymbolY1,
         rewindSymbolX2,
         rewindSymbolY2,
         rewindSymbolX3,
         rewindSymbolY3);

float rewindSymbolX4 = rewindButtonX + rewindButtonWidth * 0.55;
float rewindSymbolY4 = rewindButtonY + rewindButtonHeight * 0.2;

float rewindSymbolX5 = rewindButtonX + rewindButtonWidth * 0.25;
float rewindSymbolY5 = rewindButtonY + rewindButtonHeight * 0.5;

float rewindSymbolX6 = rewindButtonX + rewindButtonWidth * 0.55;
float rewindSymbolY6 = rewindButtonY + rewindButtonHeight * 0.8;

triangle(rewindSymbolX4,
         rewindSymbolY4,
         rewindSymbolX5,
         rewindSymbolY5,
         rewindSymbolX6,
         rewindSymbolY6);

// -------------------------------------------------
// SHUFFLE SYMBOL
// -------------------------------------------------

stroke(0);

float shuffleSymbolX1 = shuffleButtonX + shuffleButtonWidth * 0.2;
float shuffleSymbolY1 = shuffleButtonY + shuffleButtonHeight * 0.2;

float shuffleSymbolX2 = shuffleButtonX + shuffleButtonWidth * 0.8;
float shuffleSymbolY2 = shuffleButtonY + shuffleButtonHeight * 0.8;

line(shuffleSymbolX1,
     shuffleSymbolY1,
     shuffleSymbolX2,
     shuffleSymbolY2);

float shuffleSymbolX3 = shuffleButtonX + shuffleButtonWidth * 0.2;
float shuffleSymbolY3 = shuffleButtonY + shuffleButtonHeight * 0.8;

float shuffleSymbolX4 = shuffleButtonX + shuffleButtonWidth * 0.8;
float shuffleSymbolY4 = shuffleButtonY + shuffleButtonHeight * 0.2;

line(shuffleSymbolX3,
     shuffleSymbolY3,
     shuffleSymbolX4,
     shuffleSymbolY4);

// -------------------------------------------------
// LOOP SYMBOL
// -------------------------------------------------

noFill();

float loopSymbolX = loopButtonX + loopButtonWidth * 0.5;
float loopSymbolY = loopButtonY + loopButtonHeight * 0.5;

float loopSymbolWidth = loopButtonWidth * 0.55;
float loopSymbolHeight = loopButtonHeight * 0.55;

arc(loopSymbolX,
    loopSymbolY,
    loopSymbolWidth,
    loopSymbolHeight,
    radians(40),
    radians(340));

// -------------------------------------------------
// FAVORITE SYMBOL
// -------------------------------------------------

fill(0);
noStroke();

float favoriteHeartX = favoriteButtonX + favoriteButtonWidth * 0.5;
float favoriteHeartY = favoriteButtonY + favoriteButtonHeight * 0.5;

ellipse(favoriteHeartX - favoriteButtonWidth * 0.15,
        favoriteHeartY - favoriteButtonHeight * 0.08,
        favoriteButtonWidth * 0.3,
        favoriteButtonHeight * 0.3);

ellipse(favoriteHeartX + favoriteButtonWidth * 0.15,
        favoriteHeartY - favoriteButtonHeight * 0.08,
        favoriteButtonWidth * 0.3,
        favoriteButtonHeight * 0.3);

triangle(favoriteHeartX - favoriteButtonWidth * 0.3,
         favoriteHeartY,
         favoriteHeartX + favoriteButtonWidth * 0.3,
         favoriteHeartY,
         favoriteHeartX,
         favoriteHeartY + favoriteButtonHeight * 0.3);

// -------------------------------------------------
// BOOKMARK SYMBOL
// -------------------------------------------------

float bookmarkSymbolX = bookmarkButtonX + bookmarkButtonWidth * 0.25;
float bookmarkSymbolY = bookmarkButtonY + bookmarkButtonHeight * 0.1;

float bookmarkSymbolWidth = bookmarkButtonWidth * 0.5;
float bookmarkSymbolHeight = bookmarkButtonHeight * 0.5;

rect(bookmarkSymbolX,
     bookmarkSymbolY,
     bookmarkSymbolWidth,
     bookmarkSymbolHeight);

triangle(bookmarkSymbolX,
         bookmarkSymbolY + bookmarkSymbolHeight,
         bookmarkSymbolX + bookmarkSymbolWidth,
         bookmarkSymbolY + bookmarkSymbolHeight,
         bookmarkSymbolX + bookmarkSymbolWidth * 0.5,
         bookmarkButtonY + bookmarkButtonHeight * 0.85);

  // -------------------------------------------------
  // X SYMBOL
  // -------------------------------------------------

  fill(0);

  textAlign(CENTER, CENTER);
  textSize(closeButtonHeight * 0.8);

  text("X",
       closeButtonX + closeButtonWidth / 2,
       closeButtonY + closeButtonHeight / 2);
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
