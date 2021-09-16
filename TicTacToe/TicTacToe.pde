PImage x, o;

int xCoordinate = 0;
int yCoordinate = 0;

int playerMove = 1;

int[][] grid = new int[3][3];

void setup() { 
  size(900, 900);
  
  x = loadImage("x.jpg");
  o = loadImage("o.jpg");
  
  //filling grid array with 3's
  for (int row = 0; row < 3; row++) {
    for (int column = 0; column < 3; column++) {
      grid[row][column] = 3;
    }
  }      
}

void draw() {
  background(255);
  imageMode(CENTER);
  strokeWeight(5);
  fill(255);
  textAlign(CENTER);
  textSize(48);
  rectMode(CORNER);
  
  //grid rectangles
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      rect(j * width / 3, i * height / 3, width / 3, height / 3);
    }
  }
  
  //loop to load player images. x is 0. o is 1
  for (int row = 0; row < 3; row++) {
    for (int column = 0; column < 3; column++) {
      if (grid[row][column] == 0) {
        if (row == 0 && column == 0) {
          image(x, width / 6, height / 6);
        }
        else if (row == 0 && column == 1) {
          image(x, width / 2, height / 6);
        }
        else if (row == 0 && column == 2) {
          image(x, 5 * width / 6, height / 6);
        }
        else if (row == 1 && column == 0) {
          image(x, width / 6, height / 2);
        }
        else if (row == 1 && column == 1) {
          image(x, width / 2, height / 2);
        }
        else if (row == 1 && column == 2) {
          image(x, 5 * width / 6, height / 2);
        }
        else if (row == 2 && column == 0) {
          image(x, width / 6, 5 * height / 6);
        }
        else if (row == 2 && column == 1) {
          image(x, width / 2, 5 * height / 6);
        }
        else if (row == 2 && column == 2) {
          image(x, 5 * width / 6, 5 * height / 6);
        }
      }
      else if (grid[row][column] == 1) {
        if (row == 0 && column == 0) {
          image(o, width / 6, height / 6);
        }
        else if (row == 0 && column == 1) {
          image(o, width / 2, height / 6);
        }
        else if (row == 0 && column == 2) {
          image(o, 5 * width / 6, height / 6);
        }
        else if (row == 1 && column == 0) {
          image(o, width / 6, height / 2);
        }
        else if (row == 1 && column == 1) {
          image(o, width / 2, height / 2);
        }
        else if (row == 1 && column == 2) {
          image(o, 5 * width / 6, height / 2);
        }
        else if (row == 2 && column == 0) {
          image(o, width / 6, 5 * height / 6);
        }
        else if (row == 2 && column == 1) {
          image(o, width / 2, 5 * height / 6);
        }
        else if (row == 2 && column == 2) {
          image(o, 5 * width / 6, 5 * height / 6);
        }
      }
    }
  }
  
  rectMode(CENTER);
  
  //checking win conditions for rows
  if (grid[0][0] == grid[0][1] && grid[0][1] == grid[0][2] && (grid[0][0] != 3 && grid[0][1] != 3 && grid[0][2] != 3)) {
    rect(width / 2, height / 2, 700, 400);
    if (grid[0][0] == 0 && grid[0][1] == 0 && grid[0][2] == 0) {
      fill(0);
      text("Player X wins!", width / 2, height / 2);
      playerMove = 10;
    }
    else {
      fill(0);
      text("Player O wins!", width / 2, height / 2);
      playerMove = 10;
    }
  }
  else if (grid[1][0] == grid[1][1] && grid[1][1] == grid[1][2] && (grid[1][0] != 3 && grid[1][1] != 3 && grid[1][2] != 3)) {
    rect(width / 2, height / 2, 700, 400);
    if (grid[1][0] == 0 && grid[1][1] == 0 && grid[1][2] == 0) {
      fill(0);
      text("Player X wins!", width / 2, height / 2);
      playerMove = 10;
    }
    else {
      fill(0);
      text("Player O wins!", width / 2, height / 2);
      playerMove = 10;
    }
  }
  else if (grid[2][0] == grid[2][1] && grid[2][1] == grid[2][2] && (grid[2][0] != 3 && grid[2][1] != 3 && grid[2][2] != 3)) {
    rect(width / 2, height / 2, 700, 400);
    if (grid[2][0] == 0 && grid[2][1] == 0 && grid[2][2] == 0) {
      fill(0);
      text("Player X wins!", width / 2, height / 2);
      playerMove = 10;
    }
    else {
      fill(0);
      text("Player O wins!", width / 2, height / 2);
      playerMove = 10;
    }
  }
  //checking win conditions for columns
  else if (grid[0][0] == grid[1][0] && grid[1][0] == grid[2][0] && (grid[0][0] != 3 && grid[1][0] != 3 && grid[2][0] != 3)) {
    rect(width / 2, height / 2, 700, 400);
    if (grid[0][0] == 0 && grid[1][0] == 0 && grid[2][0] == 0) {
      fill(0);
      text("Player X wins!", width / 2, height / 2);
      playerMove = 10;
    }
    else {
      fill(0);
      text("Player O wins!", width / 2, height / 2);
      playerMove = 10;
    }
  }
  else if (grid[0][1] == grid[1][1] && grid[1][1] == grid[2][1] && (grid[0][1] != 3 && grid[1][1] != 3 && grid[2][1] != 3)) {
    rect(width / 2, height / 2, 700, 400);
    if (grid[0][1] == 0  && grid[1][1] == 0 && grid[2][1] == 0) {
      fill(0);
      text("Player X wins!", width / 2, height / 2);
      playerMove = 10;
    }
    else {
      fill(0);
      text("Player O wins!", width / 2, height / 2);
      playerMove = 10;
    }
  }
  else if (grid[0][2] == grid[1][2] && grid[1][2] == grid[2][2] && (grid[0][2] != 3 && grid[1][2] != 3 && grid[1][2] != 3)) {
    rect(width / 2, height / 2, 700, 400);
    if (grid[0][2] == 0 && grid[1][2] == 0 && grid[2][2] == 0) {
      fill(0);
      text("Player X wins!", width / 2, height / 2);
      playerMove = 10;
    }
    else {
      fill(0);
      text("Player O wins!", width / 2, height / 2);
      playerMove = 10;
    }
  }
  //checking win conditions for diagonals
  else if (grid[0][0] == grid[1][1] && grid[1][1] == grid[2][2] && (grid[0][0] != 3 && grid[1][1] != 3 && grid[2][2] != 3)) {
    rect(width / 2, height / 2, 700, 400);
    if (grid[0][0] == 0 && grid[1][1] == 0 && grid[2][2] == 0) {
      fill(0);
      text("Player X wins!", width / 2, height / 2);
      playerMove = 10;
    }
    else {
      fill(0);
      text("Player O wins!", width / 2, height / 2);
      playerMove = 10;
    }
  }
  else if (grid[0][2] == grid[1][1] && grid[1][1] == grid[2][0] && (grid[0][2] != 3 && grid[1][1] != 3 && grid[2][0] != 3)) {
    rect(width / 2, height / 2, 700, 400);
    if (grid[0][2] == 0 && grid[1][1] == 0 && grid[2][0] == 0) {
      fill(0);
      text("Player X wins!", width / 2, height / 2);
      playerMove = 10;
    }
    else {
      fill(0);
      text("Player O wins!", width / 2, height / 2);
      playerMove = 10;
    }
  }
  //if there are no possible win conditions left (exceeded max number of moves)
  else if (playerMove > 9) {
    rect(width / 2, height / 2, 700, 400);
    fill(0);
    text("Draw!", width / 2, height / 2);
  }
}

void mousePressed() {
  
  //setting values on the grid for "x"
  if (playerMove % 2 != 0 && playerMove <= 9) {
    if (mouseY > 0 && mouseY < 300) {
      if (mouseX > 0 && mouseX < 300) {
        grid[0][0] = 0;
      }
      else if (mouseX > 300 && mouseX < 600) {
        grid[0][1] = 0;
      }
      else if (mouseX > 600 && mouseX < 900) {
        grid[0][2] = 0;
      }
    }
    else if (mouseY > 300 && mouseY < 600) {
      if (mouseX > 0 && mouseX < 300) {
        grid[1][0] = 0;
      }
      else if (mouseX > 300 && mouseX < 600) {
        grid[1][1] = 0;
      }
      else if (mouseX > 600 && mouseX < 900) {
        grid[1][2] = 0;
      }
    }
    else if (mouseY > 600 && mouseY < 900) {
      if (mouseX > 0 && mouseX < 300) {
        grid[2][0] = 0;
      }
      else if (mouseX > 300 && mouseX < 600) {
        grid[2][1] = 0;
      }
      else if (mouseX > 600 && mouseX < 900) {
        grid[2][2] = 0;
      }
    }
    
    //goes to next move
    playerMove++;
  }
  //setting values on the grid for "o"
  else if (playerMove % 2 == 0 && playerMove <= 9) {
    if (mouseY > 0 && mouseY < 300) {
      if (mouseX > 0 && mouseX < 300) {
        grid[0][0] = 1;
      }
      else if (mouseX > 300 && mouseX < 600) {
        grid[0][1] = 1;
      }
      else if (mouseX > 600 && mouseX < 900) {
        grid[0][2] = 1;
      }
    }
    else if (mouseY > 300 && mouseY < 600) {
      if (mouseX > 0 && mouseX < 300) {
        grid[1][0] = 1;
      }
      else if (mouseX > 300 && mouseX < 600) {
        grid[1][1] = 1;
      }
      else if (mouseX > 600 && mouseX < 900) {
        grid[1][2] = 1;
      }
    }
    else if (mouseY > 600 && mouseY < 900) {
      if (mouseX > 0 && mouseX < 300) {
        grid[2][0] = 1;
      }
      else if (mouseX > 300 && mouseX < 600) {
        grid[2][1] = 1;
      }
      else if (mouseX > 600 && mouseX < 900) {
        grid[2][2] = 1;
      }
    }
    
    //goes to next move
    playerMove++;
  }
}
