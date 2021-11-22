//Written by BLAIN075
import java.lang.Math.*;
import java.awt.*;


public class Triangle {


	private double xPos;
	private double yPos;
	private double width;
	private double height;
	private Color triColor;

	public Triangle(double xPos, double yPos, double width, double height) {
		this.xPos = xPos;
		this.yPos = yPos;
		this.width = width;
		this.height	= height;
		triColor = new Color(255, 255, 255);
	}

	public Triangle() {} //Default Constructor


	public double calculatePerimeter() {
		double perimeter;
		perimeter = width + 2*(Math.sqrt(Math.pow((width/2),2) + Math.pow(height,2)));
		return perimeter;
	}

	public double calculateArea() {
		double area;
		area = (width*height)/2;
		return area;
	}

	public void setColor(Color userColor) {
		triColor = userColor;
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
		return triColor;
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