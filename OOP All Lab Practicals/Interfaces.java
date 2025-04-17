/*Question 6: 
Design and develop a context for given case study and implement an interface for Vehicles 
Consider the example of vehicles like bicycle, car and bike. All Vehicles have common 
functionalities such as Gear Change, Speed up and apply breaks. Make an interface and put all 
these common functionalities. Bicycle, Bike, Car classes should be implemented for all these 
functionalities in their own class in their own way.*/

interface vehicles 
{
	public void gearChange();
	public void speedUp();
	public void applyBreaks();
}
class Bicycle implements vehicles 
{
	public void gearChange() 
	{
		System.out.println("Gear Changed for Bicycle");
	}
	public void speedUp() 
	{
		System.out.println("Speed Up of Bicycle");
	}
	public void applyBreaks() 
	{
		System.out.println("Applied Breaks For Bicycle");
		System.out.println("\n");
	}
}
class Bike implements vehicles 
{
	public void gearChange() 
	{
		System.out.println("Gear Changed for Bike");
	}
	public void speedUp() 
	{
		System.out.println("Speed Up of Bike");
	}
	public void applyBreaks()
	{
		System.out.println("Applied Breaks For Bike");
		System.out.println("\n");
	}
}
class Car implements vehicles 
{
	public void gearChange() 
	{
		System.out.println("Gear Changed for Car");
	}
	public void speedUp() 
	{
		System.out.println("Speed Up of Car");
	}
	public void applyBreaks()
	{
		System.out.println("Applied Breaks For Car");
		System.out.println("\n");
	}
}
public class Interfaces 
{
	public static void main(String[] args) 
	{
		vehicles v;
		v=new Bicycle();
		v.gearChange();
		v.speedUp();
		v.applyBreaks();
		v=new Bike();
		v.gearChange();
		v.speedUp();
		v.applyBreaks();
		v=new Car();
		v.gearChange();
		v.speedUp();
		v.applyBreaks();
	}
}
