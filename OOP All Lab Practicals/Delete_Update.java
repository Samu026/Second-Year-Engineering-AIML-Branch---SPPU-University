/*Question 10
Implement a program for maintaining a database of student records using Files.
Student has Student_id,name, Roll_no, Class, marks and address. Display the data for few 
students.
1. Delete Records
2. Update Records */


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
	public void deleteRecords() throws IOException 
	{
		try 
		{ 
			BufferedReader file1 = new BufferedReader(new FileReader("sample.txt")); 
			PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter("new.txt",true)));
			String name;
			int flag=0; 
			Scanner sc=new Scanner(System.in); 
			System.out.print("Enter the name of the student you want to delete: "); 
			String searchname=sc.next(); 
			while((name = file1.readLine()) != null) 
			{ 
				String[] line = name.split(" "); 
				if(!searchname.equalsIgnoreCase(line[0]))
				{
					pw.println(name); 
					flag=0; 
				} 
				else
				{ 
					System.out.println("Record found"); 
					flag=1;
				} 
			} 
			file1.close();
			pw.close(); 
			File delName = new File("sample.txt");
			File oldName = new File("new.txt"); 
			File newName = new File("sample.txt"); 
			if(delName.delete()) 
			System.out.println("deleted successfully"); 
			else 
			System.out.println("Error");
			if (oldName.renameTo(newName)) 
			System.out.println("Renamed successfully"); 
			else 
			System.out.println("Error"); 
		} 
		catch(FileNotFoundException e) 
		{
			System.out.println("\nERROR : File not Found !!!"); 
		} 
	} 
	public void updateRecords() throws IOException
	{
		try 
		{ 
			BufferedReader file1 = new BufferedReader(new FileReader("sample.txt")); 
			PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter("new.txt",true))); 
			String name;
			int flag=0; 
			Scanner sc=new Scanner(System.in); 
			System.out.print("Enter the name of the student you want to update: "); 
			String searchname=sc.next(); 
			while((name = file1.readLine()) != null) 
			{ 
				String[] line = name.split(" "); 
				if(!searchname.equalsIgnoreCase(line[0]))
				{ 
					pw.println(name); 
					flag=0; 
				} 
				else 
				{ 
					System.out.println("Record found"); 
					System.out.print("Enter updated marks: "); 
					String up_mark=sc.next(); 
					pw.println(line[0]+" "+line[1]+" "+line[2]+" "+line[3]+" "+line[4]+" "+up_mark); 
					flag=1; 
				} 
			} 
			file1.close(); 
			pw.close(); 
			File delName = new File("sample.txt");
			File oldName = new File("new.txt"); 
			File newName = new File("sample.txt"); 
			if(delName.delete()) 
			System.out.println("record updated successfully"); 
			else 
			System.out.println("Error"); 
			if (oldName.renameTo(newName)) 
			System.out.println("Renamed successfully"); 
			else 
				System.out.println("Error"); 
		} 
		catch(FileNotFoundException e) 
		{ 
			System.out.println("\nERROR : File not Found !!!"); 
		}
	} 
}
public class Delete_Update
{
	public static void main(String args[]) throws IOException 
	{ 
		Database f = new Database(); 
		Scanner sc =new Scanner(System.in);
		System.out.println("");
		while(true) 
		{
			System.out.print("1. Add Records\n2. Delete Records\n3. Update Records \n4. Exit\n\nEnter your choice : ");
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
				f.deleteRecords();
				System.out.println("\n====================================================\n");
				break; 
			
				case 4: 
				f.updateRecords(); 
				System.out.println("\n====================================================\n");
				break; 
			
				case 5: 
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