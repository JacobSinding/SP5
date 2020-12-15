class Node {
  int xPos;
  int yPos;
  int nodeType;
  int col;

  public Node(int x, int y, int col) {
    xPos = x;
    yPos = y;
    nodeType = 0;
    this.col = col;
  }

  void displayWalls() {
    colorMode(RGB);
    fill(col,100,100);
    rect(xPos, yPos, w, h);
  }
}
