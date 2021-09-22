void game() {
  background(0);
//White rectangle
rectMode(LEFT);
  fill(255);
  noStroke();
  rect(0,0,width/2,height);

// true or false text
textSize(50);
fill(0);
text("True",150,100);
fill(255);
text("False",450,100);
//----------------------------------------------------
//score
fill(255,0,0);
textSize(30);
text("Score: " +score, width/2,600);
//----------------------------------------------------
// show colour/word
textSize(100);
fill(colors[c]); 
text(words[w],width/2,height/2);

//matching the colours and words
if (c==w) { //same colour and word
match=true; 
}else{
  match=false;
}
//_____________________________________________________
//Timer rectangle
rectMode(CENTER);
stroke(255,0,0);
strokeWeight(3);
fill(0);
rect(width/2,500,x,20);
//timer if statement
x=x-2;
if (x<0) {
  mode=GAMEOVER;
}
//for 50% chance //-----------------------------------
if (fifty==0) w=c; 
} //end



void gameClicks() { 
// Click on true
if (mouseX>0&&mouseX<300&&mouseY>0&&mouseY<700 && match==true) {
  fifty= int(random(0,2)); // 50% chance of match
  score=score+1; // if matched
w=int(random(0,6)); 
c= int(random(0,6));
x=140; //reset timer

} else if (mouseX>0&&mouseX<300&&mouseY>0&&mouseY<700 && match==false){
 mode=GAMEOVER; // if not matched
}

//Click on false
if (mouseX>300&&mouseX<600&&mouseY>0&&mouseY<700&& match==true) {
mode=GAMEOVER; // if matched

}else if (mouseX>300&&mouseX<600&&mouseY>0&&mouseY<700&& match==false){
fifty= int(random(0,2)); //50% chance of match
score=score+1; // if not matched
w=int(random(0,6)); 
c= int(random(0,6)); 
x=140; //reset timer
}
} //end
