void setup () {
  int[][] bord = new int[][] {
    {3, 0, 0, 0}, 
    {0, 0, 0, 3}, 
    {2, 0, 0, 0}, 
    {0, 0, 0, 1} 
  }
  
  printSudoku(maak3Darray(bord));
}

printSudoku(boolean[][][] bord)
{
  for (int x = 0; x < bord.length; x++)
  {
    for (int y = 0; y < bord[x].length; y++)
    {
      println("veld:", x, y);
      for (int v = 0; v < bord[x][y].length; v++) {
        print(bord[x][y][v], "- ");
      }
    }
  }
}
