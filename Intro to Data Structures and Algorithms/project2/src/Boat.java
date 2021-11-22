//Written by blain075

public class Boat {
    private int size;
    private boolean horiz;
    private Cell[] segments;
    public Boat(int s, boolean hor, Cell[] segs) {
        size = s;
        horiz = hor;
        segments = segs;
    }
    public int getSize() {

        return size;
    }
    public void setSize(int size) {

        this.size = size;
    }
    public Cell[] getSegments() {

        return segments;
    }
    public void setHoriz(boolean horiz) {

        this.horiz = horiz;
    }
    public boolean getHoriz() {

        return horiz;
    }
}
