package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

import Model.Customer;
import connection.DBConnection;

public class CustomerDao {

	public static void insertCustomer(Customer c) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into customer(name,contact,address,email,password) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getName());
			pst.setLong(2, c.getContact());
			pst.setString(3, c.getAddress());
			pst.setString(4, c.getEmail());
			pst.setString(5, c.getPassword());
			pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from customer where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag=true;
			}
			System.out.println("Email Already Exists");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static Customer cutomerLogin(Customer c) {
		// TODO Auto-generated method stub
		Customer c1 = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from customer where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getEmail());
			pst.setString(2, c.getPassword());
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				c1 = new Customer();
				c1.setCid(rs.getInt("cid"));
				c1.setName(rs.getString("name"));
				c1.setContact(rs.getLong("contact"));
				c1.setAddress(rs.getString("address"));
				c1.setEmail(rs.getString("email"));
				c1.setPassword(rs.getString("password"));
				System.out.println("Customer Login");
			}
		}catch(Exception e) {
			System.out.println("Customer Login Exception");
			e.printStackTrace();
		}
		return c1;
	}

	public static void updateProfile(Customer c) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update customer set name=?, contact=?, address=?, email=? where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getName());
			pst.setLong(2, c.getContact());
			pst.setString(3, c.getAddress());
			pst.setString(4, c.getEmail());
			pst.setInt(5, c.getCid());
			pst.executeUpdate();
			System.out.println("Customer Profile Updated!");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static boolean checkOldPassword(String op, int cid) {
		// TODO Auto-generated method stub
		boolean flag= false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from customer where password=? and cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, op);
			pst.setInt(2, cid);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
				System.out.println("Customer Old Password Matched!");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static void updatePassword(String np, int cid) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update customer set password=? where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setInt(2, cid);
			pst.executeUpdate();
			System.out.println("Cutomer Password Changed!");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static void setPassword(String np, String email) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update customer set password=? where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setString(2, email);
			pst.executeUpdate();
			System.out.println("Customer Password Set-Forgoted!");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
}
