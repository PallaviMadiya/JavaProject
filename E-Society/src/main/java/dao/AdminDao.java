package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.DBConnection;
import model.Admin;

public class AdminDao {
	
	public static boolean checkEmail(String email)
	{
		boolean flag = false;
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from admin where email=?";
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
	
	public static Admin adminSignIn(Admin a)
	{
		Admin a1 = null;
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from admin where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, a.getEmail());
			pst.setString(2, a.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				a1 = new Admin();
				a1.setName(rs.getString("name"));
				a1.setEmail(rs.getString("email"));
				a1.setPassword(rs.getString("password"));
				a1.setContact(rs.getLong("contact"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a1;
	}

}
