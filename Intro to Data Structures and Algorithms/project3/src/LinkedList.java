public class LinkedList<T extends Comparable<T>> implements List<T> {
    Node ls, ptr, trailer, tail, holder;
    boolean isSorted = true;
    public LinkedList() {
        ls = new Node(-1);
        tail = ls;
    }

    public boolean add(T element) {
        if (element == null) {
            return false;
        } else {
            ptr = new Node(element);
            tail.setNext(ptr);
            tail = tail.getNext();
            isSorted = false;
            return true;
        }

    }

    public boolean add(int index, T element) {
        int ind = 0;
        if (element != null && index >= 0 && index < size()) {
            ptr = ls.getNext();
            trailer = ls;
            while (ind != index) {
                trailer = ptr;
                ptr = ptr.getNext();
                ind++;
            }
            trailer.setNext(new Node(element, ptr));
            if (index == size()-1)
                tail = trailer.getNext();
            isSorted = false;
            return true;
        } else
            return false;
    }

    @Override
    public void clear() {
        ls.setNext(null);
    }
    @Override
    public T get(int index) {
        if (index >= 0 && index < size()) {
            ptr = ls.getNext();
            for (int i = 0; i < index; i++) {
                ptr = ptr.getNext();
            }
                return (T) ptr.getData();

            } else
                return null;
        }

    public int indexOf(T element) {
        int size = size();
        if (element == null)
            return -1;
        int ind = 0;
        ptr = ls.getNext();
            while (ind < size) {
                if (element.compareTo((T)ptr.getData()) == 0) {
                    return ind;
                }
                ind++;
                ptr = ptr.getNext();
            }
            return -1;
        }

    public boolean isEmpty() {
        if (ls.getNext() == null)
            return true;
        else
            return false;
    }

    @Override
    public int size() {
        int size = 0;
        ptr = ls.getNext();
        while (ptr != null) {
            size++;
            ptr = ptr.getNext();
        }
        return size;
    }

    @Override
    public void sort() {
        if (!isSorted) {
            Node tPtr, tTrail, temp;
            temp = new Node(-1, null);
            ptr = ls.getNext();
            while (ptr != null) {
                if (temp.getNext() == null) {
                    temp.setNext(new Node(ptr.getData(), null));
                } else if (ptr.getData().compareTo(temp.getData()) < 1) {
                    tPtr = temp.getNext();
                    temp.setNext(new Node(ptr.getData(), tPtr));
                } else {
                    tPtr = temp.getNext();
                    tTrail = temp;
                    while (tPtr != null && (ptr.getData().compareTo(tPtr.getData()) >= 0)) {
                        tTrail = tPtr;
                        tPtr = tPtr.getNext();
                    }
                    tTrail.setNext(new Node (ptr.getData(), tPtr));
                }
                ptr = ptr.getNext();
            }
            ls.setNext(temp.getNext());
            isSorted = true;
        }
    }
    @Override
    public T remove(int index) {
        ptr = ls.getNext();
        trailer = ls;
        int ind = 0;
        while (ind != index && ptr != null) {
            trailer = ptr;
            ptr = ptr.getNext();
            ind++;
        }
        if (index < 0 || index > ind) {
            return null;
        } else {
            trailer.setNext(ptr.getNext());
            return (T) ptr.getData();
        }
    }

    @Override
    public void greaterThan(T element) {
        if (isSorted) {
            ptr = ls.getNext();
            while (ptr != null && ptr.getData().compareTo(element) <= 0) {
                ptr = ptr.getNext();
            }
            ls.setNext(ptr);
        } else {
            ptr = ls.getNext();
            trailer = ls;
            while (ptr != null) {
                if (ptr.getData().compareTo(element) <= 0) {
                        trailer.setNext(ptr.getNext());
                } else {
                    trailer = ptr;
                }
                ptr = ptr.getNext();
            }
        }
    }

    @Override
    public void lessThan(T element) {
        if (isSorted) {
            ptr = ls.getNext();
            trailer = ls;
            while (ptr != null) {
                if  (ptr.getData().compareTo(element) >= 0) {
                    trailer.setNext(null);
                    ptr = null;
                } else {
                    trailer = ptr;
                    ptr = ptr.getNext();
                }
            }
            trailer.setNext(null);
        } else {
            ptr = ls.getNext();
            trailer = ls;
            while (ptr != null) {
                if (ptr.getData().compareTo(element) >= 0) {
                    trailer.setNext(ptr.getNext());
                } else {
                    trailer = ptr;
                }
                ptr = ptr.getNext();
            }
        }
    }

    @Override
    public void equalTo(T element) {
        ptr = ls.getNext();
        trailer = ls;
        while (ptr != null) {
            if (ptr.getData() != element) {
                trailer.setNext(ptr.getNext());
            } else {
                trailer = ptr;
            }
            ptr = ptr.getNext();
        }
    }

    public String toString() {
        String printList = "";
        ptr = ls.getNext();
        while (ptr != null) {
            printList += (ptr.getData().toString() + "\n");
            ptr = ptr.getNext();
        }
        return printList;
    }
    public static void main(String[] args) {
        LinkedList A = new LinkedList<>();
        A.add(3);
        A.add(2);
        A.add(1);
        A.add(2);
        System.out.println(A.toString());
        A.sort();
        A.lessThan(1);
        System.out.println(A.toString());
    }
}
