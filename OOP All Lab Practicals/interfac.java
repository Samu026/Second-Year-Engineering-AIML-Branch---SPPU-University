interface vehicles
{
	public void gearchange();
	public void speedup();
	public void applychange();
}
class bicycle implements vehicles
{
	public void gearchange()
	{
		System.out.println("Bicycle gear changed");
	}
	public void speedup()
	{
		System.out.println("Bicycle speed up");
	}
	public void applychange()
	{
		System.out.println("Bicycle apply changes");
		System.out.println("\n");
	}
}
class bike implements vehicles
{
	public void gearchange()
	{
		System.out.println("Bike gear changed");
	}
	public void speedup()
	{
		System.out.println("Bike speed up");
	}
	public void applychange()
	{
		System.out.println("Bike apply changes");
		System.out.println("\n");
	}
}
class car implements vehicles
{
	public void gearchange()
	{
		System.out.println("car gear changed");
	}
	public void speedup()
	{
		System.out.println("car speed up");
	}
	public void applychange()
	{
		System.out.println("car apply changes");
		System.out.println("\n");
	}
}
class interfac
{
	public static void main(String args[])
	{
		vehicles v;
		v=new bicycle();
		v.gearchange();
		v.speedup();
		v.applychange();
		v=new bike();
		v.gearchange();
		v.speedup();
		v.applychange();
		v=new car();
		v.gearchange();
		v.speedup();
		v.applychange();
	}
}
	