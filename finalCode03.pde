objetADeplacer[] objets;
objetADeplacer selected=null;

PImage[] images = new PImage[6];
int imagesIndex = 0;
  
void setup() {
  size(900, 600);colorMode(HSB);noStroke();
  objets = new objetADeplacer[8];
  objets[0]=new objetADeplacer(100, 550);
  objets[1]=new objetADeplacer(200, 550);
  objets[2]=new objetADeplacer(300, 550);
  objets[3]=new objetADeplacer(400, 550);
  objets[4]=new objetADeplacer(500, 550);
  objets[5]=new objetADeplacer(600, 550);
  objets[6]=new objetADeplacer(700, 550);
  objets[7]=new objetADeplacer(800, 550);
 
  
   for(int i =0; i<6; i++){
    images[i] = loadImage(i + ".png");
    
  }

}
  
void draw() {
  background(0);
   stroke(256,256,256,90);
    
  image(images[5],0,0);
  if(key == '1'){
  image(images[0],0,0);
  
  }
    if(key == '2'){
  image(images[1],0,0);
  
  }
  
      if(key == '3'){
  image(images[2],0,0);
  
  }
        if(key == '4'){
  image(images[3],0,0);
  
  }
  
          if(key == '5'){
  image(images[4],0,0);
  
  }
  
    fill(0,0,0,80);
  rect(0,500,width,height);
  
  
  for (int a=0; a<objets.length; a++) {
    objets[a].affiche();
  }
}
  
class objetADeplacer {
  float x, y;color c;
  objetADeplacer(float _x, float _y) {
    x=_x;y=_y;c=color(random(255),240,255);
  }
  void affiche() {
    fill(c);
    if(selected==this){
      x=mouseX;y=mouseY;
    }
    ellipse(x,y,random(x/8),random(y/8));
  }
 
}
  
void mousePressed(){
  float minimu=1000;
  int choisi=-1;
  for(int a=0;a<objets.length;a++){
    float d=dist(objets[a].x,objets[a].y,mouseX,mouseY);
    if(d<minimu){minimu=d;choisi=a;}
  }
  if(minimu<25){
    selected=objets[choisi];
  }
}
  
void mouseReleased(){
  selected=null;
}