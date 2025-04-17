/*Question 9
Implement a program for maintaining a database of student records using Files.
Student has Student_id,name, Roll_no, Class, marks and address. Display the data for few 
students.
1. Create Database
2. Display Database */

import java.io.*; 
import java.util.*; 
class Database 
{
	static BufferedReader br = new BufferedReader(new InputStreamReader(System.in)); 
	public void addRecords() throws IOException 
	{
		PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter("sample.txt",true)));
		String studentname, address,s;
		int studentid, rollno, Class;
		float marks;
		boolean addMore = false; 
		do 
		{ 
			System.out.print("\nEnter Student Name: "); 
			studentname = br.readLine(); 
			System.out.print("Student Id: "); 
			studentid = Integer.parseInt(br.readLine()); 
			System.out.print("Roll no: ");
			rollno = Integer.parseInt(br.readLine()); 
			System.out.print("Address: "); 
			address = br.readLine(); 
			System.out.print("Class: ");
			Class = Integer.parseInt(br.readLine()); 
			System.out.print("Marks : "); 
			marks = Float.parseFloat(br.readLine()); 
			pw.println(studentname+" "+studentid+" "+rollno+" "+address+" "+Class+" "+marks);
			System.out.print("\nRecords added successfully !\n\nDo you want to add more records ? (y/n) : "); 
			s = br.readLine();
			if(s.equalsIgnoreCase("y"))
			{ 
				addMore = true;
				System.out.println();
			} 
			else 
			addMore = false; 
		}
		while(addMore); 
		pw.close(); 
	}
	public void readRecords() throws IOException 
	{
		try 
		{ 
			BufferedReader file = new BufferedReader(new FileReader("sample.txt")); 
			String name; 
			int i=1; 
			while((name = file.readLine()) != null) 
			{
				System.out.println(name); 
				System.out.println(""); 
			} 
			file.close(); 
		} 
		catch(FileNotFoundException e)
		{ 
			System.out.println("\nERROR : File not Found !!!"); 
		} 
	}
}
public class Create_Display
{
	public static void main(String args[]) throws IOException 
	{ 
		Database f = new Database(); 
		Scanner sc =new Scanner(System.in);
		System.out.println("");
		while(true) 
		{
			System.out.print("1. Add Records\n2. Display Records\n3. Exit\n\nEnter your choice : ");
			int choice = sc.nextInt();
			System.out.println("");
			switch(choice) 
			{ 
				case 1: 
				f.addRecords(); 
				System.out.println("\n====================================================\n");
				break;
			
				case 2: 
				f.readRecords(); 
				System.out.println("\n====================================================\n");
				break;
			
				case 3: 
				System.out.println("\n====================================================\n");
				System.exit(0);
				break; 
			
				default: System.out.println("\nInvalid Choice !"); 
				System.out.println("\n====================================================\n");
				break; 
            } 
        }
    } 
}