package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Complaint;
import model.ComplaintReply;

public class ComplaintDao {
	public static void registerComplaint(Complaint c)
	{
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "insert into complaint(mid,h_no,subject,cdate,description,complaint_status) values(?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, c.getMid());
			pst.setInt(2, c.getH_no());
			pst.setString(3, c.getSubject());
			pst.setString(4, c.getCdate());
			pst.setString(5, c.getDescription());
			pst.setString(6, c.getComplaint_status());
			pst.executeUpdate();
			System.out.println("Complaint Registered");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<Complaint> getComplaintByMemberId(int mid)
	{
		List<Complaint> list = new ArrayList<Complaint>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from complaint where mid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, mid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Complaint c = new Complaint();
				c.setCid(rs.getInt("cid"));
				c.setMid(rs.getInt("mid"));
				c.setH_no(rs.getInt("h_no"));
				c.setSubject(rs.getString("subject"));
				c.setCdate(rs.getString("cdate"));
				c.setDescription(rs.getString("description"));
				c.setComplaint_status(rs.getString("complaint_status"));
				list.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static void adminReplyComplaint(ComplaintReply cr)
	{
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "insert into complaint_reply(cid,c_reply,reply_date) values(?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cr.getCid());
			pst.setString(2, cr.getC_reply());
			pst.setString(3, cr.getReply_date());
			pst.executeUpdate();
			System.out.println("Replied Complaint");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<ComplaintReply> getAdminReplyByComplaintId(int cid)
	{
		List<ComplaintReply> list = new ArrayList<ComplaintReply>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from complaint_reply where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				ComplaintReply cr = new ComplaintReply();
				cr.setCr_id(rs.getInt("cr_id"));
				cr.setCid(rs.getInt("cid"));
				cr.setC_reply(rs.getString("c_reply"));
				cr.setReply_date(rs.getString("reply_date"));
				list.add(cr);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Complaint> getAllSolvedComplaints()
	{
		List<Complaint> list = new ArrayList<Complaint>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from complaint where complaint_status='solved'";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Complaint c = new Complaint();
				c.setCid(rs.getInt("cid"));
				c.setMid(rs.getInt("mid"));
				c.setH_no(rs.getInt("h_no"));
				c.setSubject(rs.getString("subject"));
				c.setCdate(rs.getString("cdate"));
				c.setDescription(rs.getString("description"));
				c.setComplaint_status(rs.getString("complaint_status"));
				list.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Complaint> getAllPendingComplaints()
	{
		List<Complaint> list = new ArrayList<Complaint>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from complaint where complaint_status='applied'";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Complaint c = new Complaint();
				c.setCid(rs.getInt("cid"));
				c.setMid(rs.getInt("mid"));
				c.setH_no(rs.getInt("h_no"));
				c.setSubject(rs.getString("subject"));
				c.setCdate(rs.getString("cdate"));
				c.setDescription(rs.getString("description"));
				c.setComplaint_status(rs.getString("complaint_status"));
				list.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
}
