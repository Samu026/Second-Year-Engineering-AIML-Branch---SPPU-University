/*Question 2:
Design a class 'complex' with data members for real and imaginary part. 
provide default and parameterized constructors. 
write a program to perform arithmetic operations that is addition and multiplication of two complex numbers*/


import java.util.*;
class Complexx
{
	private double real, img;
	Complexx()
	{
		
	} //default constructor
	Complexx(double r, double i) 
	{
		real = r;
		img = i;
	}
	void add(Complexx c1, Complexx c2)
	{
		real = c1.real + c2.real;
		 img=c1.img + c2.img;
	}
	void mul(Complexx c1, Complexx c2)
	{
		real = (c1.real * c2.real-c1.img*c2.img);
		img=(c1.real * c2.img+c1.img*c2.img);
	}
	void disp()
	{
		System.out.println(real+"+i"+img);
	} 
	public static void main(String args[])
	{
		Complexx c1 = new Complexx(8, 9);
		Complexx c2 = new Complexx(2, 3);
		Complexx c3 = new Complexx(0, 0);
		Complexx c4 = new Complexx(0, 0);
		
		System.out.println("1st complexx number is :");
		c1.disp();
		System.out.println("\n");
		
		System.out.println("2nd complexx number is :");
		c2.disp();
		System.out.println("\n");
		
		System.out.println("Addition of Complexx Number is       :");
		c3.add(c1,c2);
		c3.disp(); 
		System.out.println("\n");
		
		System.out.println("Multiplication of Complexx Number is :");
		c4.mul(c1,c2);
		c4.disp();
		System.out.println("\n");
	}
}