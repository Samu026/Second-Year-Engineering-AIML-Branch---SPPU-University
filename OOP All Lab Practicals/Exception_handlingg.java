import java.util.*;
class Exception_handlingg
{
	public static void main(String args[])
	{
		try
		{
			int num1,num2,result;
			Scanner sc=new Scanner(System.in);
			
			System.out.println("Enter First Number  :");
			num1=Integer.parseInt(sc.next());
			
			System.out.println("Enter Second Number :");
			num2=Integer.parseInt(sc.next());
			
			result=num1/num2;
			System.out.println("Result :"+result);
			
			int array[]={1,2,3,4,5};
			for(int i=1;i<=array.length;i++)
			{
				System.out.println(array[i]);
			}
		}
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("Array Index Is Out Of Bounds"+e);
		}
		catch(ArithmeticException e)
		{
			System.out.println("Division is zero"+e);
		}
		catch(NumberFormatException e)
		{
			System.out.println("Input is Wrong not a Integer type"+e);
		}
	}
}
			