// try to reduce the number of true's in the x y pos of sudoku
boolean[] eliminate(boolean[][][] sudoku, int x, int y)
{
  boolean[] result = eliminateLines(sudoku, x, y);
  result = eliminateQuadrant(sudoku, x, y);
  
  return result;
}

  
boolean[] eliminateQuadrant(boolean[][][] sudoku, int x, int y)
{
  boolean[] result = sudoku[x][y];
  
  int n = round(sqrt(sudoku.length));
  
  for (int i = x/n * n; i < x/n * n + n; i++)
    for (int j = y/n * n; j < y/n * n + n; j++) {
      // println("field", i, j);
      
      int val = current(sudoku[i][j], x, y, i, j);
      
      if (val >= 0)
        result[val] = false;
    }
  
  // fixme: there are quite a number fields in quadrant which are already visited
  
  return result;
}

boolean[] eliminateLines(boolean[][][] sudoku, int x, int y)
{
  boolean[] result = sudoku[x][y];
  
  // along x and y
  for (int i = 0; i < sudoku.length; i++) {
    // fixme: stop elimining if there is one true left
    
    // x
    int val = current(sudoku[i][y], x, y, i, y);
    
    if (val >= 0)
      result[val] = false;
    
    // y
    val = current(sudoku[x][i], x, y, x, i);

    if (val >= 0)
      result[val] = false;
  }
  
  return result;
}


// return current value if one true; else - nr of trues
// last number is to prevent checking by itself
int current(boolean[] value, int x, int y, int i, int j) {
  if(x==i && y==j)
    return -10;
  
  int count = 0;
  int val = 0;
  
  for (int k=0; k<value.length; k++) {
    if (value[k]) {
      val = k;
      count++;
    }
  }
  
  if (count == 1)
    return val;
  
  // potential clash between (unexpected) count == -0 and current == 0
  return -count;
}
