import ketai.ui.*;
import ketai.data.*;
import ketai.sensors.*;
import ketai.net.nfc.record.*;
import ketai.net.bluetooth.*;
import ketai.net.wifidirect.*;
import ketai.net.*;
import ketai.net.nfc.*;
import ketai.camera.*;
import ketai.cv.facedetector.*;

import android.view.MotionEvent;

PImage img;
PImage img2;
PImage gameType;
PImage gameLink;
PImage gameCustom;
int P=1;
int k = 0;
int lastP = 0;
pantallaDeInicio PDI;

void setup ()
{
  orientation(PORTRAIT);
  
  size(displayWidth,displayHeight); 
  img = loadImage("pantalla_inicio-01.png");
  img2 = loadImage("gamemode_screen.png");
  gameType = loadImage("screengames.png");
  gameLink = loadImage("mpselect3-01.png");
  gameCustom=loadImage("customize_screen.png");
  PDI = new pantallaDeInicio();
}

void draw ()
{
  drawPantalla();
  
}

void mouseReleased() {
  if (k < 3){
    k++;
  }
 }

public void drawPantalla(){
   switch(P){
      case 1: 
          PDI.showPantalla();
          
   }
 }
 
@ Override
void onBackPressed() {
  if(k==0) {
    super.onBackPressed();
  } else {
    k=k-1;
    
  }
}
