package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.DBConnecation;
import model.SellerModel;

public class SellerDao {

	public static void insertSeller(SellerModel s)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "insert into seller(name,contact,address,email,password) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setLong(2, s.getContact());
			pst.setString(3, s.getAddress());
			pst.setString(4, s.getEmail());
			pst.setString(5, s.getPassword());
			pst.executeUpdate();
			System.out.println("Seller data inserted");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SellerModel loginSeller(SellerModel s)
	{
		SellerModel s1 = null;
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from seller where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				s1 = new SellerModel();
				s1.setId(rs.getInt("id"));
				s1.setName(rs.getString("name"));
				s1.setContact(rs.getLong("contact"));
				s1.setAddress(rs.getString("address"));
				s1.setEmail(rs.getString("email"));
				s1.setPassword(rs.getString("password"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s1;
	}
	
	public static boolean checkEmail(String email)
	{
		boolean flag = false;
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from seller where email=?";
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
	
	public static void updateProfile(SellerModel s)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "update seller set name=?, contact=?, address=?, email=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setLong(2, s.getContact());
			pst.setString(3, s.getAddress());
			pst.setString(4, s.getEmail());
			pst.setInt(5, s.getId());
			pst.executeUpdate();
			System.out.println("Seller profile updated");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static boolean checkOldPassword(String op,int id)
	{
		boolean flag = false;
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from seller where password=? and id=?";
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
	
	public static void updatePassword(String np,int id)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "update seller set password=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setInt(2, id);
			pst.executeUpdate();
			System.out.println("Seller password changed");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void newPassword(String np,String email)
	{
		try {
			Connection conn = DBConnecation.createConnection();
			String sql = "update seller set password=? where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setString(2, email);
			pst.executeUpdate();
			System.out.println("Seller new password updated");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
