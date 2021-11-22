// FractalDrawer class draws a fractal of a shape indicated by user input
//Written by BLAIN075
import java.awt.Color;
import java.util.Scanner;

public class FractalDrawer {
    private double totalArea=0;  // member variable for tracking the total area

    public FractalDrawer() {}  // contructor


    //TODO:
    // drawFractal creates a new Canvas object
    // and determines which shapes to draw a fractal by calling appropriate helper function
    // drawFractal returns the area of the fractal
    public double drawFractal(String type) {
        Canvas drawing = new Canvas(1000, 1000);
        Color color = new Color(255, 0, 0);
        if (type.equals("Triangle")) {
            drawTriangleFractal(800, 500, 200, 600, color, drawing, 7);
        } else if (type.equals("Circle")) {
            drawCircleFractal(500, 500, 500, color, drawing, 7);
        } else if (type.equals("Rectangle")) {
            drawRectangleFractal(500, 500, 500, 500, color, drawing, 7);
        } else {
            System.out.println("You did not enter a proper type of fractal.");
        }
        
        return(totalArea);
    }


    //TODO:
    // drawTriangleFractal draws a triangle fractal using recursive techniques
    public void drawTriangleFractal(double width, double height, double x, double y, Color c, Canvas can, int level){
        Color inColor = new Color(255, 255, 255);
        Triangle myTriangle = new Triangle(x,y, width, height);
        Triangle inTriangle = new Triangle(x+2, y-2, width-4, height - 4);
        myTriangle.setColor(c);
        inTriangle.setColor(inColor);

        if (level == 0) {
            System.out.print("");
        } else {
            can.drawShape(myTriangle);
            can.drawShape(inTriangle);
            totalArea += myTriangle.calculateArea();
            level = level-1;
            drawTriangleFractal(width/2, height/2, x, y, c, can, level);
            drawTriangleFractal(width/2, height/2, x+width/2, y, c, can, level);
            drawTriangleFractal(width/2, height/2, x+width/4, y-height/2, c, can, level);

        }
    }


    // TODO:
    // drawCircleFractal draws a circle fractal using recursive techniques
    public void drawCircleFractal(double radius, double x, double y, Color c, Canvas can, int level) {
        Color inColor = new Color(255, 255, 255);
        Circle myCircle = new Circle(x,y,radius);
        Circle inCirc = new Circle(x,y,radius-1);
        inCirc.setColor(inColor);
        myCircle.setColor(c);

        if (level == 0) {
            System.out.print("");
        } else {
            can.drawShape(myCircle);
            can.drawShape(inCirc);
            totalArea += myCircle.calculateArea();
            level = level-1;
            drawCircleFractal(radius/2, x+radius/2, y, c, can, level);
            drawCircleFractal(radius/2, x-radius/2, y, c, can, level);
            drawCircleFractal(radius/2, x, y+radius/2, c, can, level);
            drawCircleFractal(radius/2, x, y-radius/2, c, can, level);

        }
    }


    //TODO:
    // drawRectangleFractal draws a rectangle fractal using recursive techniques
    public void drawRectangleFractal(double width, double height, double x, double y, Color c, Canvas can, int level) {
        Color inColor = new Color(255, 255, 255);
        Rectangle myRectangle = new Rectangle(x,y, width, height);
        Rectangle inRectangle = new Rectangle(x+width/3, y+height/3, width/3, height/3);
        myRectangle.setColor(c);
        inRectangle.setColor(inColor);

        if (level == 0) {
            System.out.print("");
        } else {
            can.drawShape(myRectangle);
            can.drawShape(inRectangle);
            totalArea += myRectangle.calculateArea();
            level = level-1;
            drawRectangleFractal(width/3, height/3, x, y, c, can, level);
            drawRectangleFractal(width/3, height/3, x, y+height/3, c, can, level);
            drawRectangleFractal(width/3, height/3, x, y+2*(height/3), c, can, level);
            drawRectangleFractal(width/3, height/3, x+width/3, y, c, can, level);
            drawRectangleFractal(width/3, height/3, x+width/3, y+2*(height/3), c, can, level);
            drawRectangleFractal(width/3, height/3, x+2*(width/3), y, c, can, level);
            drawRectangleFractal(width/3, height/3, x+2*(width/3), y+height/3, c, can, level);
            drawRectangleFractal(width/3, height/3, x+2*(width/3), y+2*(height/3), c, can, level);
            

        }
    }

    //TODO:
    // main should ask user for shape input, and then draw the corresponding fractal.
    // should print area of fractal
    public static void main(String[] args){
        FractalDrawer fractal = new FractalDrawer(); 
        Scanner scan = new Scanner(System.in);
        String type;
        System.out.println("Enter type of fractal: ");
        type = scan.nextLine();
        System.out.print("Total Area: " + fractal.drawFractal(type));
       
    }
}
