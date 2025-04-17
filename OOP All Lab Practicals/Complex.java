/*Question 1:
Design a class 'complex' with data members for real and imaginary part. 
provide default and parameterized constructors. 
write a program to perform arithmetic operations of two complex numbers*/


import java.util.*;
class Complex
{
	private double real, img;
	Complex()
	{
		
	} //default constructor
	Complex(double r, double i) 
	{
		real = r;
		img = i;
	}
	void add(Complex c1, Complex c2)
	{
		real = c1.real + c2.real;
		img=c1.img + c2.img;
	}
	void sub(Complex c1, Complex c2)
	{
		real = c1.real - c2.real;
		img=c1.img - c2.img;
	}
	void mul(Complex c1, Complex c2)
	{
		real = (c1.real * c2.real-c1.img*c2.img);
		img=(c1.real * c2.img+c1.img*c2.img);
	}
	void div(Complex c1, Complex c2)
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
		Complex c1 = new Complex(8, 9);
		Complex c2 = new Complex(2, 3);
		Complex c3 = new Complex(0, 0);
		Complex c4 = new Complex(0, 0);
		Complex c5 = new Complex(0, 0);
		Complex c6 = new Complex(0, 0);
		
		System.out.println("1st complex number is :");
		c1.disp();
		System.out.println("\n");
		
		System.out.println("2nd complex number is :");
		c2.disp();
		System.out.println("\n");
		
		System.out.println("Addition of Complex Number is       :");
		c3.add(c1,c2);
		c3.disp(); 
		System.out.println("\n");
		
		System.out.println("Subtraction of Complex Number is    :");
		c4.sub(c1,c2);
		c4.disp();
		System.out.println("\n");
		
		System.out.println("Multiplication of Complex Number is :");
		c5.mul(c1,c2);
		c5.disp();
		System.out.println("\n");
		
		System.out.println("Division of Complex Number is       :");
		c6.div(c1,c2);
		c6.disp();
	}
}