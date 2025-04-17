/*Question 8:
Implement a generic program using any collection class to count the number of 
elements in a collection that have a specific property such as even numbers, odd 
number, prime number and palindromes.*/

import java.util.*;
class Generics
{ 
	static boolean isPrime(int num) 
	{ 
		int flag=0; 
		for(int i=2;i<num;i++) 
		if(num%i==0) 
		{ 
			flag=1; 
			break; 
		} 
		if(flag==0) 
		return true; 
		return false; 
	} 
	static <T> void count(String type,T[] element) 
	{ 
		int even=0,odd=0,prime=0,palin=0; 
		if(type.equals("even"))
		{ 
			for(T value : element) 
			if(Integer.parseInt(value.toString())%2==0) 
			even++; 
			System.out.println("Total Even:"+even); 
		}
		if(type.equals("odd")) 
		{ 
			for(T value : element) 
			if(Integer.parseInt(value.toString())%2!=0) 
			odd++; 
			System.out.println("Total Odd:"+odd); 
		}
		if(type.equals("prime")) 
		{ 
			for(T value : element) 
			if(isPrime(Integer.parseInt(value.toString()))) 
			prime++; 
			System.out.println("Total Prime:"+prime); 
		} 
		if(type.equals("palindrome")) 
		{ 
			for(T value : element) 
			{ 
				StringBuffer rev=new StringBuffer(value.toString()); 
				if(value.toString().equals(new String(rev.reverse())))
				palin++;
			} 
			System.out.println("Total Palindrome:" + palin);
		} 
	}
	public static void main(String args[]) 
	{ 
		Integer iarray[]={45,7,12,84,38,115,29,30,19}; 
		count("even",iarray);
 
		Byte barray[]={45,7,12,84,38,115,29,30,19}; 
		count("odd",barray);
 
		Short sarray[]={45,73,12,84,38,151,29,30,19}; 
		count("prime",sarray); 
		Long larray[]={45L,73L,12L,84L,38L,151L,29L,30L,19L}; 
		count("palindrome",larray);
	}
}
