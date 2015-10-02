boolean[][][] sudoku;
int result;

void setup () {
  
  // bij performance problemen schijnt delay() of frameRate() te helpen
  frameRate(0.5);
  
  // 3x3#361461781683972
  int[][] bord = {
    {4,0,0,  0,2,0, 0,6,3}, 
    {1,0,0,  7,0,0, 0,0,0}, 
    {0,8,7,  0,6,0, 0,0,0}, 

    {0,0,9,  0,8,1, 3,0,0}, 
    {6,4,8,  0,0,0, 1,7,5}, 
    {0,0,3,  4,7,0, 9,0,0}, 

    {0,0,0,  0,4,0, 2,3,0}, 
    {0,0,0,  0,0,3, 0,0,4}, 
    {3,5,0,  0,1,0, 0,0,9}
  };

  int len = bord.length*round(sqrt(bord.length))*pixels;
  size(len+1, len+1);
  
  sudoku = maak3Darray(bord);
  result = REDUCED_TRUE;
  
  // solve(sudoku);

  //tekenBord(sudoku);
}

void draw() {
  
  if (result != NO_CHANGE && result != ALL_FOUND) {
    result = solveNext(sudoku);
    tekenBord(sudoku);
  }
}





