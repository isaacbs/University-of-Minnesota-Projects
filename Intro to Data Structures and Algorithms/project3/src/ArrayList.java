public class ArrayList<T extends Comparable<T>> implements List<T> {
    T[] array;
    int nextOpen;
    private boolean isSorted;
    public ArrayList() {
        array = (T[]) new Comparable[2];
        isSorted = true;
        nextOpen = 0;
    }
    @Override
    public boolean add(T element) {
        if (element == null) {
            return false;
        } else {
            if (nextOpen >= array.length) {
                T[] temp = (T[]) new Comparable[array.length*2];
                for (int i = 0; i < array.length; i++) {
                    temp[i] = array[i];
                }
                array = temp;
            }
            isSorted = false;
            array[nextOpen++] = element;
            return true;
        }
    }

    @Override
    public boolean add(int index, T element) {
        if (element == null || index < 0 || index >= array.length) {
            return false;
        } else {
            if (index > nextOpen) {
                add(element);
            } else {
                if (nextOpen >= array.length-1) {
                    T[] temp = (T[]) new Comparable[array.length * 2];
                    int ind = 0;
                    while (ind < index) {
                        temp[ind] = array[ind++];
                    }
                    temp[ind] = element;
                    while (ind < array.length-1) {
                        temp[ind + 1] = array[ind++];
                    }
                    array = temp;
                } else {
                    T[] temp = (T[]) new Comparable[array.length];
                    int ind = 0;
                    while (ind < index) {
                        temp[ind] = array[ind++];
                    }
                    temp[ind] = element;
                    while (ind < array.length-1) {
                        temp[ind + 1] = array[ind++];
                    }
                    array = temp;
                }
            }
            isSorted = false;
            return true;
        }
    }

    @Override
    public void clear() {
        array = (T[]) new Comparable[2];
    }

    @Override
    public T get(int index) {
        if (index >= array.length || index < 0) {
            return null;
        } else {
            return array[index];
        }
    }

    @Override
    public int indexOf(T element) {
        if (element == null) {
            return -1;
        } else {
            for (int i = 0; i < array.length; i++) {
                if (element == array[i]) {
                    return i;
                }
            }
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        if (array[0] == null) {
            return true;
        }
        return false;
    }

    @Override
    public int size() {
        int count = 0;
        for (int i = 0; i < array.length; i++) {
            if (array[i] != null) {
                count++;
            }
        }
        return count;
    }

    @Override
    public void sort() {
        if (!isSorted) {
            int i, j;
            T n;
            for (i = 1; i < array.length; i++) {
                n = array[i];
                for (j = i - 1; j >= 0 && (n.compareTo(array[j]) < 0); j--) {
                    array[j + 1] = array[j];
                }
                array[j + 1] = n;
            }
            isSorted = true;
        }
    }

    @Override
    public T remove(int index) {
        T removed;
        T[] temp = (T[]) new Comparable[array.length];
        if (index < 0 || index >= array.length) {
            return null;
        } else {
        int counter = 0;
        removed = array[index];
        array[index] = null;
        for (int i = 0; i < array.length; i++) {
            if (array[i] != null) {
                temp[counter++] = array[i];
            }
        }
        }
        array = temp;
        return removed;
    }

    @Override
    public void greaterThan(T element) {
        int count = 0;
        T[] temp = (T[]) new Comparable[array.length];
        if (isSorted) {
            for (int i = indexOf(element); i < array.length; i++) {
                if (array[i] != element) {
                    temp[count++] = array[i];
                }
            }
            array = temp;
        } else {
            for (int i = 0; i < array.length; i++) {
                if (element.compareTo(array[i]) < 0) {
                    temp[count++] = array[i];
                }
            }
            array = temp;
        }
    }

    @Override
    public void lessThan(T element) {
        int count = 0;
        T[] temp = (T[]) new Comparable[array.length];
        if (isSorted) {
            for (int i = 0; i < indexOf(element); i++) {
                temp[i] = array[i];
            }
            array = temp;
        } else {
            for (int i = 0; i < array.length; i++) {
                if (element.compareTo(array[i]) > 0) {
                    temp[count++] = array[i];
                }
            }
            array = temp;
        }
    }

    @Override
    public void equalTo(T element) {
        T[] temp = (T[]) new Comparable[array.length];
        int count = 0;
        for (int i = 0; i < array.length; i++) {
            if(array[i].compareTo(element) == 0){
                temp[count++] = array[i];
            }
        }
        array = temp;
    }
    public String toString() {
        String printList = "";
        int i = 0;
        while (i < array.length) {
            if (array[i] != null) {
                printList += (array[i] + "\n");
            }
            i++;
        }
        return printList;
    }
    public static void main(String[] args) {
        ArrayList A = new ArrayList();
        A.add(1);
        A.add(2);
        A.add(3);
        A.add(2,5);
        A.add(2,6);
        A.add(2,7);
        A.add(2,7);
        A.add(2,7);
        System.out.println("List: ");
        A.greaterThan(1);
        System.out.println(A.toString());
    }
}
