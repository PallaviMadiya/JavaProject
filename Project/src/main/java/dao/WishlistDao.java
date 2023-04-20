package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnecation;
import model.WishlistModel;

public class WishlistDao {

	public static void insertWishlist(WishlistModel w)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "insert into wishlist(cusid,pid) values(?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, w.getCusid());
			pst.setInt(2, w.getPid());
			pst.executeUpdate();
			System.out.println("Added to wishlist");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<WishlistModel> getWishlistByCusId(int cusid)
	{
		List<WishlistModel> list = new ArrayList<WishlistModel>();
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from wishlist where cusid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cusid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				WishlistModel w = new WishlistModel();
				w.setWid(rs.getInt("wid"));
				w.setCusid(rs.getInt("cusid"));
				w.setPid(rs.getInt("pid"));
				list.add(w);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static boolean checkProductInWishlist(int pid)
	{
		boolean flag = false;
		try {

			Connection conn = DBConnecation.createConnection();
			String sql = "select * from wishlist where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, pid);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				flag=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public static void removeFromWishlist(int wid)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "delete from wishlist where wid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, wid);
			pst.executeUpdate();
			System.out.println("Removed from wishlist");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
