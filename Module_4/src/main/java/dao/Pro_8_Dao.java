package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Pro_8_Deleted_Students;
import model.Pro_8_Student;

public class Pro_8_Dao {

	public static void register(Pro_8_Student s) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into pro8_student(fname, lname, email, contact, gender, password) values(?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setLong(4, s.getContact());
			pst.setString(5, s.getGender());
			pst.setString(6, s.getPassword());
			pst.executeUpdate();
			System.out.println("Student Registered !! Dao");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<Pro_8_Student> getAllStudents()
	{
		List<Pro_8_Student> list = new ArrayList<Pro_8_Student>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from pro8_student";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Pro_8_Student s = new Pro_8_Student();
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setContact(rs.getLong("contact"));
				s.setGender(rs.getString("gender"));
				s.setPassword(rs.getString("password"));
				list.add(s);
				System.out.println("List Of MStudent Dao");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static Pro_8_Student getStudentById(int id) {
		Pro_8_Student s = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from pro8_student where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				s = new Pro_8_Student();
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setContact(rs.getLong("contact"));
				s.setGender(rs.getString("gender"));
				s.setPassword(rs.getString("password"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public static void editStudentDetail(Pro_8_Student s) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update pro8_student set fname=?, lname=?, email=?, contact=?, gender=?, password=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setLong(4, s.getContact());
			pst.setString(5, s.getGender());
			pst.setString(6, s.getPassword());
			pst.setInt(7, s.getId());
			pst.executeUpdate();
			System.out.println("Student Updated !! Dao");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void deleteStudentById(int id) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "delete from pro8_student where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			System.out.println("Student Deleted !! Dao");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void addDeletedStudent(Pro_8_Deleted_Students s) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into pro8_deleted_student(id,fname, lname, email, contact, gender, password) values(?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, s.getId());
			pst.setString(2, s.getFname());
			pst.setString(3, s.getLname());
			pst.setString(4, s.getEmail());
			pst.setLong(5, s.getContact());
			pst.setString(6, s.getGender());
			pst.setString(7, s.getPassword());
			pst.executeUpdate();
			System.out.println(s.getFname());
			System.out.println("Deleted Student Added!! Dao");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Pro_8_Deleted_Students> getAllDeletedStudents()
	{
		List<Pro_8_Deleted_Students> list = new ArrayList<Pro_8_Deleted_Students>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from pro8_deleted_student";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Pro_8_Deleted_Students s = new Pro_8_Deleted_Students();
				s.setDid(rs.getInt("did"));
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setContact(rs.getLong("contact"));
				s.setGender(rs.getString("gender"));
				s.setPassword(rs.getString("password"));
				list.add(s);
				System.out.println("List Of Deleted Student Dao");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
