package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Notice;

public class NoticeDao {

	public static void addNotice(Notice n) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into notice(n_date,n_subject,n_message) values(?,?,?)";
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setString(1, n.getN_date());
			pst.setString(2, n.getN_subject());
			pst.setString(3, n.getN_message());
			pst.executeUpdate();
			System.out.println("Notice Added!");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<Notice> getAllNotices(){
		List<Notice> list = new ArrayList<Notice>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select* from notice";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Notice n = new Notice();
				n.setNid(rs.getInt("nid"));
				n.setN_date(rs.getString("n_date"));
				n.setN_subject(rs.getString("n_subject"));
				n.setN_message(rs.getString("n_message"));
				list.add(n);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
