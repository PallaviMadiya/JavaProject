package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.DBConnection;
import model.Member;

public class MemberDao {

	public static void insertMember(Member m)
	{
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "insert into member(fname,lname,contact,h_no,address,join_date,email,password,register_status) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, m.getFname());
			pst.setString(2, m.getLname());
			pst.setLong(3, m.getContact());
			pst.setInt(4, m.getH_no());
			pst.setString(5, m.getAddress());
			pst.setString(6, m.getJoin_date());
			pst.setString(7, m.getEmail());
			pst.setString(8, m.getPassword());
			pst.setString(9, m.getRegister_status());
			pst.executeUpdate();
			System.out.println("Member data inserted");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static boolean checkEmail(String email) {
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static String checkRegisterStatus(String email)
	{
		String status = "";
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				status = rs.getString("register_status");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static Member memberSignIn(Member m)
	{
		Member m1 = null;
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, m.getEmail());
			pst.setString(2, m.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				m1 = new Member();
				m1.setmid(rs.getInt("mid"));
				m1.setFname(rs.getString("fname"));
				m1.setLname(rs.getString("lname"));
				m1.setContact(rs.getLong("contact"));
				m1.setH_no(rs.getInt("h_no"));
				m1.setAddress(rs.getString("address"));
				m1.setJoin_date(rs.getString("join_date"));
				m1.setEmail(rs.getString("email"));
				m1.setPassword(rs.getString("password"));
				m1.setRegister_status(rs.getString("register_status"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m1;
	}

	public static boolean checkOldPassword(String op, int mid) {
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member where password=? and mid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, op);
			pst.setInt(2, mid);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static void changePassword(String np, int mid) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update member set password=? where mid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setInt(2, mid);
			pst.executeUpdate();
			System.out.println("Member Password Changed! Dao");			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static void setPassword(String np, String email) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update member set password=? where email=?";
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setString(2, email);
			pst.executeUpdate();
			System.out.println("Password Set Dao");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
