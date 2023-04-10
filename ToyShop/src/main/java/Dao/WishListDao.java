package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.WishList;
import connection.DBConnection;

public class WishListDao {
	public static void insertWhishList(WishList w) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into wishlist(cid,pid) values(?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, w.getCid());
			pst.setInt(2, w.getPid());
			pst.executeUpdate();
			System.out.println("WhishList Created");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static boolean checkProductInWishList(int pid) {
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from wishlist where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, pid);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public static List<WishList> getWishLIstByCusId(int cid){
		List<WishList> list = new ArrayList<WishList>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from wishlist where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				WishList w = new WishList();
				w.setWid(rs.getInt("wid"));
				w.setCid(rs.getInt("cid"));
				w.setPid(rs.getInt("pid"));
				list.add(w);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void removeWhishList(int cid, int pid) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "delete from wishlist where cid=? and pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			pst.setInt(2, pid);
			pst.executeUpdate();
			System.out.println("Whishlist item removed");
		}catch(Exception e) {
			e.printStackTrace();
		}		
	}
}
