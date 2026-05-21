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
Minim minim;

AudioPlayer song1;
AudioPlayer song2;

int currentSong = 1;

int appWidth;
int appHeight;

int paperWidth = 142;
int paperHeight = 280;

float phoneScale;
float phoneStartX;
float phoneStartY;

// IMAGE PATHWAYS
String[] imageName = new String[4];

String imageDirectory = "data/";
String fileExtension = ".jpg";

String[] pathway = new String[4];

PImage[] image = new PImage[4];

// DIV VARIABLES
float phoneDivX;
float phoneDivY;
float phoneDivWidth;
float phoneDivHeight;

float songTitleOuterDivX;
float songTitleOuterDivY;
float songTitleOuterDivWidth;
float songTitleOuterDivHeight;

float songTitleDivX;
float songTitleDivY;
float songTitleDivWidth;
float songTitleDivHeight;

float artistDivX;
float artistDivY;
float artistDivWidth;
float artistDivHeight;

float closeButtonDivX;
float closeButtonDivY;
float closeButtonDivWidth;
float closeButtonDivHeight;

float progressBarDivX;
float progressBarDivY;
float progressBarDivWidth;
float progressBarDivHeight;

float lyricsDivX;
float lyricsDivY;
float lyricsDivWidth;
float lyricsDivHeight;

float imageDivX;
float imageDivY;
float imageDivWidth;
float imageDivHeight;

float playButtonDivX;
float playButtonDivY;
float playButtonDivWidth;
float playButtonDivHeight;

float pauseButtonDivX;
float pauseButtonDivY;
float pauseButtonDivWidth;
float pauseButtonDivHeight;

float fastForwardButtonDivX;
float fastForwardButtonDivY;
float fastForwardButtonDivWidth;
float fastForwardButtonDivHeight;

float rewindButtonDivX;
float rewindButtonDivY;
float rewindButtonDivWidth;
float rewindButtonDivHeight;

float shuffleButtonDivX;
float shuffleButtonDivY;
float shuffleButtonDivWidth;
float shuffleButtonDivHeight;

float loopButtonDivX;
float loopButtonDivY;
float loopButtonDivWidth;
float loopButtonDivHeight;

float favoriteButtonDivX;
float favoriteButtonDivY;
float favoriteButtonDivWidth;
float favoriteButtonDivHeight;

float bookmarkButtonDivX;
float bookmarkButtonDivY;
float bookmarkButtonDivWidth;
float bookmarkButtonDivHeight;

// HOVER VARIABLES
boolean playButtonHover;
boolean pauseButtonHover;
boolean fastForwardButtonHover;
boolean rewindButtonHover;
boolean shuffleButtonHover;
boolean loopButtonHover;
boolean favoriteButtonHover;
boolean bookmarkButtonHover;
boolean closeButtonHover;

// SYMBOL VARIABLES
float playTriangleX1;
float playTriangleY1;
float playTriangleX2;
float playTriangleY2;
float playTriangleX3;
float playTriangleY3;

float pauseLine1X1;
float pauseLine1Y1;
float pauseLine1X2;
float pauseLine1Y2;

float pauseLine2X1;
float pauseLine2Y1;
float pauseLine2X2;
float pauseLine2Y2;

float fastForwardTriangle1X1;
float fastForwardTriangle1Y1;
float fastForwardTriangle1X2;
float fastForwardTriangle1Y2;
float fastForwardTriangle1X3;
float fastForwardTriangle1Y3;

float fastForwardTriangle2X1;
float fastForwardTriangle2Y1;
float fastForwardTriangle2X2;
float fastForwardTriangle2Y2;
float fastForwardTriangle2X3;
float fastForwardTriangle2Y3;

float rewindTriangle1X1;
float rewindTriangle1Y1;
float rewindTriangle1X2;
float rewindTriangle1Y2;
float rewindTriangle1X3;
float rewindTriangle1Y3;

float rewindTriangle2X1;
float rewindTriangle2Y1;
float rewindTriangle2X2;
float rewindTriangle2Y2;
float rewindTriangle2X3;
float rewindTriangle2Y3;

float shuffleLine1X1;
float shuffleLine1Y1;
float shuffleLine1X2;
float shuffleLine1Y2;

float shuffleLine2X1;
float shuffleLine2Y1;
float shuffleLine2X2;
float shuffleLine2Y2;

float loopArcX;
float loopArcY;
float loopArcWidth;
float loopArcHeight;
float loopArcStart;
float loopArcStop;

float favoriteCircle1X;
float favoriteCircle1Y;
float favoriteCircle1Width;
float favoriteCircle1Height;

float favoriteCircle2X;
float favoriteCircle2Y;
float favoriteCircle2Width;
float favoriteCircle2Height;

float favoriteTriangleX1;
float favoriteTriangleY1;
float favoriteTriangleX2;
float favoriteTriangleY2;
float favoriteTriangleX3;
float favoriteTriangleY3;

float bookmarkTopDivX;
float bookmarkTopDivY;
float bookmarkTopDivWidth;
float bookmarkTopDivHeight;

float bookmarkTriangleX1;
float bookmarkTriangleY1;
float bookmarkTriangleX2;
float bookmarkTriangleY2;
float bookmarkTriangleX3;
float bookmarkTriangleY3;

float closeTextX;
float closeTextY;
float artistTextX;
float artistTextY;
float songTitleTextX;
float songTitleTextY;

float loopArrowX1;
float loopArrowY1;
float loopArrowX2;
float loopArrowY2;
float loopArrowX3;
float loopArrowY3;

void setup() {

  size(450, 900);

  appWidth = width;
  appHeight = height;

  phoneScale = 3.0;

  phoneStartX = 10;
  phoneStartY = 10;

  imageName[1] = "67-kid";
  imageName[2] = "SoccerBall";

  for (int i = 1; i <= 2; i++) {

    pathway[i] =
      imageDirectory +
      imageName[i] +
      fileExtension;

    image[i] = loadImage(pathway[i]);
  }

  minim = new Minim(this);

  song1 = minim.loadFile("Eureka.mp3");
  song2 = minim.loadFile("Start_Engine.mp3");

  phoneDivX = phoneStartX + 0 * phoneScale;
  phoneDivY = phoneStartY + 0 * phoneScale;
  phoneDivWidth = 142 * phoneScale;
  phoneDivHeight = 280 * phoneScale;

  songTitleOuterDivX = phoneStartX + 44 * phoneScale;
  songTitleOuterDivY = phoneStartY + 3 * phoneScale;
  songTitleOuterDivWidth = 58 * phoneScale;
  songTitleOuterDivHeight = 24 * phoneScale;

  songTitleDivX = phoneStartX + 48 * phoneScale;
  songTitleDivY = phoneStartY + 5 * phoneScale;
  songTitleDivWidth = 50 * phoneScale;
  songTitleDivHeight = 13 * phoneScale;

  artistDivX = phoneStartX + 48 * phoneScale;
  artistDivY = phoneStartY + 18 * phoneScale;
  artistDivWidth = 50 * phoneScale;
  artistDivHeight = 7 * phoneScale;

  closeButtonDivX = phoneStartX + 134 * phoneScale;
  closeButtonDivY = phoneStartY + 0 * phoneScale;
  closeButtonDivWidth = 8 * phoneScale;
  closeButtonDivHeight = 8 * phoneScale;

  progressBarDivX = phoneStartX + 13 * phoneScale;
  progressBarDivY = phoneStartY + 30 * phoneScale;
  progressBarDivWidth = 120 * phoneScale;
  progressBarDivHeight = 13 * phoneScale;

  lyricsDivX = phoneStartX + 52 * phoneScale;
  lyricsDivY = phoneStartY + 46 * phoneScale;
  lyricsDivWidth = 83 * phoneScale;
  lyricsDivHeight = 71 * phoneScale;

  imageDivX = phoneStartX + 13 * phoneScale;
  imageDivY = phoneStartY + 135 * phoneScale;
  imageDivWidth = 114 * phoneScale;
  imageDivHeight = 114 * phoneScale;

  playButtonDivX = phoneStartX + 16 * phoneScale;
  playButtonDivY = phoneStartY + 48 * phoneScale;
  playButtonDivWidth = 10 * phoneScale;
  playButtonDivHeight = 10 * phoneScale;

  pauseButtonDivX = phoneStartX + 30 * phoneScale;
  pauseButtonDivY = phoneStartY + 48 * phoneScale;
  pauseButtonDivWidth = 10 * phoneScale;
  pauseButtonDivHeight = 10 * phoneScale;

  fastForwardButtonDivX = phoneStartX + 16 * phoneScale;
  fastForwardButtonDivY = phoneStartY + 62 * phoneScale;
  fastForwardButtonDivWidth = 10 * phoneScale;
  fastForwardButtonDivHeight = 10 * phoneScale;

  rewindButtonDivX = phoneStartX + 30 * phoneScale;
  rewindButtonDivY = phoneStartY + 62 * phoneScale;
  rewindButtonDivWidth = 10 * phoneScale;
  rewindButtonDivHeight = 10 * phoneScale;

  shuffleButtonDivX = phoneStartX + 16 * phoneScale;
  shuffleButtonDivY = phoneStartY + 76 * phoneScale;
  shuffleButtonDivWidth = 10 * phoneScale;
  shuffleButtonDivHeight = 10 * phoneScale;

  loopButtonDivX = phoneStartX + 30 * phoneScale;
  loopButtonDivY = phoneStartY + 76 * phoneScale;
  loopButtonDivWidth = 10 * phoneScale;
  loopButtonDivHeight = 10 * phoneScale;

  favoriteButtonDivX = phoneStartX + 16 * phoneScale;
  favoriteButtonDivY = phoneStartY + 90 * phoneScale;
  favoriteButtonDivWidth = 10 * phoneScale;
  favoriteButtonDivHeight = 10 * phoneScale;

  bookmarkButtonDivX = phoneStartX + 30 * phoneScale;
  bookmarkButtonDivY = phoneStartY + 90 * phoneScale;
  bookmarkButtonDivWidth = 10 * phoneScale;
  bookmarkButtonDivHeight = 10 * phoneScale;

  songTitleTextX = songTitleDivX + songTitleDivWidth / 2;
  songTitleTextY = songTitleDivY + songTitleDivHeight / 2;

  artistTextX = artistDivX + artistDivWidth / 2;
  artistTextY = artistDivY + artistDivHeight / 2;

  closeTextX = closeButtonDivX + closeButtonDivWidth / 2;
  closeTextY = closeButtonDivY + closeButtonDivHeight / 2;

  playTriangleX1 = playButtonDivX + playButtonDivWidth * 0.25;
  playTriangleY1 = playButtonDivY + playButtonDivHeight * 0.2;
  playTriangleX2 = playButtonDivX + playButtonDivWidth * 0.75;
  playTriangleY2 = playButtonDivY + playButtonDivHeight * 0.5;
  playTriangleX3 = playButtonDivX + playButtonDivWidth * 0.25;
  playTriangleY3 = playButtonDivY + playButtonDivHeight * 0.8;

  pauseLine1X1 = pauseButtonDivX + pauseButtonDivWidth * 0.35;
  pauseLine1Y1 = pauseButtonDivY + pauseButtonDivHeight * 0.22;
  pauseLine1X2 = pauseButtonDivX + pauseButtonDivWidth * 0.35;
  pauseLine1Y2 = pauseButtonDivY + pauseButtonDivHeight * 0.78;

  pauseLine2X1 = pauseButtonDivX + pauseButtonDivWidth * 0.65;
  pauseLine2Y1 = pauseButtonDivY + pauseButtonDivHeight * 0.22;
  pauseLine2X2 = pauseButtonDivX + pauseButtonDivWidth * 0.65;
  pauseLine2Y2 = pauseButtonDivY + pauseButtonDivHeight * 0.78;

  fastForwardTriangle1X1 = fastForwardButtonDivX + fastForwardButtonDivWidth * 0.20;
  fastForwardTriangle1Y1 = fastForwardButtonDivY + fastForwardButtonDivHeight * 0.25;
  fastForwardTriangle1X2 = fastForwardButtonDivX + fastForwardButtonDivWidth * 0.50;
  fastForwardTriangle1Y2 = fastForwardButtonDivY + fastForwardButtonDivHeight * 0.50;
  fastForwardTriangle1X3 = fastForwardButtonDivX + fastForwardButtonDivWidth * 0.20;
  fastForwardTriangle1Y3 = fastForwardButtonDivY + fastForwardButtonDivHeight * 0.75;

  fastForwardTriangle2X1 = fastForwardButtonDivX + fastForwardButtonDivWidth * 0.50;
  fastForwardTriangle2Y1 = fastForwardButtonDivY + fastForwardButtonDivHeight * 0.25;
  fastForwardTriangle2X2 = fastForwardButtonDivX + fastForwardButtonDivWidth * 0.80;
  fastForwardTriangle2Y2 = fastForwardButtonDivY + fastForwardButtonDivHeight * 0.50;
  fastForwardTriangle2X3 = fastForwardButtonDivX + fastForwardButtonDivWidth * 0.50;
  fastForwardTriangle2Y3 = fastForwardButtonDivY + fastForwardButtonDivHeight * 0.75;

  rewindTriangle1X1 = rewindButtonDivX + rewindButtonDivWidth * 0.80;
  rewindTriangle1Y1 = rewindButtonDivY + rewindButtonDivHeight * 0.25;
  rewindTriangle1X2 = rewindButtonDivX + rewindButtonDivWidth * 0.50;
  rewindTriangle1Y2 = rewindButtonDivY + rewindButtonDivHeight * 0.50;
  rewindTriangle1X3 = rewindButtonDivX + rewindButtonDivWidth * 0.80;
  rewindTriangle1Y3 = rewindButtonDivY + rewindButtonDivHeight * 0.75;

  rewindTriangle2X1 = rewindButtonDivX + rewindButtonDivWidth * 0.50;
  rewindTriangle2Y1 = rewindButtonDivY + rewindButtonDivHeight * 0.25;
  rewindTriangle2X2 = rewindButtonDivX + rewindButtonDivWidth * 0.20;
  rewindTriangle2Y2 = rewindButtonDivY + rewindButtonDivHeight * 0.50;
  rewindTriangle2X3 = rewindButtonDivX + rewindButtonDivWidth * 0.50;
  rewindTriangle2Y3 = rewindButtonDivY + rewindButtonDivHeight * 0.75;

  shuffleLine1X1 = shuffleButtonDivX + shuffleButtonDivWidth * 0.2;
  shuffleLine1Y1 = shuffleButtonDivY + shuffleButtonDivHeight * 0.2;
  shuffleLine1X2 = shuffleButtonDivX + shuffleButtonDivWidth * 0.8;
  shuffleLine1Y2 = shuffleButtonDivY + shuffleButtonDivHeight * 0.8;

  shuffleLine2X1 = shuffleButtonDivX + shuffleButtonDivWidth * 0.2;
  shuffleLine2Y1 = shuffleButtonDivY + shuffleButtonDivHeight * 0.8;
  shuffleLine2X2 = shuffleButtonDivX + shuffleButtonDivWidth * 0.8;
  shuffleLine2Y2 = shuffleButtonDivY + shuffleButtonDivHeight * 0.2;

  loopArcX = loopButtonDivX + loopButtonDivWidth * 0.5;
  loopArcY = loopButtonDivY + loopButtonDivHeight * 0.5;
  loopArcWidth = loopButtonDivWidth * 0.55;
  loopArcHeight = loopButtonDivHeight * 0.55;
  loopArcStart = radians(40);
  loopArcStop = radians(340);
 loopArrowX1 = loopButtonDivX + loopButtonDivWidth * 0.84;
loopArrowY1 = loopButtonDivY + loopButtonDivHeight * 0.52;

loopArrowX2 = loopButtonDivX + loopButtonDivWidth * 0.70;
loopArrowY2 = loopButtonDivY + loopButtonDivHeight * 0.44;

loopArrowX3 = loopButtonDivX + loopButtonDivWidth * 0.80;
loopArrowY3 = loopButtonDivY + loopButtonDivHeight * 0.34;;
  
  favoriteCircle1X = favoriteButtonDivX + favoriteButtonDivWidth * 0.35;
  favoriteCircle1Y = favoriteButtonDivY + favoriteButtonDivHeight * 0.47;
  favoriteCircle1Width = favoriteButtonDivWidth * 0.25;
  favoriteCircle1Height = favoriteButtonDivHeight * 0.25;

  favoriteCircle2X = favoriteButtonDivX + favoriteButtonDivWidth * 0.65;
  favoriteCircle2Y = favoriteButtonDivY + favoriteButtonDivHeight * 0.47;
  favoriteCircle2Width = favoriteButtonDivWidth * 0.25;
  favoriteCircle2Height = favoriteButtonDivHeight * 0.25;

  favoriteTriangleX1 = favoriteButtonDivX + favoriteButtonDivWidth * 0.2;
  favoriteTriangleY1 = favoriteButtonDivY + favoriteButtonDivHeight * 0.45;
  favoriteTriangleX2 = favoriteButtonDivX + favoriteButtonDivWidth * 0.8;
  favoriteTriangleY2 = favoriteButtonDivY + favoriteButtonDivHeight * 0.45;
  favoriteTriangleX3 = favoriteButtonDivX + favoriteButtonDivWidth * 0.5;
  favoriteTriangleY3 = favoriteButtonDivY + favoriteButtonDivHeight * 0.8;

  bookmarkTopDivX = bookmarkButtonDivX + bookmarkButtonDivWidth * 0.3;
  bookmarkTopDivY = bookmarkButtonDivY + bookmarkButtonDivHeight * 0.15;
  bookmarkTopDivWidth = bookmarkButtonDivWidth * 0.4;
  bookmarkTopDivHeight = bookmarkButtonDivHeight * 0.45;

  bookmarkTriangleX1 = bookmarkButtonDivX + bookmarkButtonDivWidth * 0.3;
  bookmarkTriangleY1 = bookmarkButtonDivY + bookmarkButtonDivHeight * 0.6;
  bookmarkTriangleX2 = bookmarkButtonDivX + bookmarkButtonDivWidth * 0.7;
  bookmarkTriangleY2 = bookmarkButtonDivY + bookmarkButtonDivHeight * 0.6;
  bookmarkTriangleX3 = bookmarkButtonDivX + bookmarkButtonDivWidth * 0.5;
  bookmarkTriangleY3 = bookmarkButtonDivY + bookmarkButtonDivHeight * 0.85;
}

void draw() {

  background(255);

  playButtonHover = mouseX >= playButtonDivX && mouseX <= playButtonDivX + playButtonDivWidth && mouseY >= playButtonDivY && mouseY <= playButtonDivY + playButtonDivHeight;
  pauseButtonHover = mouseX >= pauseButtonDivX && mouseX <= pauseButtonDivX + pauseButtonDivWidth && mouseY >= pauseButtonDivY && mouseY <= pauseButtonDivY + pauseButtonDivHeight;
  fastForwardButtonHover = mouseX >= fastForwardButtonDivX && mouseX <= fastForwardButtonDivX + fastForwardButtonDivWidth && mouseY >= fastForwardButtonDivY && mouseY <= fastForwardButtonDivY + fastForwardButtonDivHeight;
  rewindButtonHover = mouseX >= rewindButtonDivX && mouseX <= rewindButtonDivX + rewindButtonDivWidth && mouseY >= rewindButtonDivY && mouseY <= rewindButtonDivY + rewindButtonDivHeight;
  shuffleButtonHover = mouseX >= shuffleButtonDivX && mouseX <= shuffleButtonDivX + shuffleButtonDivWidth && mouseY >= shuffleButtonDivY && mouseY <= shuffleButtonDivY + shuffleButtonDivHeight;
  loopButtonHover = mouseX >= loopButtonDivX && mouseX <= loopButtonDivX + loopButtonDivWidth && mouseY >= loopButtonDivY && mouseY <= loopButtonDivY + loopButtonDivHeight;
  favoriteButtonHover = mouseX >= favoriteButtonDivX && mouseX <= favoriteButtonDivX + favoriteButtonDivWidth && mouseY >= favoriteButtonDivY && mouseY <= favoriteButtonDivY + favoriteButtonDivHeight;
  bookmarkButtonHover = mouseX >= bookmarkButtonDivX && mouseX <= bookmarkButtonDivX + bookmarkButtonDivWidth && mouseY >= bookmarkButtonDivY && mouseY <= bookmarkButtonDivY + bookmarkButtonDivHeight;
  closeButtonHover = mouseX >= closeButtonDivX && mouseX <= closeButtonDivX + closeButtonDivWidth && mouseY >= closeButtonDivY && mouseY <= closeButtonDivY + closeButtonDivHeight;

  fill(255);
  stroke(0);

  rect(phoneDivX, phoneDivY, phoneDivWidth, phoneDivHeight);
  rect(songTitleOuterDivX, songTitleOuterDivY, songTitleOuterDivWidth, songTitleOuterDivHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(artistDivX, artistDivY, artistDivWidth, artistDivHeight);

  if (closeButtonHover && mousePressed) {
    fill(100);
  } else if (closeButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(closeButtonDivX, closeButtonDivY, closeButtonDivWidth, closeButtonDivHeight);

  fill(255);
  rect(progressBarDivX, progressBarDivY, progressBarDivWidth, progressBarDivHeight);
  rect(lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight);
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);

  if (playButtonHover && mousePressed) {
    fill(100);
  } else if (playButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(playButtonDivX, playButtonDivY, playButtonDivWidth, playButtonDivHeight);

  if (pauseButtonHover && mousePressed) {
    fill(100);
  } else if (pauseButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(pauseButtonDivX, pauseButtonDivY, pauseButtonDivWidth, pauseButtonDivHeight);

  if (fastForwardButtonHover && mousePressed) {
    fill(100);
  } else if (fastForwardButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(fastForwardButtonDivX, fastForwardButtonDivY, fastForwardButtonDivWidth, fastForwardButtonDivHeight);

  if (rewindButtonHover && mousePressed) {
    fill(100);
  } else if (rewindButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(rewindButtonDivX, rewindButtonDivY, rewindButtonDivWidth, rewindButtonDivHeight);

  if (shuffleButtonHover && mousePressed) {
    fill(100);
  } else if (shuffleButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(shuffleButtonDivX, shuffleButtonDivY, shuffleButtonDivWidth, shuffleButtonDivHeight);

  if (loopButtonHover && mousePressed) {
    fill(100);
  } else if (loopButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(loopButtonDivX, loopButtonDivY, loopButtonDivWidth, loopButtonDivHeight);

  if (favoriteButtonHover && mousePressed) {
    fill(100);
  } else if (favoriteButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(favoriteButtonDivX, favoriteButtonDivY, favoriteButtonDivWidth, favoriteButtonDivHeight);

  if (bookmarkButtonHover && mousePressed) {
    fill(100);
  } else if (bookmarkButtonHover) {
    fill(180);
  } else {
    fill(255);
  }

  rect(bookmarkButtonDivX, bookmarkButtonDivY, bookmarkButtonDivWidth, bookmarkButtonDivHeight);

  if (currentSong == 1 && image[1] != null) {
    image(image[1], imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  }

  if (currentSong == 2 && image[2] != null) {
    image(image[2], imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  }

  fill(0);
  stroke(0);

  triangle(playTriangleX1, playTriangleY1, playTriangleX2, playTriangleY2, playTriangleX3, playTriangleY3);

  strokeWeight(2);
  line(pauseLine1X1, pauseLine1Y1, pauseLine1X2, pauseLine1Y2);
  line(pauseLine2X1, pauseLine2Y1, pauseLine2X2, pauseLine2Y2);
  strokeWeight(1);

  triangle(fastForwardTriangle1X1, fastForwardTriangle1Y1, fastForwardTriangle1X2, fastForwardTriangle1Y2, fastForwardTriangle1X3, fastForwardTriangle1Y3);
  triangle(fastForwardTriangle2X1, fastForwardTriangle2Y1, fastForwardTriangle2X2, fastForwardTriangle2Y2, fastForwardTriangle2X3, fastForwardTriangle2Y3);

  triangle(rewindTriangle1X1, rewindTriangle1Y1, rewindTriangle1X2, rewindTriangle1Y2, rewindTriangle1X3, rewindTriangle1Y3);
  triangle(rewindTriangle2X1, rewindTriangle2Y1, rewindTriangle2X2, rewindTriangle2Y2, rewindTriangle2X3, rewindTriangle2Y3);

  line(shuffleLine1X1, shuffleLine1Y1, shuffleLine1X2, shuffleLine1Y2);
  line(shuffleLine2X1, shuffleLine2Y1, shuffleLine2X2, shuffleLine2Y2);

  noFill();
  arc(loopArcX, loopArcY, loopArcWidth, loopArcHeight, loopArcStart, loopArcStop);
  fill(0);

  triangle(
  loopArrowX3,
  loopArrowY3,

  loopArrowX2,
  loopArrowY2,

  loopArrowX1,
  loopArrowY1
  );

  fill(0);
  noStroke();
  ellipse(favoriteCircle1X, favoriteCircle1Y, favoriteCircle1Width, favoriteCircle1Height);
  ellipse(favoriteCircle2X, favoriteCircle2Y, favoriteCircle2Width, favoriteCircle2Height);
  triangle(favoriteTriangleX1, favoriteTriangleY1, favoriteTriangleX2, favoriteTriangleY2, favoriteTriangleX3, favoriteTriangleY3);
  stroke(0);

  rect(bookmarkTopDivX, bookmarkTopDivY, bookmarkTopDivWidth, bookmarkTopDivHeight);
  triangle(bookmarkTriangleX1, bookmarkTriangleY1, bookmarkTriangleX2, bookmarkTriangleY2, bookmarkTriangleX3, bookmarkTriangleY3);

  textAlign(CENTER, CENTER);

  textSize(closeButtonDivHeight * 0.7);
  text("X", closeTextX, closeTextY);

  textSize(artistDivHeight * 0.8);
  text("Artist Box", artistTextX, artistTextY);

  textSize(songTitleDivHeight * 0.45);

  if (currentSong == 1) {
    text("EUREKA", songTitleTextX, songTitleTextY);
  }

  if (currentSong == 2) {
    text("START ENGINE", songTitleTextX, songTitleTextY);
  }
}

void mousePressed() {

  if (playButtonHover) {
    if (currentSong == 1) {
      song1.loop(0);
    }

    if (currentSong == 2) {
      song2.loop(0);
    }
  }

  if (pauseButtonHover) {
    if (currentSong == 1) {
      song1.pause();
    }

    if (currentSong == 2) {
      song2.pause();
    }
  }

  if (fastForwardButtonHover) {
    if (currentSong == 1) {
      song1.skip(10000);
    }

    if (currentSong == 2) {
      song2.skip(10000);
    }
  }

  if (rewindButtonHover) {
    if (currentSong == 1) {
      song1.skip(-10000);
    }

    if (currentSong == 2) {
      song2.skip(-10000);
    }
  }

  if (shuffleButtonHover) {
    if (currentSong == 1) {
      song1.pause();
      song1.rewind();
      currentSong = 2;
    } else {
      song2.pause();
      song2.rewind();
      currentSong = 1;
    }
  }

  if (loopButtonHover) {
    if (currentSong == 1) {
      song1.loop();
    }

    if (currentSong == 2) {
      song2.loop();
    }
  }

  if (favoriteButtonHover) {
    println("Song added to favorites");
  }

  if (bookmarkButtonHover) {
    println("Song bookmarked");
  }

  if (closeButtonHover) {
    exit();
  }
}

void keyPressed() {

  if (key == 'p' || key == 'P') {
    if (currentSong == 1) {
      song1.loop(0);
    }

    if (currentSong == 2) {
      song2.loop(0);
    }
  }

  if (key == 'o' || key == 'O') {
    if (currentSong == 1) {
      song1.pause();
    }

    if (currentSong == 2) {
      song2.pause();
    }
  }

  if (key == 's' || key == 'S') {
    if (currentSong == 1) {
      song1.pause();
      song1.rewind();
    }

    if (currentSong == 2) {
      song2.pause();
      song2.rewind();
    }
  }

  if (key == 'f' || key == 'F') {
    if (currentSong == 1) {
      song1.skip(10000);
    }

    if (currentSong == 2) {
      song2.skip(10000);
    }
  }

  if (key == 'r' || key == 'R') {
    if (currentSong == 1) {
      song1.skip(-10000);
    }

    if (currentSong == 2) {
      song2.skip(-10000);
    }
  }

  if (key == '1') {
    currentSong = 1;
  }

  if (key == '2') {
    currentSong = 2;
  }

  if (key == 'q' || key == 'Q') {
    exit();
  }
}
