//written by BLAIN075
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class HashTable <T> {
    NGen[] table = new NGen[149];

    public int hash1(T item) { //I initially wrote one hash function that I found to be working quite well and by modifying it in different ways, I was able to create a hash table for each of the two scenarios using the same hash function.
        //The function also creates a table for each of the scenarios that is the same length of 149. While I originally intended to write multiple hash functions for the two different cases, I found that my hash function worked very well
        //not only the two test cases we are required to include in our writeup, but for all of the additional cases provided.
        //While tinkering with my has function, I found that a prime number for the length of the table is very important and greatly reduces the amount of collisions that are found. I also found that applying a prime number weight to the first character in the string
        //also allowed for a better distribution of values.
        if (item.toString().length() == 1)
            return (item.toString().charAt(0) + item.toString().length()) % table.length; //if the item is only one character long it takes the value of that character and modulos it by the table length.
        else if (item.toString().length() > 1)
            return (item.toString().charAt(0)*17 + item.toString().charAt(1)*2 + item.toString().charAt(item.toString().length()-1)*7 + item.toString().length())*3 % table.length; // if the item is longer than one character, it takes the first character in the string, gives it a weight of *17, then takes the second character of the string and gives it a weight of *2,
            // It then takes the last character in the string and gives it a weight of *7, and takes in the length of the string and gives that a weight of *3 and modulates them all by the length of the table.
        else // I found that applying a different weights to the various characters of the string that I used allowed for a more even distribution of values.
            return -1;
    }
    public void add(T item) {
        int value = hash1(item);
        boolean isIn = false;
        if (value >= 0 ) {
            if (table[value] == null) {
                table[value] = new NGen(item, null);
            } else {
                NGen ptr = table[value];
                while (ptr.getNext() != null) {
                    if (item.equals(ptr.getData())) {
                        isIn = true;
                    }
                    ptr = ptr.getNext();
                }
                if (item.equals(ptr.getData()))
                    isIn = true;
                if (!isIn) {
                    ptr.setNext(new NGen(item, null));

                }
            }
        }
    }
    public void display() {
        NGen ptr;
        int count, longest = 0;
        double nonEmpty = table.length;
        double totalCount = 0.0;
        for (int i = 0; i < table.length; i++) {
            if (table[i] == null) {
                System.out.println(i + ": 0");
                nonEmpty -= 1;
            } else {
                count = 0;
                ptr = table[i];
                if (ptr.getNext() == null) {
                    count++;
                    totalCount++;
                } else {
                    while (ptr.getNext() != null) {
                        count++;
                        totalCount++;
                        ptr = ptr.getNext();
                    }
                    count++;
                    totalCount++;
                }
                if (count > longest)
                    longest = count;
                System.out.println(i + ": " + count);
            }
        }
        System.out.println("Average Collision Length: " + totalCount/nonEmpty);
        System.out.println("Longest Chain: " + longest);

    }
    public String turnToLine(String fileName) throws FileNotFoundException { //helper function that reads in the text from the file and adds it all to one string that can later be turned into an array of words.
        File input = new File(fileName);
        Scanner sc = new Scanner(input);
        String fullLine = "", line = "";
        boolean blank;
        while (sc.hasNextLine()) {
            blank = false;
            while (!blank && sc.hasNextLine()) {
                line = sc.nextLine();
                if (line.isBlank())
                    blank = true;
                else
                    fullLine += " " + line;
            }
        }
        sc.close();
        return fullLine;
    }
    public static void main(String[] args) throws FileNotFoundException {
            HashTable H1 = new HashTable(), H2 = new HashTable();
            String[] data;
            String fullSpecific = H1.turnToLine("keywords.txt");
            data = fullSpecific.split("\\s+");
            System.out.println("Specific Hash Table for 'Keywords.txt':"); //Uses the call to the helper function to run the hash function on the first set of data, then displays it.
            for (int i = 0; i < data.length; i++) {
                H1.add(data[i]);
            }
            H1.display();
            String fullGeneral = H2.turnToLine("gettysburg.txt");
            data = fullGeneral.split("\\s+");
            System.out.println("General Hash Table for 'gettysburg.txt':"); //Uses the call to the helper function to run the hash function on the second set of data, then displays it.
            for (int i = 0; i < data.length; i++) {
                H2.add(data[i]);
        }
            H2.display();
    }
}
