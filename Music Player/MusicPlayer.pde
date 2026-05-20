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
/* 
-------------------------------------------------
MUSIC APP
-------------------------------------------------
REQUIRES:
- Minim Library
- data folder
- 67-kid.jpg
- SoccerBall.jpg
- Eureka.mp3
-------------------------------------------------
*/

import ddf.minim.*;

// -------------------------------------------------
// GLOBAL VARIABLES
// -------------------------------------------------

Minim minim;

PImage image1;
PImage image2;

int numberOfSongs = 2;

AudioPlayer[] playList = new AudioPlayer[numberOfSongs];

int currentSong = 0;

// -------------------------------------------------
// SETUP
// -------------------------------------------------

void setup() {

  size(450, 900);

  smooth();

  // -------------------------------------------------
  // LOAD IMAGES
  // -------------------------------------------------

  image1 = loadImage("67-kid.jpg");
  image2 = loadImage("SoccerBall.jpg");

  // -------------------------------------------------
  // MINIM
  // -------------------------------------------------

  minim = new Minim(this);

// -------------------------------------------------
// LOAD MUSIC
// -------------------------------------------------

playList[0] = minim.loadFile("Eureka.mp3");

playList[1] = minim.loadFile("Start_Engine.mp3");

  // -------------------------------------------------
  // ERROR CHECK
  // -------------------------------------------------

  if (playList[0] == null) {

    println("SONG FAILED TO LOAD");
    exit();
  }
}

// -------------------------------------------------
// DRAW
// -------------------------------------------------

void draw() {

  background(170, 110, 120);

  float appWidth = width;
  float appHeight = height;

  // -------------------------------------------------
  // PHONE SIZE
  // -------------------------------------------------

  float paperWidth = 142.0;
  float paperHeight = 280.0;

  float scaleFactor = appHeight / paperHeight;

  float offsetX = (appWidth - paperWidth * scaleFactor) / 2.0;
  float offsetY = 0;

  // -------------------------------------------------
  // PHONE BACKGROUND
  // -------------------------------------------------

  fill(255);
  stroke(0);

  rect(offsetX,
       offsetY,
       paperWidth * scaleFactor,
       paperHeight * scaleFactor);

  // -------------------------------------------------
  // SONG TITLE BOXES
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

  // -------------------------------------------------
  // X BUTTON
  // -------------------------------------------------

  float closeButtonWidth = 8 * scaleFactor;
  float closeButtonHeight = 8 * scaleFactor;

  float closeButtonX = offsetX +
                       (paperWidth * scaleFactor) -
                       closeButtonWidth;

  float closeButtonY = offsetY;

  // -------------------------------------------------
  // PROGRESS BAR
  // -------------------------------------------------

  float progressBarX = offsetX + 13 * scaleFactor;
  float progressBarY = offsetY + 30 * scaleFactor;
  float progressBarWidth = 120 * scaleFactor;
  float progressBarHeight = 13 * scaleFactor;

  // -------------------------------------------------
  // LYRICS BOX
  // -------------------------------------------------

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

  float buttonSize = 10 * scaleFactor;

  float playButtonX = offsetX + 16 * scaleFactor;
  float playButtonY = offsetY + 48 * scaleFactor;

  float pauseButtonX = offsetX + 30 * scaleFactor;
  float pauseButtonY = offsetY + 48 * scaleFactor;

  float fastForwardButtonX = offsetX + 16 * scaleFactor;
  float fastForwardButtonY = offsetY + 62 * scaleFactor;

  float rewindButtonX = offsetX + 30 * scaleFactor;
  float rewindButtonY = offsetY + 62 * scaleFactor;

  float shuffleButtonX = offsetX + 16 * scaleFactor;
  float shuffleButtonY = offsetY + 76 * scaleFactor;

  float loopButtonX = offsetX + 30 * scaleFactor;
  float loopButtonY = offsetY + 76 * scaleFactor;

  float favoriteButtonX = offsetX + 16 * scaleFactor;
  float favoriteButtonY = offsetY + 90 * scaleFactor;

  float bookmarkButtonX = offsetX + 30 * scaleFactor;
  float bookmarkButtonY = offsetY + 90 * scaleFactor;

  // -------------------------------------------------
  // DRAW RECTANGLES
  // -------------------------------------------------

  fill(255);
  stroke(0);

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

  rect(playButtonX, playButtonY, buttonSize, buttonSize);

  rect(pauseButtonX, pauseButtonY, buttonSize, buttonSize);

  rect(fastForwardButtonX,
       fastForwardButtonY,
       buttonSize,
       buttonSize);

  rect(rewindButtonX,
       rewindButtonY,
       buttonSize,
       buttonSize);

  rect(shuffleButtonX,
       shuffleButtonY,
       buttonSize,
       buttonSize);

  rect(loopButtonX,
       loopButtonY,
       buttonSize,
       buttonSize);

  rect(favoriteButtonX,
       favoriteButtonY,
       buttonSize,
       buttonSize);

  rect(bookmarkButtonX,
       bookmarkButtonY,
       buttonSize,
       buttonSize);

  // -------------------------------------------------
  // IMAGE
  // -------------------------------------------------

  if (image1 != null) {

    image(image1,
          imageDisplayBoxX,
          imageDisplayBoxY,
          imageDisplayBoxWidth,
          imageDisplayBoxHeight);
  }

  // -------------------------------------------------
  // SONG TITLE
  // -------------------------------------------------

  fill(0);

  textAlign(CENTER, CENTER);

  textSize(18);

  text("EUREKA",
       songTitleTextBoxX + songTitleTextBoxWidth / 2,
       songTitleTextBoxY + songTitleTextBoxHeight / 2);

  textSize(12);

  text("Artist",
       artistNameBoxX + artistNameBoxWidth / 2,
       artistNameBoxY + artistNameBoxHeight / 2);

  // -------------------------------------------------
  // PLAY SYMBOL
  // -------------------------------------------------

  triangle(playButtonX + buttonSize * 0.25,
           playButtonY + buttonSize * 0.2,

           playButtonX + buttonSize * 0.75,
           playButtonY + buttonSize * 0.5,

           playButtonX + buttonSize * 0.25,
           playButtonY + buttonSize * 0.8);

  // -------------------------------------------------
  // PAUSE SYMBOL
  // -------------------------------------------------

  rect(pauseButtonX + buttonSize * 0.25,
       pauseButtonY + buttonSize * 0.2,
       buttonSize * 0.15,
       buttonSize * 0.6);

  rect(pauseButtonX + buttonSize * 0.60,
       pauseButtonY + buttonSize * 0.2,
       buttonSize * 0.15,
       buttonSize * 0.6);

  // -------------------------------------------------
  // FAST FORWARD
  // -------------------------------------------------

  triangle(fastForwardButtonX + buttonSize * 0.10,
           fastForwardButtonY + buttonSize * 0.2,

           fastForwardButtonX + buttonSize * 0.45,
           fastForwardButtonY + buttonSize * 0.5,

           fastForwardButtonX + buttonSize * 0.10,
           fastForwardButtonY + buttonSize * 0.8);

  triangle(fastForwardButtonX + buttonSize * 0.40,
           fastForwardButtonY + buttonSize * 0.2,

           fastForwardButtonX + buttonSize * 0.75,
           fastForwardButtonY + buttonSize * 0.5,

           fastForwardButtonX + buttonSize * 0.40,
           fastForwardButtonY + buttonSize * 0.8);

  // -------------------------------------------------
  // REWIND
  // -------------------------------------------------

  triangle(rewindButtonX + buttonSize * 0.90,
           rewindButtonY + buttonSize * 0.2,

           rewindButtonX + buttonSize * 0.55,
           rewindButtonY + buttonSize * 0.5,

           rewindButtonX + buttonSize * 0.90,
           rewindButtonY + buttonSize * 0.8);

  triangle(rewindButtonX + buttonSize * 0.60,
           rewindButtonY + buttonSize * 0.2,

           rewindButtonX + buttonSize * 0.25,
           rewindButtonY + buttonSize * 0.5,

           rewindButtonX + buttonSize * 0.60,
           rewindButtonY + buttonSize * 0.8);

  // -------------------------------------------------
  // SHUFFLE
  // -------------------------------------------------

  stroke(0);

  line(shuffleButtonX + buttonSize * 0.2,
       shuffleButtonY + buttonSize * 0.2,

       shuffleButtonX + buttonSize * 0.8,
       shuffleButtonY + buttonSize * 0.8);

  line(shuffleButtonX + buttonSize * 0.2,
       shuffleButtonY + buttonSize * 0.8,

       shuffleButtonX + buttonSize * 0.8,
       shuffleButtonY + buttonSize * 0.2);

  // -------------------------------------------------
  // LOOP
  // -------------------------------------------------

  noFill();

  arc(loopButtonX + buttonSize * 0.5,
      loopButtonY + buttonSize * 0.5,
      buttonSize * 0.55,
      buttonSize * 0.55,
      radians(40),
      radians(340));

  // -------------------------------------------------
  // FAVORITE
  // -------------------------------------------------

  fill(0);
  noStroke();

  ellipse(favoriteButtonX + buttonSize * 0.35,
          favoriteButtonY + buttonSize * 0.40,
          buttonSize * 0.25,
          buttonSize * 0.25);

  ellipse(favoriteButtonX + buttonSize * 0.65,
          favoriteButtonY + buttonSize * 0.40,
          buttonSize * 0.25,
          buttonSize * 0.25);

  triangle(favoriteButtonX + buttonSize * 0.2,
           favoriteButtonY + buttonSize * 0.45,

           favoriteButtonX + buttonSize * 0.8,
           favoriteButtonY + buttonSize * 0.45,

           favoriteButtonX + buttonSize * 0.5,
           favoriteButtonY + buttonSize * 0.8);

  // -------------------------------------------------
  // BOOKMARK
  // -------------------------------------------------

  rect(bookmarkButtonX + buttonSize * 0.3,
       bookmarkButtonY + buttonSize * 0.15,
       buttonSize * 0.4,
       buttonSize * 0.45);

  triangle(bookmarkButtonX + buttonSize * 0.3,
           bookmarkButtonY + buttonSize * 0.6,

           bookmarkButtonX + buttonSize * 0.7,
           bookmarkButtonY + buttonSize * 0.6,

           bookmarkButtonX + buttonSize * 0.5,
           bookmarkButtonY + buttonSize * 0.85);

  // -------------------------------------------------
  // X SYMBOL
  // -------------------------------------------------

  fill(0);

  textSize(closeButtonHeight * 0.7);

  text("X",
       closeButtonX + closeButtonWidth / 2.0,
       closeButtonY + closeButtonHeight / 2.0);
}

// -------------------------------------------------
// KEYBOARD CONTROLS
// -------------------------------------------------

void keyPressed() {

  // PLAY

  if (key == 'p' || key == 'P') {

    playList[currentSong].loop(0);
  }

  // PAUSE

  if (key == 'o' || key == 'O') {

    if (playList[currentSong].isPlaying()) {

      playList[currentSong].pause();
    }
  }

  // STOP

  if (key == 's' || key == 'S') {

    playList[currentSong].pause();
    playList[currentSong].rewind();
  }

  // LOOP ONCE

  if (key == 'l' || key == 'L') {

    playList[currentSong].loop(1);
  }

  // LOOP FOREVER

  if (key == 'k' || key == 'K') {

    playList[currentSong].loop();
  }

  // FAST FORWARD

  if (key == 'f' || key == 'F') {

    playList[currentSong].skip(10000);
  }

  // REWIND

  if (key == 'r' || key == 'R') {

    playList[currentSong].skip(-10000);
  }

  // MUTE

  if (key == 'w' || key == 'W') {

    if (playList[currentSong].isMuted()) {

      playList[currentSong].unmute();

    } else {

      playList[currentSong].mute();
    }
  }

  // RANDOM SONG

  if (key == 'y' || key == 'Y') {

    currentSong = int(random(numberOfSongs));
  }

  // QUIT

  if (key == 'q' || key == 'Q') {

    exit();
  }
}

// -------------------------------------------------
// STOP
// -------------------------------------------------

void stop() {

  playList[currentSong].close();

  minim.stop();

  super.stop();
}
