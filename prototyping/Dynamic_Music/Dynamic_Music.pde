//Dynamic Music
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; 
int numberOfSongs = 1;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs; 
//
void setup() {
  //Display
  size( 700, 500 ); //width //height
  //fullScreen();  //displayWidth //displayHeight
  int appWidth = width; 
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this); 
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music"; 
  String soundEffectsFolder = "sound Effects"; 
  String dependenciesFolder = "dependencies"; 
  //
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Eureka";
  currentSong++;
  currentSong=0;
  //
  /* Alternate Song Name Text
   String songName1 = "Eureka";
   */
  String soundEffect1 = "Car_Door_Closing";
  String fileExtension_mp3 = ".mp3";
  //
  //CAUTION: Mistakes Below
  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ; 
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ; 
  String pathway;
  for ( int i=0; i<numberOfSongs; i++ ) {
    pathway = musicDirectory + songName[i] + fileExtension_mp3; 
    playList[ currentSong ] = minim.loadFile( pathway ); 
  }
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; 
  soundEffects[currentSong] = minim.loadFile( pathway ); 
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List did not load properly");
      printArray(playList);
      exit();
    }
  }
  if ( soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    println("The Sound Effects did not load properly");
    printArray(soundEffects);
    exit();
    }
    //
}//End Setup
//
void draw() {
  //playList[currentSong].play();
  soundEffects[currentSong].play();
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
}//End Key Pressed
//
//End MAIN Program
