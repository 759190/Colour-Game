void gameover() {
  background(0);
  t=140; //reset timer
  
  //Game over text
  fill(255,0,0);
  textSize(100);
  text("GAME OVER",width/2,250);
  
 //high score 
 fill(255);
 textSize(30);
 text("High Score:  " +highScore, width/2,550);

//high score if statement
  if (score>highScore) {
   highScore= score;
}

  //Score for that round
  text("Score:  " +score, width/2,450);
}

void gameoverClicks() {
  mode=INTRO;
  score=0; //reset score

}

void mouseReleased() {
if (mode==INTRO) {
    introClicks();
  }else if (mode==GAME) {  
   gameClicks();
  }else if (mode==GAMEOVER) {
    gameoverClicks();
  }
}
