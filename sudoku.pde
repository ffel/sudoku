void setup () {
  
  // bij performance problemen schijnt delay() of frameRate() te helpen
  
  int[][] bord = {
    {3, 0, 0, 0}, 
    {0, 0, 0, 3}, 
    {2, 0, 0, 0}, 
    {0, 0, 0, 1} 
  };

  int len = bord.length*round(sqrt(bord.length))*pixels;
  size(len+1, len+1);
  
  tekenBord(maak3Darray(bord));
  
  
}


