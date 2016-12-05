PFont mifuente;
// bola 1
int posX;
int posY;
int velX;
int velY;
int diam;
int cont;
color bola1;
color bola2;

//bola2
int posX2;
int posY2;
int velX2;
int velY2;
int diam2;
int cont2;

void setup() {
  size(500, 500);
  background(255);
  noStroke();
  smooth();
  mifuente = loadFont("fuente.vlw");
  textFont(mifuente, 15);
  posX = width/2;
  posY = height/2;
  velX=(int)random(-5, 5);
  velY=(int)random(-5, 5);
  diam=50;
  cont=0;
  bola1= color(200,20,20);

  posX2=width/3;
  posY2=height/3;
  velX2=(int)random(-5, 5);
  velY2=(int)random(-5, 5);
  diam2=65;
  cont2=0;
  bola2= color(20,200,20);
}

void draw() {
  background(255);

  fill(bola1);
  ellipse(posX, posY, diam, diam);
  fill(255);
  textAlign(CENTER, CENTER);
  text(cont, posX, posY);

  fill(bola2);
  ellipse(posX2, posY2, diam2, diam2);
  fill(0);
  textAlign(CENTER, CENTER);
  text(cont2, posX2, posY2);

  posX+=velX;
  posY+=velY;
  posX2+=velX2;
  posY2+=velY2;

  if (posY>=height-diam/2 || posY <= diam/2) {
    velY*=-1; 
    cont++;
  }
  if (posX>=width-diam/2 || posX <= diam/2) {
    velX*=-1; 
    cont++;
  }

  if (posY2>=height-diam2/2 || posY2 <= diam2/2) {
    velY2*=-1; 
    cont2++;
  }
  if (posX2>=width-diam2/2 || posX2 <= diam2/2) {
    velX2*=-1; 
    cont2++;
  }


  if (dist(posX, posY, posX2, posY2)<= diam/2+diam2/2) {
    
    velX*=-1; 
    velX2*=-1;
    velY*=-1; 
    velY2*=-1;
    
    bola1=color(random(255),random(255),random(255));
    bola2=color(random(255),random(255),random(255));
  }


println(cont);
}

void mousePressed(){

velX=0;
velY=0;
velX2=0;
velY2=0;
}

void mouseReleased(){

  velX=(int)random(-10, 10);
  velY=(int)random(-10, 10);
  velX2=(int)random(-10, 25);
  velY2=(int)random(-10, 10);
}



