package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.DBConnection;
import model.Student;

public class StudentDao {

	public static boolean checkEmail(String email) {
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from student where email=?";
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

	public static void addStudent(Student s) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into student(fname, lname, email, contact, address, gender, password, login_status) values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setLong(4, s.getContact());
			pst.setString(5, s.getAddress());
			pst.setString(6, s.getGender());
			pst.setString(7, s.getPassword());
			pst.setString(8, s.getLogin_status());
			pst.executeUpdate();
			System.out.println("Student Registered! Dao");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static void updateStatus(String email) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update student set login_status=? where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "verified");
			pst.setString(2, email);
			
			pst.executeUpdate();
			System.out.println("Student Status Updated! Dao");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static Student studentSignIn(Student s) {
		Student s1 = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from student where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPassword());
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				s1 = new Student();
				s1.setSid(rs.getInt("sid"));
				s1.setFname(rs.getString("fname"));
				s1.setLname(rs.getString("lname"));
				s1.setEmail(rs.getString("email"));
				s1.setContact(rs.getLong("contact"));
				s1.setAddress(rs.getString("address"));
				s1.setGender(rs.getString("gender"));
				s1.setPassword(rs.getString("password"));
				s1.setLogin_status(rs.getString("login_status"));
				System.out.println("Student Login");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s1;
	}

	public static String checkLoginStatus(String email) {
		String status = "pending";
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select login_status from student where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				status = rs.getString("login_Status");
			}
			System.out.println("Email Is Not Verified! Dao");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static void setPassword(String np, String email) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update student set password=? where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setString(2, email);
			pst.executeUpdate();
			System.out.println("Student Password Set-Forgoted! Dao" );
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public static boolean checkOldPassword(String op, int sid) {
		boolean flag= false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from student where password=? and sid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, op);
			pst.setInt(2, sid);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
				System.out.println("Student Old Password Matched!");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static void updatePassword(String np, int sid) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update student set password=? where sid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setInt(2, sid);
			pst.executeUpdate();
			System.out.println("Student Password Changed!");
		}catch(Exception e) {
			e.printStackTrace();
		}		
	}
	
}
