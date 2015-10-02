// try to reduce the number of true's in the x y pos of sudoku
boolean[] eliminate(boolean[][][] sudoku, int x, int y)
{
  boolean[] result = sudoku[x][y];
  
  // along x
  for (int i = 0; x < soduku.length; i++) {
    int val = current(sudoku[i][y]);
    
    if (val >= 0)
      result[val] = false;
  }
  
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
  
  if (count ==1)
    return val;
  
  // potential clash between (unexpected) count == -0 and current == 0
  return -count;
}
