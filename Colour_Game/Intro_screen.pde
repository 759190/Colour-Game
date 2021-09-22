void intro() {
 // background(255);
//gif
image(gif[f],0,0,width,height);
f=f+1;
if (f==frameNumber) f=0;
  
 // Title text 
textAlign(CENTER,CENTER);
textFont(king);
textSize(80);
fill(0);
text("Colour Game",width/2,height/2); //black font
fill(255);
text("Colour Game",width/2+6,height/2+6); //white font
}

void introClicks() {
  mode=GAME;
}
