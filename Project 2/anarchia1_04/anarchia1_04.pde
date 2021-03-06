/*
 **************************************************************************************************
 *                                                                                                *
 * anarchia: (formerly music_play) new code branch                                                *
 *                                                                                                *
 * Programmer: Robert Hieger                                                                      *
 * Music Play v1.04                                                                               *
 *                                                                                                *
 * Begun: November 26, 2014                                                                       *
 * Completed: December 9, 2014                                                                    *
 *                                                                                                *
 * Program Objectives:                                                                            *
 *                                                                                                *
 * 1) Play a simple midi-based composition.                                                       *
 * 2) Display sheet music in sync with the music as it plays.                                     *
 * 3) Change background display in response to frequency and rhythm.                              *
 *                                                                                                *
 * VERY TALL ORDER, but somewhere to begin.                                                       *
 *                                                                                                *
 * In version 1.04, my goals are to:                                                              *
 *                                                                                                *
 * 1) Add masks to PImages to render music notation as it plays.                                  *
 *                                                                                                *
 * 2) Begin work on MIDI-rendering class library.                                                 *
 *                                                                                                *
 **************************************************************************************************
*/

// Declare PImage Array

PImage[] anarchiaSystems = new PImage[9];

void setup() {
  
  // Set size of window.
  
  size(800, 800);
  background(255);      // White
  
    // Load music systems to anarchiaSystems PImage Array. This is brute force approach.
    // My aim will be to abstract this into a class as well so that it may be 
  
    for (int i = 0; i < anarchiaSystems.length; i++) {
      
     // Populate array with images anarchia-system1.jpg through anarchia-system9.jpg.
      
      anarchiaSystems[i] = loadImage("anarchia-system" + (i + 1) + ".png");
      
     //println( "Loaded" + loadImage("anarchia-system" + (i + 1) + ".png") );
      
    }  // end for*/
  
}

void draw() 
{
  background(255);
  Name Title = new Name("Anarchia Entrance Theme", 40.);
  
  Title.drawHead();
  
  subName subTitle = new subName("from Anarchia, by Hanon Reznikov, The Living Theatre", 60.);
  
  subTitle.drawSub();
  
  // Insert By-Line Credit
  
  credLine byLine = new credLine("music by Robert Hieger", 100);
  
  byLine.byDraw();
  
  image( anarchiaSystems[0], 65, 105 );
  
  /*****************************************************************
   *  
   * Adapted from code kindly provided by Luke DuBois
   *
   * 1) Create white rectangle to mask music system
   *
   * 2) Progressively reveal music system synchronized to MIDI file
   *
   *****************************************************************
  */
   
  fill(255);    // Set fill of rectangle to white, same as sketch
  noStroke();  //  Set stroke width to 0 for rectangle.
  
  // Draw static rectangle over first system.
  
  rect(65 + mouseX, 105, anarchiaSystems[0].width, anarchiaSystems[0].height);
  
  
  
  //image(anarchiaSystems[0], 65, 105);
  //image(anarchiaSystems[1], 20, 205);
  //image(anarchiaSystems[2], 20, 400);
  //image(anarchiaSystems[3], 20, 600);
  
}
