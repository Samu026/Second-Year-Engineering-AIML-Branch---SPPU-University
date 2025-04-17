import java.util.*;
abstract class shape
{
	double val1,val2;
	void input()
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter first value:");
		val1=sc.nextDouble();
		System.out.println("Enter second value:");
		val2=sc.nextDouble();
	}
	abstract void compute_area();
}
class triangle extends shape
{
	void compute_area()
	{
		double area;
		area=1.5*val1*val2;
		System.out.println("Area of Triangle:"+area);
	}
}
class rectangle extends shape
{
	void compute_area()
	{
		double area;
		area=val1*val2;
		System.out.println("Area of Rectangle:"+area);
	}
}
public class Dyna
{
	public static void main(String args[])
	{
		shape s;
		triangle t=new triangle();
		s=t;
		s.input();
		s.compute_area();
		rectangle r=new rectangle();
		s=r;
		s.input();
		s.compute_area();
	}
}

	

		

		
