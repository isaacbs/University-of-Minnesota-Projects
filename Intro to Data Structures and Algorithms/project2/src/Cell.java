//Written by blain075

public class Cell {
    public int row;
    public int col;
    public char status;
    public Cell(int r, int c) {
        row = r;
        col = c;
        status = '-';
    }
    public Cell(int r, int c, char s){
        row = r;
        col = c;
        status = s;
    }
    public char getStatus() {
        return status;
    }
    public void setStatus(char c) {
        status = c;
    }
    public int getRow(){
        return row;
    }
    public int getCol(){
        return col;
    }
}
