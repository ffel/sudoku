final int pixels = 20;

void tekenBord(boolean[][][] bord) {
  
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(pixels);
  
  int n = round(sqrt(bord.length));
  
  // draw squares
  
  for (int x=0; x<bord.length; x++)
    for (int y=0; y<bord[x].length; y++) {
      
      // prepare print label
      int possibilities = 0;
      int last = 0;
      
      for (int v=0; v<bord[x][y].length; v++) {
        
        
        if (bord[x][y][v]) {
          fill(255);
          possibilities++;
          last = v;
        } else {
          fill(220);
        }
        
        rect(n*x*pixels+v%n*pixels, n*y*pixels+v/n*pixels,
          pixels, pixels);
          
      }
      
      // print value if known
      if (possibilities == 1) {
        fill(255, 0, 0);
        text(last+1, n*x*pixels + n/2*pixels, n*y*pixels + n/2*pixels);
      }
    }
    
    // draw lines
    
    stroke(150);
    
    for (int i=1; i<bord.length; i++) {
      if (i%n == 0)
        strokeWeight(3);
      else
        strokeWeight(1);
        
      line(n*i*pixels, 0, n*i*pixels, height);
      line(0, n*i*pixels, width, n*i*pixels);
    }

}

/*
void setup() {
  split(0, 4);
  split(1, 4);
  split(2, 4);
  split(3, 4);
  
  for (int i = 0; i < 9; i++)
    split(i, 9);
  
}

void split(int val, int tot) {
  tot = round(sqrt(tot));
  println(val%tot, val/tot);
}
*/

void printBord(boolean[][][] bord)
{
  for (int x = 0; x < bord.length; x++)
  {
    for (int y = 0; y < bord[x].length; y++)
    {
      println("veld:", x, y);
      for (int v = 0; v < bord[x][y].length; v++) {
        print(bord[x][y][v], "- ");
      }
      println("");
    }
  }
}
