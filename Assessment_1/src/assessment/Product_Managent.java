package assessment;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Scanner;


class Product {
	private int pid, price, qty;
	private String pname, company;
	Product(int pid, String pname, int price, int qty, String company){
		this.pid = pid;
		this.pname = pname;
		this.price = price;
		this.qty = qty;
		this.company = company;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", price=" + price + ", qty=" + qty + ", pname=" + pname + ", company=" + company
				+ "]";
	}
}

public class Product_Managent {
	public static void main(String args[]) {
		List<Product> productList = new ArrayList<Product>();
		Scanner s = new Scanner(System.in);
		Scanner s1 = new Scanner(System.in);
		int ch;
		do {
			System.out.println("1. Add Stock");
			System.out.println("2. View Stock");
			System.out.println("3. Search Stock");
			System.out.println("4. Edit Stock");
			System.out.println("5. Delete Stock");
			System.out.println("Enter Your Choice: ");
			ch = s.nextInt();
			
			switch(ch) {
			//Add Stock Operation
			case 1:
				System.out.print("Enter Product Id: ");
				int pid = s.nextInt();
				System.out.print("Enter Product Name: ");
				String pname = s1.nextLine();
				System.out.print("Enter Product Price: ");
				int price = s.nextInt();
				System.out.print("Enter Product Quantity: ");
				int qty = s.nextInt();
				System.out.print("Enter Product Company: ");
				String company = s1.nextLine();
				
				productList.add(new Product(pid,pname,price,qty,company));
	            System.out.println("Product Added Successfully!!\n");
	            break;
	        //VIew Stock Operation
			case 2:
				Iterator<Product> i=productList.iterator();
				while(i.hasNext()) {
					Product p = i.next();
					System.out.println("-----Product List-----");
					System.out.println("Product Id: "+p.getPid());
					System.out.println("Product Name: "+p.getPname());
					System.out.println("Product Price: "+p.getPrice());
					System.out.println("Product Quantity: "+p.getQty());
					System.out.println("Product Company: "+p.getCompany());
				}
				System.out.println();
				break;
			//Search Stock Opeartion
			case 3:
				boolean flag = false;
				System.out.print("Enter Product Id To Search: ");
				int id = s.nextInt();
				System.out.println();
	            i = productList.iterator();
	            while (i.hasNext()) {
	                Product p1 = i.next();
	                if (p1.getPid() == id) {
						System.out.println("-----Product List-----");
						System.out.println("Product Id: "+p1.getPid());
						System.out.println("Product Name: "+p1.getPname());
						System.out.println("Product Price: "+p1.getPrice());
						System.out.println("Product Quantity: "+p1.getQty());
						System.out.println("Product Company: "+p1.getCompany());
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
				System.out.println("ENter Product Id To Edit Product: ");
				int Pid = s.nextInt();
				System.out.println();
		       ListIterator<Product> li = productList.listIterator();  
				while(li.hasNext()) {
					Product p = li.next();
					if(p.getPid() == Pid) {
						System.out.print("Enter Product Name: ");
						String Pname = s1.nextLine();
						System.out.print("Enter Product Price: ");
						int Price = s.nextInt();
						System.out.print("Enter Product Quantity: ");
						int Qty = s.nextInt();
						System.out.print("Enter Product Company: ");
						String Company = s1.nextLine();
						li.set(new Product(Pid,Pname,Price,Qty,Company));
						flag1 = true;
					}
				}
				if(!flag1) {
					System.out.println("Product Not Found!!");
				}
				else {
					System.out.println("Product Updated SuccessFully!!\n");
				}
				break;
			//Delete Stock Opeartion
			case 5:
				boolean flag2 = false;
				System.out.println("Enter Product Id To Delete Product: ");
				int P_id = s.nextInt();
				System.out.println();
				i = productList.iterator();
				while(i.hasNext()) {
					Product p = i.next();
					if(p.getPid() == P_id) {
						i.remove();
						flag2 = true;
					}
				}
				if(!flag2) {
					System.out.println("Product Not Found!!");
				}
				else {
					System.out.println("Product Deleted Successfully!!\n");
				}
				break;
			}
		}
	     while (ch!=0);
	}
}
