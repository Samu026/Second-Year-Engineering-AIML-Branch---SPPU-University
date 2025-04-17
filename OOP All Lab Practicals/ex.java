import java.util.*;
public class ex
{
	public static void main(String[]args)
	{
		try
		{
			int num1,num2,result;
			Scanner in= new Scanner(System.in);
			System.out.print("Enter First number :");
			num1=Integer.parseInt(in.next());
			System.out.print("Enter second number:");
			num2=Integer.parseInt(in.next());
			result=num1/num2;
			System.out.println("Division :"+result);

int array[ ]={1,2,3,4,5};
for(int i=1;i<=array.length;i++)
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