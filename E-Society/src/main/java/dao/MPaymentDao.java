package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Maintenance;

public class MPaymentDao {

	public static void insertMaintenancePayment(Maintenance m)
	{
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "insert into maintenance_payment(m_id,m_date,m_amount) values(?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, m.getMid());
			pst.setString(2, m.getM_date());
			pst.setLong(3, m.getM_amount());
			pst.executeUpdate();
			System.out.println("Maintenance data inserted");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<Maintenance> getMaintenanceByMid(int mid)
	{
		List<Maintenance> list = new ArrayList<Maintenance>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from maintenance_payment where m_id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, mid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Maintenance m1 = new Maintenance();
				m1.setMp_id(rs.getInt("mp_id"));
				m1.setMid(rs.getInt("m_id"));
				m1.setM_date(rs.getString("m_date"));
				m1.setM_amount(rs.getLong("m_amount"));
				list.add(m1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Maintenance> getAllMaintenance()
	{
		List<Maintenance> list = new ArrayList<Maintenance>();
		try {
			
			Connection conn = DBConnection.createConnection();
			String sql = "select * from maintenance_payment";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Maintenance m1 = new Maintenance();
				m1.setMp_id(rs.getInt("mp_id"));
				m1.setMid(rs.getInt("m_id"));
				m1.setM_date(rs.getString("m_date"));
				m1.setM_amount(rs.getLong("m_amount"));
				list.add(m1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
