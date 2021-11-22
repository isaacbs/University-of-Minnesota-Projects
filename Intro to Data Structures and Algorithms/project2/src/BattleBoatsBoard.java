//Written by blain075

public class BattleBoatsBoard {
    Cell[][] aBoard;
    Cell[][] pBoard;
    Boat[] boats;
    int totalShots;
    int turns;
    int shipsRemaining;
    int size;
    boolean ori;
    Cell[] used;
    int nextOpen = 0;
    boolean works;
    int drone;
    int missile;
    int shotsHit;

    public BattleBoatsBoard() {
    }

    public BattleBoatsBoard(int s) {
        aBoard = new Cell[s][s];
        pBoard = new Cell[s][s];
        size = s;
        totalShots = 0;
        turns = 0;
        shotsHit = 0;
        if (size == 8) {
            shipsRemaining = 5;
            boats = new Boat[5];
            drone = 1;
            missile = 1;
        } else if (size == 12) {
            shipsRemaining = 10;
            boats = new Boat[10];
            drone = 2;
            missile = 2;
        }
        for (int i = 0; i < s; i++) {
            for (int j = 0; j < s; j++) {
                aBoard[i][j] = new Cell(i, j);
                pBoard[i][j] = new Cell(i, j);
            }
        }
    }

    private static boolean headsTails() {
        double a = Math.floor(Math.random() * 10 + 1);
        return a > 5;
    }

    public Cell[] findSpace(int length, boolean o, char boat, int size) {
        works = true;
        int tempRow = 0;
        int tempCol = 0;
        Cell[] potential = new Cell[length];
        if (o) {
            tempRow = (int) Math.floor(Math.random() * size);
            tempCol = (int) Math.floor(Math.random() * (size - length));
            for (int i = 0; i < length; i++) {
                potential[i] = new Cell(tempRow, tempCol + i, boat);
            }
        } else {
            tempRow = (int) Math.floor(Math.random() * (8 - length));
            tempCol = (int) Math.floor(Math.random() * 8);
            for (int i = 0; i < length; i++)
                potential[i] = new Cell(tempRow + i, tempCol, boat);
        }
        return potential;
    }

    public void placeBoats() {
        while (!works) {
            nextOpen = 0;
            if (size == 8) {
                used = new Cell[17];
                for (int i = 0; i < used.length; i++) {
                    used[i] = new Cell(-1, -1);
                }
                int[] length = {5, 4, 3, 3, 2};
                char[] chars = {'1', '2', '3', '4', '5'};
                Cell[] tempSegs;
                for (int i = 0; i < length.length; i++) {
                    ori = headsTails();
                    boats[i] = new Boat(length[i], ori, findSpace(length[i], ori, chars[i], size));
                    tempSegs = boats[i].getSegments();
                    for (int j = 0; j < tempSegs.length; j++) {
                        used[nextOpen] = tempSegs[j];
                        nextOpen++;
                    }
                }
            } else {
                used = new Cell[34];
                for (int i = 0; i < used.length; i++) {
                    used[i] = new Cell(-1, -1);
                }
                int[] length = {5, 5, 4, 4, 3, 3, 3, 3, 2, 2};
                char[] chars = {'1', '2', '3', '4', '5', '6', '7', '8', '9', 'Z'};
                Cell[] tempSegs;
                for (int i = 0; i < length.length; i++) {
                    ori = headsTails();
                    boats[i] = new Boat(length[i], ori, findSpace(length[i], ori, chars[i], size));
                    tempSegs = boats[i].getSegments();
                    for (int j = 0; j < tempSegs.length; j++) {
                        used[nextOpen] = tempSegs[j];
                        nextOpen++;
                    }
                }
            }
            for (int i = 0; i < used.length; i++) {
                for (int j = 0; j < used.length; j++) {
                    if (used[i].getCol() == used[j].getCol() && used[i].getRow() == used[j].getRow() && used[i] != used[j]) {
                        works = false;
                    }
                }
            }
        }
        for (int k = 0; k < nextOpen; k++) {
            aBoard[used[k].getRow()][used[k].getCol()].setStatus(used[k].getStatus());
        }
    }

    public void print(char mode) {
        if (mode == 'a') {
            for (int i = 0; i < aBoard.length; i++) {
                for (int j = 0; j < aBoard[0].length; j++) {
                    System.out.print(aBoard[i][j].getStatus() + " ");
                }
                System.out.println("");

            }
        } else if (mode == 'p') {
            for (int i = 0; i < pBoard.length; i++) {
                for (int j = 0; j < pBoard[0].length; j++) {
                    System.out.print(pBoard[i][j].getStatus() + " ");
                }
                System.out.println("");
            }
        }
    }

    public void fire(int x, int y, int size) {
        boolean penalty = false;
        penalty = x < 0 || x > size || y < 0 || y > size || aBoard[x][y].getStatus() == 'H' || aBoard[x][y].getStatus() == 'M';
        if (penalty) {
            System.out.println("Penalty");
            turns++;
        } else if (aBoard[x][y].getStatus() != '-') {
            System.out.println("hit");
            char check = aBoard[x][y].getStatus();
            boolean sunk = true;
            aBoard[x][y].setStatus('H');
            pBoard[x][y].setStatus('X');
            for (int i = 0; i < size; i++) {
                for (int j = 0; j < size; j++) {
                    if (aBoard[i][j].getStatus() == check) {
                        sunk = false;
                    }
                }
            }
            if (sunk)
                System.out.println("Sunk");
            totalShots++;
            shotsHit++;
        } else {
            System.out.println("miss");
            aBoard[x][y].setStatus('M');
            pBoard[x][y].setStatus('O');
            totalShots++;
        }
        turns++;
    }
    public void drone(char dir, int location, int size) {
        int targets = 0;
        if (dir == 'r') {
            for (int i = 0; i < size; i++) {
                if (aBoard[location][i].getStatus() != '-' && aBoard[location][i].getStatus() != 'X' && aBoard[location][i].getStatus() != 'O') {
                    targets++;
                }
            }
        } else {
            for (int i = 0; i < size; i++) {
                if (aBoard[i][location].getStatus() != '-' && aBoard[i][location].getStatus() != 'X' && aBoard[i][location].getStatus() != 'O') {
                    targets++;
                }
            }
        }
        System.out.println("Drone has scanned " + targets + " targets in the specified area.");
        drone--;
        turns++;
    }
    public void missile(int x, int y, int size) {
        int[] xtargs = {x-1,x,x+1};
        int[] ytargs = {y-1,y,y+1};
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (xtargs[i] >= 0 && xtargs[i] < size && ytargs[j] >= 0 && ytargs[j] < size) {
                    fire(xtargs[i],ytargs[j], size);
                }
            }
        }
        missile--;
        turns++;
    }
}

