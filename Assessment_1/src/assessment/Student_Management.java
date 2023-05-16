package assessment;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Scanner;


class Student {
	private int sid, std;
	private double percentage;
	private String sname, gender, address;
	
	public Student(int sid, int std, double percentage, String sname, String gender, String address) {
		super();
		this.sid = sid;
		this.std = std;
		this.percentage = percentage;
		this.sname = sname;
		this.gender = gender;
		this.address = address;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getStd() {
		return std;
	}
	public void setStd(int std) {
		this.std = std;
	}
	public double getPercentage() {
		return percentage;
	}
	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Student [sid=" + sid + ", std=" + std + ", percentage=" + percentage + ", sname=" + sname + ", gender="
				+ gender + ", address=" + address + "]";
	}
}

public class Student_Management {
	public static void main(String args[]) {
		List<Student> studentList = new ArrayList<Student>();
		Scanner s = new Scanner(System.in);
		Scanner s1 = new Scanner(System.in);
		int ch;
		do {
			System.out.println("1. Add Student");
			System.out.println("2. View Students");
			System.out.println("3. Search Student");
			System.out.println("4. Edit Student Detail");
			System.out.println("5. Delete Student");
			System.out.println("Enter Your Choice: ");
			ch = s.nextInt();
			
			switch(ch) {
			//Add Stock Operation
			case 1:
				System.out.print("Enter Student Id: ");
				int sid = s.nextInt();
				System.out.print("Enter Student Name: ");
				String sname = s1.nextLine();
				System.out.print("Enter Student Standard: ");
				int std = s.nextInt();
				System.out.print("Enter Student Gender: ");
				String gender = s1.nextLine();
				System.out.print("Enter Student Address: ");
				String address = s1.nextLine();
				System.out.print("Enter Student Percentage: ");
				double percentage = s.nextDouble();
				
				studentList.add(new Student(sid,std,percentage,sname,gender,address));
	            System.out.println("Product Added Successfully!!\n");
	            break;
	        //VIew Stock Operation
			case 2:
				Iterator<Student> i=studentList.iterator();
				while(i.hasNext()) {
					Student S = i.next();
					System.out.println("-----Student List-----");
					System.out.println("Student Id: "+S.getSid());
					System.out.println("Student Name: "+S.getSname());
					System.out.println("Student Standard: "+S.getStd());
					System.out.println("Student Gender: "+S.getGender());
					System.out.println("Student Address: "+S.getAddress());
					System.out.println("Student Percentage: "+S.getPercentage());
				}
				System.out.println();
				break;
			//Search Stock Opeartion
			case 3:
				boolean flag = false;
				System.out.print("Enter Student Id To Search Student: ");
				int id = s.nextInt();
				System.out.println();
	            i = studentList.iterator();
	            while (i.hasNext()) {
	                Student S1 = i.next();
	                if (S1.getSid() == id) {
	                	System.out.println("-----Student List-----");
						System.out.println("Student Id: "+S1.getSid());
						System.out.println("Student Name: "+S1.getSname());
						System.out.println("Student Standard: "+S1.getStd());
						System.out.println("Student Gender: "+S1.getGender());
						System.out.println("Student Address: "+S1.getAddress());
						System.out.println("Student Percentage: "+S1.getPercentage());
						System.out.println();
	                    flag = true;
	                }
	            }
	            if(!flag) {
	            	System.out.println("Product Not Found!\n");
	            }
				break;
	
			//Edit Stock Opeartion
			case 4:
				boolean flag1 = false;
				System.out.println("Enter Student Id To Edit Student Detail: ");
				int Sid = s.nextInt();
				System.out.println();
		       ListIterator<Student> li = studentList.listIterator();  
				while(li.hasNext()) {
					Student S = li.next();
					if(S.getSid() == Sid) {
						System.out.print("Enter Student Name: ");
						String Sname = s1.nextLine();
						System.out.print("Enter Student Standard: ");
						int Std = s.nextInt();
						System.out.print("Enter Student Gender: ");
						String Gender = s1.nextLine();
						System.out.print("Enter Student Address: ");
						String Address = s1.nextLine();
						System.out.print("Enter Student Percentage: ");
						double Percentage = s.nextDouble();						
						li.set(new Student(Sid,Std,Percentage,Sname,Gender,Address));
						flag1 = true;
					}
				}
				if(!flag1) {
					System.out.println("Student Not Found!!\n");
				}
				else {
					System.out.println("Student Updated SuccessFully!!\n");
				}
				break;
			//Delete Stock Opeartion
			case 5:
				boolean flag2 = false;
				System.out.println("Enter Student Id To Delete Student: ");
				int S_id = s.nextInt();
				System.out.println();
				i = studentList.iterator();
				while(i.hasNext()) {
					Student S = i.next();
					if(S.getSid() == S_id) {
						i.remove();
						flag2 = true;
					}
				}
				if(!flag2) {
					System.out.println("Student Not Found!!");
				}
				else {
					System.out.println("Student Deleted Successfully!!\n");
				}
				break;
			}
		}
	     while (ch!=0);
	}
}
