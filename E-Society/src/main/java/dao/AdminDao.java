package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Admin;
import model.Complaint;
import model.HallBook;
import model.Member;

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
	
	public static List<Member> approveListOfMemebers()
	{
		List<Member> list = new ArrayList<Member>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member where register_status='pending'";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Member m = new Member();
				m.setmid(rs.getInt("mid"));
				m.setFname(rs.getString("fname"));
				m.setLname(rs.getString("lname"));
				m.setContact(rs.getLong("contact"));
				m.setH_no(rs.getInt("h_no"));
				m.setAddress(rs.getString("address"));
				m.setJoin_date(rs.getString("join_date"));
				m.setEmail(rs.getString("email"));
				m.setPassword(rs.getString("password"));
				m.setRegister_status(rs.getString("register_status"));
				list.add(m);
				System.out.println("List Of Member To Approve Dao");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Member> adminGetAllMembers()
	{
		List<Member> list = new ArrayList<Member>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Member m = new Member();
				m.setmid(rs.getInt("mid"));
				m.setFname(rs.getString("fname"));
				m.setLname(rs.getString("lname"));
				m.setContact(rs.getLong("contact"));
				m.setH_no(rs.getInt("h_no"));
				m.setAddress(rs.getString("address"));
				m.setJoin_date(rs.getString("join_date"));
				m.setEmail(rs.getString("email"));
				m.setPassword(rs.getString("password"));
				m.setRegister_status(rs.getString("register_status"));
				list.add(m);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static void approvingRequest(String email)
	{
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "update member set register_status='approved' where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.executeUpdate();
			System.out.println("Registration Approved");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Member> approveMemebersList()
	{
		List<Member> list = new ArrayList<Member>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member where register_status='approved'";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Member m = new Member();
				m.setmid(rs.getInt("mid"));
				m.setFname(rs.getString("fname"));
				m.setLname(rs.getString("lname"));
				m.setContact(rs.getLong("contact"));
				m.setH_no(rs.getInt("h_no"));
				m.setAddress(rs.getString("address"));
				m.setJoin_date(rs.getString("join_date"));
				m.setEmail(rs.getString("email"));
				m.setPassword(rs.getString("password"));
				m.setRegister_status(rs.getString("register_status"));
				list.add(m);
				System.out.println("List Of Approved Member Dao");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static List<Complaint> getAllRegisteredComplaints()
	{
		List<Complaint> list = new ArrayList<Complaint>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from complaint";
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
	
	public static void adminSolvedComplaint(int cid)
	{
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "update complaint set complaint_status='solved' where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			pst.executeUpdate();
			System.out.println("Complaint Solved");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static String checkComplaintStatus(int cid)
	{
		String c_status="";
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from complaint where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				c_status = rs.getString("complaint_status");		
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c_status;
	}
	public static boolean checkMemberEmail(String email) {
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
	public static List<HallBook> adminGetAllHallBooking(){
		List<HallBook> list = new ArrayList<HallBook>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from bookhall";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				HallBook b = new HallBook();
				b.setBid(rs.getInt("bid"));
				b.setMid(rs.getInt("mid"));
				b.setB_subject(rs.getString("b_subject"));
				b.setB_date(rs.getString("b_date"));
				b.setBpayment_status(rs.getString("bpayment_status"));
				list.add(b);
				System.out.println("Admin Book Hall List Fetched Dao");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static List<Member> getMemberByMid(int mid)
	{
		List<Member> list = new ArrayList<Member>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member where mid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, mid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Member m = new Member();
				m.setmid(rs.getInt("mid"));
				m.setFname(rs.getString("fname"));
				m.setLname(rs.getString("lname"));
				m.setContact(rs.getLong("contact"));
				m.setH_no(rs.getInt("h_no"));
				m.setAddress(rs.getString("address"));
				m.setJoin_date(rs.getString("join_date"));
				m.setEmail(rs.getString("email"));
				m.setPassword(rs.getString("password"));
				m.setRegister_status(rs.getString("register_status"));
				list.add(m);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static int getMemberId(String email) {
		int mid = 0;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select mid from member where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				mid = rs.getInt("mid");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mid;
	}

	public static void adminBookHall(HallBook b) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into bookhall(mid,b_subject,b_date,bpayment_status) values(?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, b.getMid());
			pst.setString(2, b.getB_subject());
			pst.setString(3, b.getB_date());
			pst.setString(4, b.getBpayment_status());
			pst.executeUpdate();
			System.out.println("Admin Hall Booked!! Dao");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static HallBook adminGetBookHallDetailByBid(int bid) {
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
				b.setB_date(rs.getString("b_date"));
				b.setBpayment_status(rs.getString("bpayment_status"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	public static Member adminGetMemberByMid(int mid) {
		Member m = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from member where mid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, mid);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
			    m = new Member();
				m.setmid(rs.getInt("mid"));
				m.setFname(rs.getString("fname"));
				m.setLname(rs.getString("lname"));
				m.setContact(rs.getLong("contact"));
				m.setH_no(rs.getInt("h_no"));
				m.setAddress(rs.getString("address"));
				m.setJoin_date(rs.getString("join_date"));
				m.setEmail(rs.getString("email"));
				m.setPassword(rs.getString("password"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return m;
	}

}
