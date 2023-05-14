package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Event;

public class EventDao {

	public static void insertEvent(Event e) {
		try {

			Connection conn = DBConnection.createConnection();
			String sql = "insert into event(e_name,e_date,e_desc,e_image) values(?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getE_name());
			pst.setString(2, e.getE_date());
			pst.setString(3, e.getE_desc());
			pst.setString(4, e.getE_image());
			pst.executeUpdate();
			System.out.println("Event inserted");

		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}

	public static List<Event> getAllEvents() {
		List<Event> list = new ArrayList<Event>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from event order by e_date desc";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery(sql);
			while (rs.next()) {
				Event e = new Event();
				e.setEid(rs.getInt("eid"));
				e.setE_name(rs.getString("e_name"));
				e.setE_date(rs.getString("e_date"));
				e.setE_desc(rs.getString("e_desc"));
				e.setE_image(rs.getString("e_image"));
				list.add(e);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static Event getEventByEid(int eid) {
		Event e = null;
		try {

			Connection conn = DBConnection.createConnection();
			String sql = "select * from event where eid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, eid);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				e = new Event();
				e.setEid(rs.getInt("eid"));
				e.setE_name(rs.getString("e_name"));
				e.setE_date(rs.getString("e_date"));
				e.setE_desc(rs.getString("e_desc"));
				e.setE_image(rs.getString("e_image"));
			}

		} catch (Exception e1) {
			e1.printStackTrace();
		}
		return e;
	}

	public static void updateEvent(Event e) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update event set e_name=?, e_date=?, e_desc=?, e_image=? where eid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getE_name());
			pst.setString(2, e.getE_date());
			pst.setString(3, e.getE_desc());
			pst.setString(4, e.getE_image());
			pst.setInt(5, e.getEid());
			pst.executeUpdate();
			System.out.println("Event edit");
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public static void deleteEvent(int eid) {
		try {

			Connection conn = DBConnection.createConnection();
			String sql = "delete from event where eid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, eid);
			pst.executeUpdate();
			System.out.println("Event deleted");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
