//Written by BLAIN075
import java.lang.Math.*;
import java.awt.*;

public class Circle {


	private double xPos;
	private double yPos;
	private double radius;
	private Color cirColor;

	public Circle(double x, double y, double rad) {
		xPos = x;
		yPos = y;
		radius = rad;
		cirColor = new Color(255, 255, 255);
	}

	public Circle() {} //default constructor

	public void setPos(double valueX, double valueY) {
		xPos = valueX;
		yPos = valueY;
	}

	public double getXPos() {
		return xPos;
	}

	public double getYPos() {
		return yPos;
	}
	
	public void setRadius(double value) {
		radius = value;
	}

	public double getRadius() {	
		return radius;
	}

	public void setColor(Color value) {
		cirColor = value;
	}

	public Color getColor() {
		return cirColor;
	}

	public double calculatePerimeter() {
		double perimeter;
		perimeter = 2 * Math.PI * radius;
		return perimeter;
	}

	public double calculateArea() {
		double area;
		area = Math.PI * (Math.pow(radius, 2));
		return area;
	}



}
