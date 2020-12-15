int w, h, numOfRows, numOfCols, numOfActors, delay; //<>// //<>// //<>//


Pacman pacman1;
Node[] walls = new Node[4];
Node[][] nodes;



void setup() {
  size(500, 500);
  numOfRows=7;
  numOfCols=7;
  h=height/numOfRows;
  w=width/numOfCols;
  nodes = new Node[numOfRows][numOfCols];
  initBane();
  pacman1 = new Pacman(1, 1, h);
  frameRate(30);
}



void draw() {
  background(255);
  drawBane();
  pacman1.display();
  keyPressed();
}


boolean moveAllowed(int dir) {
  int pi = pacman1.xPos;
  int pj = pacman1.yPos;
  boolean isMoveLegal = false;
  Node tmpNode = null;
  switch (dir) {
  case 1: 
    tmpNode = nodes[pi][pj-1]; 
    if (tmpNode.nodeType==0) {
      isMoveLegal = true;
    }
    break;//move up
  case 2: 
    tmpNode = nodes[pi-1][pj];
    if (tmpNode.nodeType==0) {
      isMoveLegal = true;
    }
    break;//move left
  case 3: 
    tmpNode = nodes[pi+1][pj]; 
    if (tmpNode.nodeType==0) {
      isMoveLegal = true;
    }
    break;// move right
  case 4: 
    tmpNode = nodes[pi][pj+1]; 
    if (tmpNode.nodeType==0) {
      isMoveLegal = true;
    }
    break;
    //move down
  }
  return isMoveLegal;
}



void keyPressed() { 
  if ((key == 'w')) {
    if (moveAllowed(1)) {
      pacman1.move(1);
    }
  }
  if ((key == 'a')) {
    if (moveAllowed(2)) {
      pacman1.move(2);
    }
  }
  if ((key == 'd')) {
    if (moveAllowed(3)) {
      pacman1.move(3);
    }
  }
  if ((key == 's')) {
    if (moveAllowed(4)) {
      pacman1.move(4);
    }
  }
}





void initBane() {
  // Begin loop for columns
  for (int i = 0; i < numOfCols; i++) {
    // Begin loop for rows
    for (int j = 0; j < numOfRows; j++) {
      // Scaling up to draw a rectangle at (x,y)
      int x = i;
      int y = j;
      Node node = new Node(x, y, 1, h);
      nodes[i][j]=node;
    }
  }
  //obstacles
  nodes[2][2].col=100;
  nodes[4][2].col=100;
  nodes[2][4].col=100;
  nodes[4][4].col=100;
  nodes[2][2].nodeType=1;
  nodes[4][2].nodeType=1;
  nodes[2][4].nodeType=1;
  nodes[4][4].nodeType=1;

  //top wall
  nodes[0][0].col=100;
  nodes[1][0].col=100;
  nodes[2][0].col=100;
  nodes[3][0].col=100;
  nodes[4][0].col=100;
  nodes[5][0].col=100;
  nodes[6][0].col=100;
  nodes[0][0].nodeType=1;
  nodes[1][0].nodeType=1;
  nodes[2][0].nodeType=1;
  nodes[3][0].nodeType=1;
  nodes[4][0].nodeType=1;
  nodes[5][0].nodeType=1;
  nodes[6][0].nodeType=1;

  //right wall
  nodes[6][1].col=100;
  nodes[6][2].col=100;
  nodes[6][3].col=100;
  nodes[6][4].col=100;
  nodes[6][5].col=100;
  nodes[6][6].col=100;
  nodes[6][1].nodeType=1;
  nodes[6][2].nodeType=1;
  nodes[6][3].nodeType=1;
  nodes[6][4].nodeType=1;
  nodes[6][5].nodeType=1;
  nodes[6][6].nodeType=1;

  //bottom wall
  nodes[5][6].col=100;
  nodes[4][6].col=100;
  nodes[3][6].col=100;
  nodes[2][6].col=100;
  nodes[1][6].col=100;
  nodes[0][6].col=100;
  nodes[5][6].nodeType=1;
  nodes[4][6].nodeType=1;
  nodes[3][6].nodeType=1;
  nodes[2][6].nodeType=1;
  nodes[1][6].nodeType=1;
  nodes[0][6].nodeType=1;

  //left wall
  nodes[0][1].col=100;
  nodes[0][2].col=100;
  nodes[0][3].col=100;
  nodes[0][4].col=100;
  nodes[0][5].col=100;
  nodes[0][1].nodeType=1;
  nodes[0][2].nodeType=1;
  nodes[0][3].nodeType=1;
  nodes[0][4].nodeType=1;
  nodes[0][5].nodeType=1;
}



void drawBane() {
  for (int i = 0; i < numOfCols; i++) {
    // Begin loop for rows
    for (int j = 0; j < numOfRows; j++) {
      // Scaling up to draw a rectangle at (x,y)
      int x = i*(width/numOfCols);
      int y = j*(height/numOfRows);
      nodes[i][j].displayWalls();
    }
  }
}
