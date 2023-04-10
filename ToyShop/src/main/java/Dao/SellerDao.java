package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.Seller;
import connection.DBConnection;

public class SellerDao {

	public static void insertSeller(Seller s) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into seller(name,contact,address,email,password) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setLong(2, s.getContact());
			pst.setString(3, s.getAddress());
			pst.setString(4, s.getEmail());
			pst.setString(5, s.getPassword());
			pst.executeUpdate();
			System.out.println("Seller Data Inserted");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static Seller sellerLogin(Seller s) {
		Seller s1 = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from seller where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPassword());
			ResultSet rs = pst.executeQuery();
			System.out.println("Seller Login");
			if(rs.next()) {
				s1 = new Seller();
				s1.setId(rs.getInt("id"));
				s1.setName(rs.getString("name"));
				s1.setContact(rs.getLong("contact"));
				s1.setAddress(rs.getString("address"));
				s1.setEmail(rs.getString("email"));
				s1.setPassword(rs.getString("password"));
				System.out.println("Seller Login");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s1;
	}

	public static void updateProfile(Seller s) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update seller set name=?, contact=?, address=?, email=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setLong(2, s.getContact());
			pst.setString(3, s.getAddress());
			pst.setString(4, s.getEmail());
			pst.setInt(5, s.getId());
			pst.executeUpdate();
			System.out.println("Seller Profile Updated");
		}catch(Exception e) {
			e.printStackTrace();
		}		
	}

	public static boolean checkOldPassword(String op, int id) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "Select * from Seller where password=? and id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, op);
			pst.setInt(2, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
				System.out.println("Seller Old Password Matched");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return flag;
	}

	public static void updatePassword(String np, int id) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "Update Seller set password=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setInt(2, id);
			pst.executeUpdate();
			System.out.println("Password Changed");			
		}catch(Exception e) {
			e.printStackTrace();
		}	
	}

	public static boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from seller where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static void setPassword(String np, String email) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "Update Seller set password=? where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setString(2, email);
			pst.executeUpdate();
			System.out.println("Password Set");			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
