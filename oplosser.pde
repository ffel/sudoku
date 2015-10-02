boolean[][][] maak3Darray(int[][] invoer)
{
  int n = invoer.length;
  boolean[][][] bord = new int[n][n][n];
  
  for (int x=0; x < invoer.length; x++)
    for (int y=0; y < invoer[x].length; y++) {
      bord[x][y] = initWaarde(n, invoer[x][y]);
    }
  
  return bord;
}

boolean[] initWaarde(int len, int value) {
  boolean[] arr = new boolean[len];
  
  if (value == 0) {
    for (int i = 0; i < arr.length; i++)
      arr[i] = true;
  } else {
    arr[value-1] = true;
  }
  
  return arr;
}
