
float paperWidth = 14.2;
float paperHeight = 28;

float scaleFactor;
float offsetX;
float offsetY;

void setup() {
  fullScreen();

  scaleFactor = min(displayWidth / paperWidth,
                    displayHeight / paperHeight);

  offsetX = (displayWidth - paperWidth * scaleFactor) / 2;
  offsetY = (displayHeight - paperHeight * scaleFactor) / 2;
}

void draw() {
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

// Image Display Box
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
     
// Pause Box
rect(offsetX + 2.3 * scaleFactor,
     offsetY + 4.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);
     
// Fast Forward Box
rect(offsetX + 1.3 * scaleFactor,
     offsetY + 5.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);
     
// Fast Rewind Box
rect(offsetX + 2.3 * scaleFactor,
     offsetY + 5.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);
     
// Favourite Box
rect(offsetX + 1.3 * scaleFactor,
     offsetY + 7.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);
     
// Shuffle Box
rect(offsetX + 1.3 * scaleFactor,
     offsetY + 6.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);
     
// Loop Box
rect(offsetX + 2.3 * scaleFactor,
     offsetY + 6.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);
     
// BookMark Box
rect(offsetX + 2.3 * scaleFactor,
     offsetY + 7.6 * scaleFactor,
     1 * scaleFactor,
     1 * scaleFactor,
     3);
}
