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
	
}
