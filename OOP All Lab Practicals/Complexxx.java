/*Question 3:
Design a class 'complex' with data members for real and imaginary part. 
provide default and parameterized constructors. 
write a program to perform arithmetic operations that is subtraction and division of two complex numbers*/


import java.util.*;
class Complexxx
{
	private double real, img;
	Complexxx()
	{
		
	} //default constructor
	Complexxx(double r, double i) 
	{
		real = r;
		img = i;
	}
	void sub(Complexxx c1, Complexxx c2)
	{
		real = c1.real - c2.real;
		 img=c1.img - c2.img;
	}
	void div(Complexxx c1, Complexxx c2)
	{
		real = (c1.real * c2.real+c1.img*c2.img)/(c2.real*c2.real-c2.img*c2.img);
		img=(c1.img * c2.real-c1.real*c2.img)/(c2.real*c2.real-c2.img*c2.img);
	}
	void disp()
	{
		System.out.println(real+"+i"+img);
	} 
	public static void main(String args[])
	{
		Complexxx c1 = new Complexxx(8, 9);
		Complexxx c2 = new Complexxx(2, 3);
		Complexxx c3 = new Complexxx(0, 0);
		Complexxx c4 = new Complexxx(0, 0);
		
		System.out.println("1st complexxx number is :");
		c1.disp();
		System.out.println("\n");
		
		System.out.println("2nd complexxx number is :");
		c2.disp();
		System.out.println("\n");
		
		System.out.println("Subtraction of Complexxx Number is       :");
		c3.sub(c1,c2);
		c3.disp(); 
		System.out.println("\n");
		
		System.out.println("Division of Complexxx Number is :");
		c4.div(c1,c2);
		c4.disp();
		System.out.println("\n");
	}
}