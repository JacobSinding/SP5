class Pacman {
  int xPos;
  int yPos;
  int dir;

  public Pacman(int x, int y) {
    xPos = x;
    yPos = y;
  }

  void display() {
    fill(255, 255, 0);
    rect(xPos+1*w, yPos+1*h, w, h);
  }

  void move(int dir) {
    switch (dir) {
    case 1: 
      yPos = (yPos-1*h); 
      break;//move up
    case 2: 
      xPos = (xPos-1*w); 
      break;//move left
    case 3: 
      xPos = (xPos+1*w); 
      break;// move right
    case 4: 
      yPos = (yPos+1*h); 
      break;
      //move down
    }
  }
}
