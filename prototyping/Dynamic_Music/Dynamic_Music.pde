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
int numberOfSoundEffect = 4;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
void setup() {
  //Display
  size( 700, 500 ); //width //height
  //fullScreen();  //displayWidth //displayHeight
  int appWidth = width; 
  int appHeight = height;
  //
  //Music Loading 
  minim = new Minim(this); //Manditory
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music"; 
  String soundEffectsFolder = "Sound Effects"; 
  String dependenciesFolder = "dependencies"; 
  String songName1 = "Eureka";
  String soundEffect1 = "Wood_Door";
  String fileExtension_mp3 = ".mp3";
  //
  //CAUTION: Mistakes Below
  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ; 
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ; 
  String pathway = musicDirectory + songName1 + fileExtension_mp3; 
  println(pathway);
  playList[ currentSong ] = minim.loadFile( pathway ); 
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; 
  println(pathway);
  soundEffects[currentSong] = minim.loadFile( pathway ); 
  if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  } else {
    playList[currentSong].loop();
    printArray(playList);
  }
}//End Setup
//
void draw() {}//End Draw
//
void mousePressed() {}//End Mouse Pressed
//
void keyPressed() {}//End Key Pressed
//
//End MAIN Program
