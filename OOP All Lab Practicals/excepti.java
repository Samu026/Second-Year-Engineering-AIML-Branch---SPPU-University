import java.util.*;
class excepti
{
	public static void main(String args[])
	{
	try
	{
		int num1,num2,result;
		Scanner in=new Scanner (System.in);
		
		System.out.println("Enter First Number");
		num1=Integer.parseInt(in.next());
		
		System.out.println("Enter second Number");
		num2=Integer.parseInt(in.next());
		
		result=num1/num2;
		System.out.println("Result"+result);
	}
	catch(ArithmeticException e)
	{
		System.out.println("Division is Zero"+e);
	}
	catch(NumberFormatException e)
	{
		System.out.println("Input Wrong"+e);
	}
	catch(ArrayIndexOutOfBoundsException e)
	{
		System.out.println("Array out of bounds"+e);
	}
	}
	
}
		