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

  size(455, 900);

  smooth();

  // IMAGES MUST BE INSIDE:
  // sketchFolder/data/

  image1 = loadImage("67-kid.jpg");
  image2 = loadImage("SoccerBall.jpg");
}

// -------------------------------------------------
// DRAW
// -------------------------------------------------

void draw() {

  background(180);

  float appWidth = width;
  float appHeight = height;

  // -------------------------------------------------
  // PHONE SIZE
  // -------------------------------------------------

  float paperWidth = 142.0;
  float paperHeight = 280.0;

  // THIS FIXES THE GREY SIDES
  float scaleFactor = appHeight / paperHeight;

  float offsetX = (appWidth - paperWidth * scaleFactor) / 2.0;
  float offsetY = 0;

  // -------------------------------------------------
  // PHONE BACKGROUND
  // -------------------------------------------------

  fill(255);
  stroke(0);

  // REMOVED ROUNDED CORNERS
  rect(offsetX,
       offsetY,
       paperWidth * scaleFactor,
       paperHeight * scaleFactor);

  // -------------------------------------------------
  // MAIN BOXES
  // -------------------------------------------------

  float songTitleOuterBoxX = offsetX + 30 * scaleFactor;
  float songTitleOuterBoxY = offsetY + 5 * scaleFactor;
  float songTitleOuterBoxWidth = 84 * scaleFactor;
  float songTitleOuterBoxHeight = 20 * scaleFactor;

  float songTitleTextBoxX = offsetX + 48 * scaleFactor;
  float songTitleTextBoxY = offsetY + 5 * scaleFactor;
  float songTitleTextBoxWidth = 50 * scaleFactor;
  float songTitleTextBoxHeight = 13 * scaleFactor;

  float artistNameBoxX = offsetX + 48 * scaleFactor;
  float artistNameBoxY = offsetY + 18 * scaleFactor;
  float artistNameBoxWidth = 50 * scaleFactor;
  float artistNameBoxHeight = 7 * scaleFactor;

  float closeButtonX = offsetX + 131 * scaleFactor;
  float closeButtonY = offsetY + 7 * scaleFactor;
  float closeButtonWidth = 7 * scaleFactor;
  float closeButtonHeight = 7 * scaleFactor;

  float progressBarX = offsetX + 13 * scaleFactor;
  float progressBarY = offsetY + 30 * scaleFactor;
  float progressBarWidth = 120 * scaleFactor;
  float progressBarHeight = 13 * scaleFactor;

  float lyricsSectionX = offsetX + 52 * scaleFactor;
  float lyricsSectionY = offsetY + 46 * scaleFactor;
  float lyricsSectionWidth = 83 * scaleFactor;
  float lyricsSectionHeight = 71 * scaleFactor;

  // -------------------------------------------------
  // IMAGE BOX
  // -------------------------------------------------

  float imageDisplayBoxX = offsetX + 13 * scaleFactor;
  float imageDisplayBoxY = offsetY + 135 * scaleFactor;
  float imageDisplayBoxWidth = 114 * scaleFactor;
  float imageDisplayBoxHeight = 114 * scaleFactor;

  // -------------------------------------------------
  // BUTTONS
  // -------------------------------------------------

  float playButtonX = offsetX + 16 * scaleFactor;
  float playButtonY = offsetY + 48 * scaleFactor;
  float playButtonWidth = 10 * scaleFactor;
  float playButtonHeight = 10 * scaleFactor;

  float pauseButtonX = offsetX + 30 * scaleFactor;
  float pauseButtonY = offsetY + 48 * scaleFactor;
  float pauseButtonWidth = 10 * scaleFactor;
  float pauseButtonHeight = 10 * scaleFactor;

  float fastForwardButtonX = offsetX + 16 * scaleFactor;
  float fastForwardButtonY = offsetY + 62 * scaleFactor;
  float fastForwardButtonWidth = 10 * scaleFactor;
  float fastForwardButtonHeight = 10 * scaleFactor;

  float rewindButtonX = offsetX + 30 * scaleFactor;
  float rewindButtonY = offsetY + 62 * scaleFactor;
  float rewindButtonWidth = 10 * scaleFactor;
  float rewindButtonHeight = 10 * scaleFactor;

  float shuffleButtonX = offsetX + 16 * scaleFactor;
  float shuffleButtonY = offsetY + 76 * scaleFactor;
  float shuffleButtonWidth = 10 * scaleFactor;
  float shuffleButtonHeight = 10 * scaleFactor;

  float loopButtonX = offsetX + 30 * scaleFactor;
  float loopButtonY = offsetY + 76 * scaleFactor;
  float loopButtonWidth = 10 * scaleFactor;
  float loopButtonHeight = 10 * scaleFactor;

  float favoriteButtonX = offsetX + 16 * scaleFactor;
  float favoriteButtonY = offsetY + 90 * scaleFactor;
  float favoriteButtonWidth = 10 * scaleFactor;
  float favoriteButtonHeight = 10 * scaleFactor;

  float bookmarkButtonX = offsetX + 30 * scaleFactor;
  float bookmarkButtonY = offsetY + 90 * scaleFactor;
  float bookmarkButtonWidth = 10 * scaleFactor;
  float bookmarkButtonHeight = 10 * scaleFactor;

  // -------------------------------------------------
  // DRAW BOXES
  // -------------------------------------------------

  stroke(0);
  fill(255);

  rect(songTitleOuterBoxX,
       songTitleOuterBoxY,
       songTitleOuterBoxWidth,
       songTitleOuterBoxHeight);

  rect(songTitleTextBoxX,
       songTitleTextBoxY,
       songTitleTextBoxWidth,
       songTitleTextBoxHeight);

  rect(artistNameBoxX,
       artistNameBoxY,
       artistNameBoxWidth,
       artistNameBoxHeight);

  rect(closeButtonX,
       closeButtonY,
       closeButtonWidth,
       closeButtonHeight);

  rect(progressBarX,
       progressBarY,
       progressBarWidth,
       progressBarHeight);

  rect(lyricsSectionX,
       lyricsSectionY,
       lyricsSectionWidth,
       lyricsSectionHeight);

  rect(imageDisplayBoxX,
       imageDisplayBoxY,
       imageDisplayBoxWidth,
       imageDisplayBoxHeight);

  rect(playButtonX,
       playButtonY,
       playButtonWidth,
       playButtonHeight);

  rect(pauseButtonX,
       pauseButtonY,
       pauseButtonWidth,
       pauseButtonHeight);

  rect(fastForwardButtonX,
       fastForwardButtonY,
       fastForwardButtonWidth,
       fastForwardButtonHeight);

  rect(rewindButtonX,
       rewindButtonY,
       rewindButtonWidth,
       rewindButtonHeight);

  rect(shuffleButtonX,
       shuffleButtonY,
       shuffleButtonWidth,
       shuffleButtonHeight);

  rect(loopButtonX,
       loopButtonY,
       loopButtonWidth,
       loopButtonHeight);

  rect(favoriteButtonX,
       favoriteButtonY,
       favoriteButtonWidth,
       favoriteButtonHeight);

  rect(bookmarkButtonX,
       bookmarkButtonY,
       bookmarkButtonWidth,
       bookmarkButtonHeight);

  // -------------------------------------------------
  // IMAGE
  // -------------------------------------------------

  if (image1 != null) {

    image(image1,
          imageDisplayBoxX,
          imageDisplayBoxY,
          imageDisplayBoxWidth,
          imageDisplayBoxHeight);

  } else {

    fill(0);
    textSize(20);

    text("IMAGE MISSING",
         imageDisplayBoxX + 10,
         imageDisplayBoxY + 30);
  }

  // -------------------------------------------------
  // SYMBOLS
  // -------------------------------------------------

  fill(0);
  noStroke();

  // PLAY

  triangle(playButtonX + playButtonWidth * 0.25,
           playButtonY + playButtonHeight * 0.2,

           playButtonX + playButtonWidth * 0.75,
           playButtonY + playButtonHeight * 0.5,

           playButtonX + playButtonWidth * 0.25,
           playButtonY + playButtonHeight * 0.8);

  // PAUSE

  rect(pauseButtonX + pauseButtonWidth * 0.25,
       pauseButtonY + pauseButtonHeight * 0.2,
       pauseButtonWidth * 0.15,
       pauseButtonHeight * 0.6);

  rect(pauseButtonX + pauseButtonWidth * 0.60,
       pauseButtonY + pauseButtonHeight * 0.2,
       pauseButtonWidth * 0.15,
       pauseButtonHeight * 0.6);

  // FAST FORWARD

  triangle(fastForwardButtonX + fastForwardButtonWidth * 0.10,
           fastForwardButtonY + fastForwardButtonHeight * 0.2,

           fastForwardButtonX + fastForwardButtonWidth * 0.45,
           fastForwardButtonY + fastForwardButtonHeight * 0.5,

           fastForwardButtonX + fastForwardButtonWidth * 0.10,
           fastForwardButtonY + fastForwardButtonHeight * 0.8);

  triangle(fastForwardButtonX + fastForwardButtonWidth * 0.40,
           fastForwardButtonY + fastForwardButtonHeight * 0.2,

           fastForwardButtonX + fastForwardButtonWidth * 0.75,
           fastForwardButtonY + fastForwardButtonHeight * 0.5,

           fastForwardButtonX + fastForwardButtonWidth * 0.40,
           fastForwardButtonY + fastForwardButtonHeight * 0.8);

  // REWIND

  triangle(rewindButtonX + rewindButtonWidth * 0.90,
           rewindButtonY + rewindButtonHeight * 0.2,

           rewindButtonX + rewindButtonWidth * 0.55,
           rewindButtonY + rewindButtonHeight * 0.5,

           rewindButtonX + rewindButtonWidth * 0.90,
           rewindButtonY + rewindButtonHeight * 0.8);

  triangle(rewindButtonX + rewindButtonWidth * 0.60,
           rewindButtonY + rewindButtonHeight * 0.2,

           rewindButtonX + rewindButtonWidth * 0.25,
           rewindButtonY + rewindButtonHeight * 0.5,

           rewindButtonX + rewindButtonWidth * 0.60,
           rewindButtonY + rewindButtonHeight * 0.8);

  // SHUFFLE

  stroke(0);

  line(shuffleButtonX + shuffleButtonWidth * 0.2,
       shuffleButtonY + shuffleButtonHeight * 0.2,

       shuffleButtonX + shuffleButtonWidth * 0.8,
       shuffleButtonY + shuffleButtonHeight * 0.8);

  line(shuffleButtonX + shuffleButtonWidth * 0.2,
       shuffleButtonY + shuffleButtonHeight * 0.8,

       shuffleButtonX + shuffleButtonWidth * 0.8,
       shuffleButtonY + shuffleButtonHeight * 0.2);

  // LOOP

  noFill();

  arc(loopButtonX + loopButtonWidth * 0.5,
      loopButtonY + loopButtonHeight * 0.5,
      loopButtonWidth * 0.55,
      loopButtonHeight * 0.55,
      radians(40),
      radians(340));

  // FAVORITE

  fill(0);
  noStroke();

  ellipse(favoriteButtonX + favoriteButtonWidth * 0.35,
          favoriteButtonY + favoriteButtonHeight * 0.40,
          favoriteButtonWidth * 0.25,
          favoriteButtonHeight * 0.25);

  ellipse(favoriteButtonX + favoriteButtonWidth * 0.65,
          favoriteButtonY + favoriteButtonHeight * 0.40,
          favoriteButtonWidth * 0.25,
          favoriteButtonHeight * 0.25);

  triangle(favoriteButtonX + favoriteButtonWidth * 0.2,
           favoriteButtonY + favoriteButtonHeight * 0.45,

           favoriteButtonX + favoriteButtonWidth * 0.8,
           favoriteButtonY + favoriteButtonHeight * 0.45,

           favoriteButtonX + favoriteButtonWidth * 0.5,
           favoriteButtonY + favoriteButtonHeight * 0.8);

  // BOOKMARK

  rect(bookmarkButtonX + bookmarkButtonWidth * 0.3,
       bookmarkButtonY + bookmarkButtonHeight * 0.15,
       bookmarkButtonWidth * 0.4,
       bookmarkButtonHeight * 0.45);

  triangle(bookmarkButtonX + bookmarkButtonWidth * 0.3,
           bookmarkButtonY + bookmarkButtonHeight * 0.6,

           bookmarkButtonX + bookmarkButtonWidth * 0.7,
           bookmarkButtonY + bookmarkButtonHeight * 0.6,

           bookmarkButtonX + bookmarkButtonWidth * 0.5,
           bookmarkButtonY + bookmarkButtonHeight * 0.85);

  // X SYMBOL

  fill(0);

  textAlign(CENTER, CENTER);
  textSize(closeButtonHeight * 0.8);

  text("X",
       closeButtonX + closeButtonWidth / 2.0,
       closeButtonY + closeButtonHeight / 2.0);
}

void mousePressed() {
}

void keyPressed() {
}
