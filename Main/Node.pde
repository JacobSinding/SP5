class Node {
  int xPos;
  int yPos;
  int nodeType;
  int col;
  int unit;

  public Node(int x, int y, int col) {
    xPos = x;
    yPos = y;
    nodeType = 0;
    this.col = col;
  }

  public Node(int x, int y, int col, int unit) {
    xPos = x;
    yPos = y;
    nodeType = 0;
    this.col = col;
    this.unit = unit;
  }
  
  void displayWalls() {
    colorMode(RGB);
    fill(col, 100, 100);
    rect(xPos*unit, yPos*unit, w, h);
    //rect(xPos, yPos, w, h);
  }
}
