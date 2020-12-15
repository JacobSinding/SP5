class Pacman {
  int xPos;
  int yPos;
  int dir;
  int unit;

  public Pacman(int x, int y, int unit) {
    xPos = x;
    yPos = y;
    this.unit = unit;
  }

  void display() {
    fill(255, 255, 0);
    rect(xPos*unit, yPos*unit, w, h);
  }

  void move(int dir) {
    switch (dir) {
    case 1: 
      yPos = (yPos-1); 
      break;//move up
    case 2: 
      xPos = (xPos-1); 
      break;//move left
    case 3: 
      xPos = (xPos+1); 
      break;// move right
    case 4: 
      yPos = (yPos+1); 
      break;
      //move down
    }
  }
}
