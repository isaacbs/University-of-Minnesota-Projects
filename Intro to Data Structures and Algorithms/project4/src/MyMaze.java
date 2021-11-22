import java.util.Random;
public class MyMaze{
    Cell[][] maze;

    public MyMaze(int rows, int cols) {
        maze = new Cell[rows][cols];
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                maze[i][j] = new Cell();
            }
        }
    }

    /* TODO: Create a new maze using the algorithm found in the writeup. */
    public static MyMaze makeMaze(int rows, int cols) {
        MyMaze m = new MyMaze(rows, cols);
        Stack1Gen <int[]> stack = new Stack1Gen();
        stack.push(new int[] {0,0});
        m.maze[0][0].setVisited(true);

        while(!stack.isEmpty()) {
            int[] coords = stack.top();
            int x = coords[1];
            int y = coords[0];
            int oriX = x, oriY = y;
            int num = 0;
            int[] unvisitedBorders = new int[4];
            int[][] moves = {{y, x+1},{y+1, x},{y,x-1},{y-1,x}}; //all possible moves from the point {y,x}
            Random rand = new Random();
            if (moves[0][0] >= 0 && moves[0][1] >= 0 && moves[0][0] < m.maze.length && moves[0][1] < m.maze[0].length) {
                if (!m.maze[moves[0][0]][moves[0][1]].getVisited()) { //checks to see if the first move is legal
                    unvisitedBorders[num++] = 0;
                }
            }
            if (moves[1][0] >= 0 && moves[1][1] >= 0 && moves[1][0] < m.maze.length && moves[1][1] < m.maze[0].length) {
                if (!m.maze[moves[1][0]][moves[1][1]].getVisited()) { //checks to see if the second move is legal
                    unvisitedBorders[num++] = 1;
                }
            }
            if (moves[2][0] >= 0 && moves[2][1] >= 0 && moves[2][0] < m.maze.length && moves[2][1] < m.maze[0].length) {
                if (!m.maze[moves[2][0]][moves[2][1]].getVisited()) { //checks to see if the third move is legal
                    unvisitedBorders[num++] = 2;
                }
            }
            if (moves[3][0] >= 0 && moves[3][1] >= 0 && moves[3][0] < m.maze.length && moves[3][1] < m.maze[0].length) {
                if (!m.maze[moves[3][0]][moves[3][1]].getVisited()) { //checks to see if the fourth move is legal
                    unvisitedBorders[num++] = 3;
                }
            }
            if (num >= 1 ) {
                int selected = unvisitedBorders[rand.nextInt((num))];
                y = moves[selected][0];
                x = moves[selected][1];
                stack.push(new int[] {y,x});
                m.maze[y][x].setVisited(true);
                switch (selected) {
                    case 1:
                        m.maze[oriY][oriX].setBottom(false); //removes border below
                        break;
                    case 2:
                        m.maze[y][x].setRight(false); //removes left border
                        break;
                    case 3:
                        m.maze[y][x].setBottom(false); //removes upper border
                        break;
                    default:
                        m.maze[oriY][oriX].setRight(false); //removes border to the right


                }
            } else {
                stack.pop(); //pops if there are no unvisited spots adjacent to current spot
            }
        }
        for (int i = 0; i < m.maze.length; i++) {
            for (int j = 0; j < m.maze[0].length; j++) {
                m.maze[i][j].setVisited(false);
            }
        }
        m.maze[m.maze.length-1][m.maze[0].length-1].setRight(false);
        return m;
    }

    /* TODO: Print a representation of the maze to the terminal */
    public void printMaze() {
        String map = "";
        for (int i = 0; i < maze[0].length; i++) {
            map += "|---";
        }
        map += "|\n";
        for (int i = 0; i < maze.length; i++) {
            if (i == 0)
                map += " ";
            else
                map += "|";
            for (int k = 0; k < 2; k++) {
                for (int j = 0; j < maze[0].length; j++) {
                    if (k == 0) {
                        if (maze[i][j].getVisited()) {
                            map += " * ";
                        } else {
                            map += "   ";
                        }
                        if (maze[i][j].getRight() && j != maze[0].length-1) {
                            map += "|";
                        } else if (j != maze[0].length-1) {
                            map += " ";
                        }
                    } else {
                        if (maze[i][j].getBottom()) {
                            map += "|---";
                        } else {
                            map += "|   ";
                        }
                    }
                    if (k == 0 && j == maze[0].length-1) {
                        if (i == maze.length-1) {
                            map += "\n";
                        } else {
                            map += "|\n";
                        }
                    }

                }
                if (k == 1) {
                    map += "|\n";
                }
            }
        }
        System.out.println(map);
    }

    /* TODO: Solve the maze using the algorithm found in the writeup. */
    public void solveMaze() {
        int finalX = this.maze[0].length-1;
        int finalY = this.maze.length-1;
        Q1Gen<int[]> queue = new Q1Gen();
        queue.add(new int[]{0, 0});
        while (!queue.isEmpty()) { //iterate until queue is empty
            int[] current = queue.remove();
            int x = current[1];
            int y = current[0];
            this.maze[y][x].setVisited(true);
            if (y == finalY && x == finalX) {
                break;
            }
            if (y+1 < this.maze.length) {
                if (!this.maze[y][x].getBottom() && !this.maze[y + 1][x].getVisited()) {
                    //System.out.println("Down"); Used for debugging
                    queue.add(new int[] {y + 1, x}); //adds the spot down from original
                 }
            } if (x+1 < this.maze[0].length) {
                if (!this.maze[y][x].getRight() && !this.maze[y][x + 1].getVisited()) {
                    //System.out.println("Right"); Used for debugging
                    queue.add(new int[] {y, x + 1}); //adds the spot to the right of the original
                }
            } if (x - 1 >= 0) {
                if (!this.maze[y][x - 1].getRight() && !this.maze[y][x - 1].getVisited()) {
                    //System.out.println("Left"); Used for debugging
                    queue.add(new int[] {y, x - 1}); //adds the spot left of the original
                }
            } if (y - 1 >= 0) {
                if (!this.maze[y - 1][x].getBottom() && !this.maze[y - 1][x].getVisited()) {
                    //System.out.println("Up"); Used for debugging
                    queue.add(new int[] {y - 1, x}); //adds the spot above the original
                }
            }
        }
        this.printMaze();
    }
    public static void main(String[] args) {
        //call functions here
    }
}
