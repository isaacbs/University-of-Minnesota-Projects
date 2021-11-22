//Written by blain075

import java.util.InputMismatchException;
import java.util.Scanner;

public class BattleBoatsGame {
    public static void main(String[] args) {
        int gamesize = 0;
        boolean end = true;
        System.out.println("Hello and Welcome to Isaac's Bombastic Boat Battlin' Bonanza of Blustering Bombin' Boats");
        System.out.println("In order to begin, you will need to enter either '1' for standard, or '2' for expert mode");
        Scanner s = new Scanner(System.in);
        while (gamesize == 0) {
            try {
                int gamemode = s.nextInt();
                if (gamemode == 1) {
                    gamesize = 8;
                } else if (gamemode == 2) {
                    gamesize = 12;
                } else {
                    System.out.println("Invalid input. Please enter  either '1' for standard, or '2' for expert mode");
                }
            } catch (InputMismatchException e) {
                System.out.println("Invalid input. Please enter  either '1' for standard, or '2' for expert mode");
                s.nextLine();
            }
        }
        BattleBoatsBoard game;
        game = new BattleBoatsBoard(gamesize);
        game.placeBoats();
        while (end) {
            game.print('p');
            System.out.println("Enter an X-coordinate then a Y-coordinate");
            try {
                int x = s.nextInt();
                int y = s.nextInt();
                game.fire(x,y,gamesize);
            } catch (InputMismatchException e) {
                String word = s.nextLine();
                switch (word) {
                    case "print":
                        game.print('a');
                        System.out.println();
                        break;
                    case "missile":
                        if (game.missile > 0) {
                            int xMis = -1;
                            int yMis = -1;
                            System.out.println("Where would you like to launch your missile?");
                            while (xMis < 0 || xMis >= gamesize || yMis < 0 || yMis >= gamesize) {
                                try {
                                    xMis = s.nextInt();
                                    yMis = s.nextInt();
                                    if (xMis < 0 || xMis >= gamesize || yMis < 0 || yMis >= gamesize) {
                                        System.out.println("Invalid input. Please enter coordinates within the boundaries of the board.");
                                    }
                                } catch (InputMismatchException d) {
                                    System.out.println("Invalid input. Please enter coordinates within the boundaries of the board.");
                                    s.nextLine();
                                }
                            }
                            game.missile(xMis,yMis,gamesize);
                        } else
                            System.out.println("Missile has been used the max amount of times");
                        break;
                    case "drone":
                        if (game.drone > 0) {
                            char dir = 'z';
                            int place = -1;
                            System.out.println("Would you like to scan a row or a column? Type in 1 for row or 2 for column");
                            while (dir == 'z') {
                                try {
                                    int first = s.nextInt();
                                    if (first == 1)
                                        dir = 'r';
                                    else if (first == 2)
                                        dir = 'c';
                                    else
                                        System.out.println("Invalid input. Please type in 1 for row or 2 for column.");
                                } catch (InputMismatchException a) {
                                    System.out.println("Invalid input. Please type in 1 for row or 2 for column.");
                                    s.nextLine();
                                }
                            }
                                System.out.println("Which row or column would you like to scan?");
                                while (place < 0 || place >= gamesize) {
                                    try {
                                        place = s.nextInt();
                                    } catch (InputMismatchException b) {
                                        System.out.println("Invalid input. Please type in a number within the boundaries of the board.");
                                        s.nextLine();
                                    }
                                }
                            game.drone(dir, place, gamesize);
                        } else
                            System.out.println("Drone has been used the max amount of times");
                        break;
                        }
            }
        if (gamesize == 8) {
            if (game.shotsHit == 17)
                end = false;
        } else {
            if (game.shotsHit == 34)
                end = false;
        }
        }
        System.out.println("Thank you for playing");
        System.out.println("Your score was " + game.totalShots);
    }
}

