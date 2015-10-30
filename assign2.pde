/* please implement your assign1 code in this file. */
PImage backGround1,start2,start1,backGround2,fighter,treasure,enemy,hp,end1,end2;
int bg1x=0,bg2x=640,tx=(int)random(630),ty=(int)random(430),ex=0,ey=(int)random(430),k=40,playA=0;
float fx=580; float fy=220; float spd = 5;

boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
boolean playing =false ;
void setup () {
  size(640,480) ;  // must use this size.
 // void mousePressed (){
  
  //};
  backGround1 = loadImage("img/bg1.png");
  backGround2 = loadImage("img/bg2.png");
  fighter = loadImage("img/fighter.png");
  treasure = loadImage("img/treasure.png");
  enemy = loadImage("img/enemy.png");
  hp = loadImage("img/hp.png");
  start2=loadImage("img/start2.png");
  start1=loadImage("img/start1.png");
  end2=loadImage("img/end2.png");
  end1=loadImage("img/end1.png");
  // your code
}

void draw() {
  image(start2,0,0);
  if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420){
    image(start1,0,0);
  }
  if(mousePressed){
    if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420)
    playing=true;playA=2;
  }
  switch(playA){
  case 2:
  if (k==-100) {k=40;fx=580;fy=220;ty=(int)random(430);tx=(int)random(630);
    
   }
  if(playA==2){
  background(0);
  image(backGround1,bg1x-640,0);
  image(backGround2,bg2x-640,0);
  image(fighter,fx,fy);
  image(treasure,tx,ty);
  image(enemy,ex,ey);
  image(hp,40,40);
  fill(255,0,0,75);
  rect(45,45,k,20,100);
  bg1x%=1280;bg2x%=1280;
  ex+=3;ex%=640;
  bg1x+=1;
  bg2x+=1;
  if (upPressed) {
    fy -= spd;
  }
  if (downPressed) {
    fy += speed;
  }
  if (leftPressed) {
    fx -= spd;
  }
  if (rightPressed) {
    fx += spd;
  }
  if (fx >=580) {
    fx -=spd;
  }
  if (fx <=0) {
    fx +=spd;
  }
  if (fy <=0) {
    fy +=spd;
  }
   if (fy >=430) {
    fy -=spd;
  }
  if (ex ==0) {
    ey=(int)random(430);
  }
  if (ex+10 >=fx-5 && ey+10>=fy-20  && ey+10<=fy+60 && ex+10 <=fx+60) {
    k-=40;ex=0;ey=(int)random(430);
  }
    if (tx >=fx-5 && ty>=fy-10  && ty<=fy+60 && tx <=fx+60 && k<200) {
    k+=20;tx=(int)random(600);ty=(int)random(430);
  }
  if (tx >=fx-5 && ty>=fy-10  && ty<=fy+60 && tx <=fx+60 ) {
    ;tx=(int)random(600);ty=(int)random(430);
  }
  if (ex <=fx && ey<=fy-20) {
    enemyy +=4;
  } 
  if (ex <=fx && ey>=fy+60) {
    ey -=3;
  }
  if (k<=0) {k=-100;
    playA=1;
   }
 }break;
  case 1:
   if (playA==1) {
   image(end2,0,0);
    if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420){
    image(end1,0,0);}
  
  
  if(mousePressed){
    if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420)
    playA=2;//k=200;
  }break;}}
 

  
    
  
  // your code
}

void keyPressed(){
  if (key == CODED) { // detect special keys 
    switch (keyCode) {
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
    }
  }
}
void keyReleased(){
  if (key == CODED) {
      switch (keyCode) {
        case UP:
          upPressed = false;
          break;
        case DOWN:
          downPressed = false;
          break;
        case LEFT:
          leftPressed = false;
          break;
        case RIGHT:
          rightPressed = false;
          break;}}
}
