/*Question 8:
Implement a generic program using any collection class to count the number of elements in a 
collection that have a specific property such as even numbers, odd number, prime number and 
palindromes.*/

import java.util.Objects;
import java.util.Scanner;
class Number{
public static < E > void arr( ) {
Scanner sc =new Scanner(System.in);
System.out.print("Enter size of array:: ");
int n=sc.nextInt();
Object[] arr=new Object[n];
System.out.print("Enter Array Elements :: ");
for(int i =0; i<n ;i++) {
arr[i]=sc.next();
}
System.out.print("Entered Array is :: ");
 for(Object element : arr) {
 System.out.printf("'%s' ", element); 
 }
 System.out.println();
}
public static < T > void Pallindrome(T s){
String s1=(String)s;
s1=s1.toLowerCase();
StringBuffer sb = new StringBuffer(s1);
String ss= new String(sb.reverse());
if(Objects.equals(s1, ss))
System.out.println(s+" is Pallindrome");
else
System.out.println(s+" is not Pallindrome");
}
public static <T>void evenodd(T a){
if((int)a%2==0)
System.out.println(a+" is Even Number."); 
else
System.out.println(a+" is Odd Number.");
}
public static <T>void prime(T a) {
if((int)a==1)
System.out.println(a+" is Not Prime NNumber");
else if ((int)a==2) 
System.out.println(a+" is Prime Number");
else if((int)a%2==0 && (int)a>2) 
System.out.println(a+" is Not Prime Number");
else {
double b=Math.sqrt((int)a)+1; 
int temp=0; 
for(int i=3;i<b;i=i+2) {
if((int)a%i==0) 
temp=1; 
}
if(temp==1) 
System.out.println(a+" is Not Prime Number");
else
System.out.println(a+" is Prime NNumber");
}
}
public static <T>void checkfun(T s) {
try {
int b = Integer.parseInt((String) s);
System.out.println("We can perform Pallindrome , int Array , check Prime , EvenOdd Function."); 
}
catch (NumberFormatException e) {
System.out.println("We can perform Pallindrome , String Array.");
}
}
}
class Gentest {
public static void main(String[] args) {
String s;
Scanner sc =new Scanner(System.in); 
aa: 
while(true) {
System.out.println("\n\t==== MENU BAR ====\n\n\t1.String \n\t2.Integer"
+ "\n\t3.integer array \n\t4.String Array"
+ "\n\t5.Check Function\n\t6.Exit");
int c =sc.nextInt();
switch(c) {
case 1:
System.out.print("Enter the String :: ");
s =sc.next();
Number.Pallindrome(s); 
break;
case 2: 
System.out.print("Enter the Integer :: ");
s =sc.next();
Number.Pallindrome(s); 
Number.evenodd(Integer.parseInt(s)); 
Number.prime(Integer.parseInt(s)); 
break;
case 4: 
Number.arr();
break;
case 5: 
System.out.print("Enter the String :: ");
String ss =sc.next();
Number.checkfun(ss); 
break;
case 6: 
break aa; 
default: 
System.out.println("Invalid Input !!!"); 
}
}
}
}
