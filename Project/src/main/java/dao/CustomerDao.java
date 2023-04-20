package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.DBConnecation;
import model.CustomerModel;


public class CustomerDao {

	public static void insertCustomer(CustomerModel c)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "insert into customer(name,contact,address,email,password) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getName());
			pst.setLong(2, c.getContact());
			pst.setString(3, c.getAddress());
			pst.setString(4, c.getEmail());
			pst.setString(5, c.getPassowrd());
			pst.executeUpdate();
			System.out.println("Customer data inserted");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static CustomerModel loginCustomer(CustomerModel c)
	{
		CustomerModel c1 = null;
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from customer where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getEmail());
			pst.setString(2, c.getPassowrd());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				c1 = new CustomerModel();
				c1.setId(rs.getInt("id"));
				c1.setName(rs.getString("name"));
				c1.setContact(rs.getLong("contact"));
				c1.setAddress(rs.getString("address"));
				c1.setEmail(rs.getString("email"));
				c1.setPassowrd(rs.getString("passowrd"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c1;
	}
	
	public static boolean checkEmail(String email)
	{
		boolean flag = false;
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from customer where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				flag = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public static void updateCustomer(CustomerModel c)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "update customer set name=?, contact=?, address=?, email=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getName());
			pst.setLong(2, c.getContact());
			pst.setString(3, c.getAddress());
			pst.setString(4, c.getEmail());
			pst.setInt(5, c.getId());
			pst.executeUpdate();
			System.out.println("Customer profile updated");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static boolean checkOldPassword(String op,int id)
	{
		boolean flag=false;
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from customer where password=? and id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, op);
			pst.setInt(2, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				flag=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public static void changePassword(String np,int id)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "update customer set password=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setInt(2, id);
			pst.executeUpdate();
			System.out.println("Customer password changed");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void newPassword(String np,String email)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "update customer set password=? where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setString(2, email);
			pst.executeUpdate();
			System.out.println("Customer new password updated");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}


