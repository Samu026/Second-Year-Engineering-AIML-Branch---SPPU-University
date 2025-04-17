import java.util.*;
class Except
{
	public static void main(String args[])
	{
		try
		{
			int num1,num2,result;
			Scanner in=new Scanner(System.in);
			
			System.out.println("Enter First Number:");
			num1=new Integer.parseInt(in.next());
			
			System.out.println("Enter Second Number:");
			num2=new Integer.parseInt(in.next());
			
			result=num1/num2;
			System.out.println("Division "+result);
		}
		catch(ArithmeticException e)
		{
			System.out.println("Denominator is Zero"+e);
		}
		catch(NumberFormatException e)
		{
			System.out.println("Input Wrong"+e);
		}
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("Array Index is Out of Bounds"+e);
		}
	}
}
			
			
			
		