/*Question 11
Implement a program to handle arithmetic exception array under out of bound*/

import java.util.*;
class Exception
{
	public static void main(String args[])
	{
		try
		{
			int num1,num2,result;
			Scanner sc= new Scanner(System.in);
			
			System.out.print("Enter First number :");
			num1=Integer.parseInt(sc.next());
			
			System.out.print("Enter second number:");
			num2=Integer.parseInt(sc.next());
			
			result=num1/num2;
			System.out.println("Division :"+result);
				
			int array[]={1,2,3,4,5};
			for(int i=0;i<=array.length;i++)
			System.out.println(array[i]);
			
		}
		catch(ArithmeticException e)
		{
			System.out.println("Denominetor is Zero"+e);
		}
		catch(NumberFormatException e)
		{
			System.out.println("input is Wrong"+e);
		}
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("Array is out of bound"+e);
		}
	}
}