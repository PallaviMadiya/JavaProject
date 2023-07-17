package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Employee;

public class EmployeeDao {

	public static void register(Employee e) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into employee(name, contact, gender, dob, address, email, password) values(?,?,?,?,?,?,?)";
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getName());
			pst.setLong(2, e.getContact());
			pst.setString(3, e.getGender());
			pst.setString(4, e.getDob());
			pst.setString(5, e.getAddress());
			pst.setString(6, e.getEmail());
			pst.setString(7, e.getPassword());
			pst.executeUpdate();
			System.out.println("Employee Registered");
		}
		catch(Exception e1) {
			e1.printStackTrace();
		}
		
	}
	public static List<Employee> getAllEmployee(){
		List<Employee> list = new ArrayList<Employee>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from employee";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Employee e = new Employee();
				e.setEid(rs.getInt("eid"));
				e.setName(rs.getString("name"));
				e.setContact(rs.getLong("contact"));
				e.setGender(rs.getString("gender"));
				e.setDob(rs.getString("dob"));
				e.setAddress(rs.getString("address"));
				e.setEmail(rs.getString("email"));
				e.setPassword(rs.getString("password"));
				list.add(e);
				System.out.println("Employee List Fetched");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static Employee getEmployeByEid(int id) {
		Employee e = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from employee where eid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				e = new Employee();
				e.setEid(rs.getInt("eid"));
				e.setName(rs.getString("name"));
				e.setContact(rs.getLong("contact"));
				e.setGender(rs.getString("gender"));
				e.setDob(rs.getString("dob"));
				e.setAddress(rs.getString("address"));
				e.setEmail(rs.getString("email"));
				e.setPassword(rs.getString("password"));
				System.out.println("Employee Detail Fetched  by id");
			}
		}catch(Exception e1) {
			e1.printStackTrace();
		}
		return e;
	}
	public static void updateEmployee(Employee e) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update employee set name=?, contact=?, gender=?, dob=?, address=?, email=?, password=? where eid=?";
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getName());
			pst.setLong(2, e.getContact());
			pst.setString(3, e.getGender());
			pst.setString(4, e.getDob());
			pst.setString(5, e.getAddress());
			pst.setString(6, e.getEmail());
			pst.setString(7, e.getPassword());
			pst.setInt(8, e.getEid());
			pst.executeUpdate();
			System.out.println("Employee Updated");
		}
		catch(Exception e1) {
			e1.printStackTrace();
		}
	}
	
	public static void deleteEmployee(int id) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "delete from employee where eid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			System.out.println("Employee Deleted");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Employee login(Employee e) {
		Employee e1 = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from employee where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getEmail());
			pst.setString(2, e.getPassword());
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				e1 = new Employee();
				e1.setEid(rs.getInt("eid"));
				e1.setName(rs.getString("name"));
				e1.setContact(rs.getLong("contact"));
				e1.setGender(rs.getString("gender"));
				e1.setDob(rs.getString("dob"));
				e1.setAddress(rs.getString("address"));
				e1.setEmail(rs.getString("email"));
				e1.setPassword(rs.getString("password"));
				System.out.println("Employee login");
			}
		}catch(Exception e2) {
			e2.printStackTrace();
		}
		return e1;
	}
}
