/*Question 7:
Identify commonalities and differences between Publication, Book and Magazine classes. Title, 
Price, Copies are common instance variables and saleCopy is common method. The differences 
are, Bookclass has author and orderCopies(). Magazine Class has methods orderQty, Current issue, 
receiveissue().Write a program to find how many copies of the given books are ordered and 
display total sale of publication.*/

import java.util.*;
class Publication
{
	String title;
	int copies,price;
	void saleCopy()
	{
	}
}
class Book
{
	String title,author;
	int copies,price;
	void saleCopy()
	{
		price=300;
		System.out.println("Total Sale of Book: "+copies*price);
	}
	void orderCopies()
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Copies of Books:");
		copies=sc.nextInt();
	}
}
class Magazine
{
	String title;
	int copies,price;
	void saleCopy()
	{
		price=150;
		System.out.println("Total Sale of Magazine: "+copies*price);
	}
	void orderQty()
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Copies of Magazine:");
		copies=sc.nextInt();
	}
	void Currentissue()
	{
		System.out.println("Ordered Succesfully!!!"+"You have ordered:"+copies+ "copies");
	}
	void receiveissue()
	{
		System.out.println("Order Will Be Dispatched In TWO Days!!");
	}
}
class PublicationTest
{
	public static void main(String args[])
	{
		Book b=new Book();
		b.orderCopies();
		b.saleCopy();
		Magazine m=new Magazine();
		m.orderQty();
		m.saleCopy();
		m.Currentissue();
		m.receiveissue();
	}
} 
