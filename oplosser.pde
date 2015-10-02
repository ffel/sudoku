// try to reduce the number of true's in the x y pos of sudoku
boolean[] eliminate(boolean[][][] sudoku, int x, int y)
{
  boolean[] result = sudoku[x][y];
  
  // along x and y
  for (int i = 0; i < sudoku.length; i++) {
    // fixme: result itself is visited twice
    // fixme: stop elimining if there is one true left
    
    // x
    int val = current(sudoku[i][y]);
    
    if (val >= 0)
      result[val] = false;
    
    // y
    val = current(sudoku[x][i]);

    if (val >= 0)
      result[val] = false;
  }
  
  // check quadrant
  // fixme: there are quite a number fields in quadrant which are already visited
  
  return result;
}

// return current value if one true; else - nr of trues
int current(boolean[] value) {
  int count = 0;
  int val = 0;
  
  for (int i=0; i<value.length; i++) {
    if (value[i]) {
      val = i;
      count++;
    }
  }
  
  if (count == 1)
    return val;
  
  // potential clash between (unexpected) count == -0 and current == 0
  return -count;
}
