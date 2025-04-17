/*Question 5:
Design a base class shape with two double type values and member functions to input the data 
and compute_area() for calculating area of shape. Derive two classes: triangle and rectangle. Make 
compute_area() as abstract function and redefine this function in the derived class to suit their 
requirements. Write a program that accepts dimensions of triangle/rectangle and display 
calculated area. Implement dynamic binding for given case study.*/

import java.util.*;
abstract class Shape 
{
	double val1,val2;
	void input()
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter The First Value: ");
		val1 = sc.nextDouble();
		System.out.print("Enter The Scound Value: ");
		val2 = sc.nextDouble();
	}
	abstract void compute_area();
}
class Tringle extends Shape 
{
	void compute_area() 
	{
		double area;
		area = 0.5 * val1 * val2;
		System.out.println("Tringle Area: "+area);
	}
}
class Rectangle extends Shape 
{
	void compute_area() 
	{
		double area;
		area = val1 * val2;
		System.out.println("Rectangle Area: "+area);
	}
}
public class Dynamic 
{
	public static void main(String args[])
	{
		Shape s;
		Tringle t = new Tringle();
		Rectangle r = new Rectangle();
		s=t;
		s.input();
		s.compute_area();
		s=r;
		s.input();
		s.compute_area();
	}
}
