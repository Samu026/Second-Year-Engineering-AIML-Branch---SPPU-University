import java.util.*;
abstract class shape
{
	double val1,val2;
	void input()
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter First Value");
		val1=sc.nextDouble();
		System.out.println("Enter Second Value");
		val2=sc.nextDouble();
	}
	abstract void compute_area();
}
class Triangle extends shape
{
	void compute_area()
	{
		double area;
		area=0.5*val1*val2;
		System.out.println("Area Of Triangle:"+area);
	}
}
class Reactangle extends shape
{
	void compute_area()
	{
		double area;
		area=val1*val2;
		System.out.println("Area Of Rectangle:"+area);
	}
}
public class Dynami
{
	public static void main(String args[])
	{
		shape s;
		Triangle t =new Triangle();
		Rectangle rr =new Rectangle();
		s=t;
		s.input();
		s.compute_area();
		s=rr;
		s.input();
		s.compute_area();
	}
}
		

		
