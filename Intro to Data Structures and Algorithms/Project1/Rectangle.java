//Written by BLAIN075
import java.lang.Math.*;
import java.awt.*;


public class Rectangle {


	private double xPos;
	private double yPos;
	private double width;
	private double height;
	private Color rectColor;

	public Rectangle(double xPos, double yPos, double width, double height) {
		this.xPos = xPos;
		this.yPos = yPos;
		this.width = width;
		this.height	= height;
		rectColor = new Color(255, 255, 255);
	}
	public Rectangle() {} //Default Constructor

	public double calculatePerimeter() {
		double perimeter;
		perimeter = (2*width) + (2*height);
		return perimeter;
	}

	public double calculateArea() {
		double area;
		area = width*height;
		return area;
	}

	public void setColor(Color userColor) {
		rectColor = userColor;
	}

	public void setPos(double xPos, double yPos) {
		this.xPos = xPos;
		this.yPos = yPos;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public void setWidth(double width) {
		this.width = width;
	}

	public Color getColor() {
		return rectColor;
	}

	public double getXPos() {
		return xPos;
	}

	public double getYPos() {
		return yPos;
	}

	public double getHeight() {
		return height;
	}

	public double getWidth() {
		return width;
	}

}