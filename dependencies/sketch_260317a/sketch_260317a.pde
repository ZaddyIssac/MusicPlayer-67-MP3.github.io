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
noClip();
