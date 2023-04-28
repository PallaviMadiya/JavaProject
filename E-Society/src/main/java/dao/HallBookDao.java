package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import connection.DBConnection;
import model.HallBook;

public class HallBookDao {

	public static void bookHall(HallBook b) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into bookhall(mid,b_subject,b_hour,b_date,b_time) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, b.getMid());
			pst.setString(2, b.getB_subject());
			pst.setInt(3, b.getB_hour());
			pst.setString(4, b.getB_date());
			pst.setString(5, b.getB_time());
			pst.executeUpdate();
			System.out.println("Hall Booked!! Dao");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static List<HallBook> getHallBookListByMid(int mid){
		List<HallBook> list = new ArrayList<HallBook>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from bookhall where mid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, mid);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				HallBook b = new HallBook();
				b.setBid(rs.getInt("bid"));
				b.setMid(rs.getInt("mid"));
				b.setB_subject(rs.getString("b_subject"));
				b.setB_hour(rs.getInt("b_hour"));
				b.setB_date(rs.getString("b_date"));
				b.setB_time(rs.getString("b_time"));
				list.add(b);
				System.out.println("Book Hall List Fetched Dao");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static HallBook getHallBookDetailByBid(int bid) {
		HallBook b = new HallBook();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from bookhall where bid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, bid);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				b.setBid(rs.getInt("bid"));
				b.setMid(rs.getInt("mid"));
				b.setB_subject(rs.getString("b_subject"));
				b.setB_hour(rs.getInt("b_hour"));
				b.setB_date(rs.getString("b_date"));
				b.setB_time(rs.getString("b_time"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	public static void updateBookHallDetail(HallBook b) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update bookhall set mid=?,b_subject=?,b_hour=?,b_date=?,b_time=? where bid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, b.getMid());
			pst.setString(2, b.getB_subject());
			pst.setInt(3, b.getB_hour());
			pst.setString(4, b.getB_date());
			pst.setString(5, b.getB_time());
			pst.setInt(6, b.getBid());
			pst.executeUpdate();
			System.out.println("Hall book detail updated!! Dao");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void deleteHallBooking(int bid) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "delete from bookhall where bid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1,bid);
			pst.executeUpdate();
			System.out.println("Hall book detail Deleted!! Dao");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
}
