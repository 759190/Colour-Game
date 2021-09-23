//Sarah Nelson 1-4
//Sept 16, 2021
//Colour Game -- match the correct colour with the correct word

//modes
int mode;
final int INTRO=0;
final int GAME=1;
final int GAMEOVER=2;

//gif
PImage[] gif;
int frameNumber;
int f; //frame

//for randomizing color and word
String[]words;
color[]colors;

// colours 
int red=#FF0000;
int orange=#FF8800;
int yellow=#FED903;
int green =#62D62B;
int blue=#2B94D6;
int purple=#AF2BD6;

boolean match; //decides if the match is true or false


PFont king; //font
int score; //score
int highScore; //High Score

int w; //words
int c; //colours
int t; //used for timer rectangle

int fifty; // variable for 50% chance


// -----------------------------------------------------
void setup() {
 size(600,700); 
 mode=INTRO;
 
 t=140;//set up timer
 
 score=0; // starting score
 highScore=0;
 
// setup word/colours
words=new String[6];
colors=new color[6];

words[0]="red";
colors[0]=red;
words[1]="orange";
colors[1]=orange;
words[2]="yellow";
colors[2]=yellow;
words[3]="green";
colors[3]=green;
words[4]="blue";
colors[4]=blue;
words[5]="purple";
colors[5]=purple;

king=createFont("king.TTF", 200); //font


//Initialize random first word/colour
fill(colors[c]);  //
text(words[w],width/2,height/2);

//set up for game
w=int(random(0,6)); //(six is not counted)
c=int(random(0,6));


 //______________________________________________
 //Set up Gif
 frameNumber=15;
 gif = new PImage[frameNumber];
 int i=0;
 while (i<frameNumber) { //while loop
   gif[i]=loadImage("frame_"+i+"_delay-0.02s.gif");
   i=i+1;
   }
} //end

void draw() {
   if (mode==INTRO) {
    intro();
  }else if (mode==GAME) {  
   game(); 
  }else if (mode==GAMEOVER) {
    gameover();
  }else{
    println("Error: Mode= " + mode);
  }
} //end
