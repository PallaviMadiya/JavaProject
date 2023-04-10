package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.Cart;
import connection.DBConnection;

public class CartDao {

	public static void insertIntoCart(Cart c) {
		try {
			Connection conn= DBConnection.createConnection();
			String sql = "insert into cart(cid,pid,pname,pcategory,pprice,qty,total,payment_status) values(?,?,?,?,?,?,?,?)"; 
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, c.getCid());
			pst.setInt(2, c.getPid());
			pst.setString(3, c.getPname());
			pst.setString(4, c.getPcategory());
			pst.setInt(5, c.getPprice());
			pst.setInt(6, c.getQty());
			pst.setInt(7, c.getTotal());
			pst.setString(8, c.getPayment_status());
			pst.executeUpdate();
			System.out.println("Cart Data Iserted!");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Cart> getCartByCusId(int cid){
		List<Cart> list = new ArrayList<Cart>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from cart where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Cart c = new Cart();
				c.setCid(rs.getInt("cid"));
				c.setPid(rs.getInt("pid"));
				c.setPname(rs.getString("pname"));
				c.setPcategory(rs.getString("pcategory"));
				c.setPprice(rs.getInt("pprice"));
				c.setQty(rs.getInt("qty"));
				c.setTotal(rs.getInt("total"));
				c.setPayment_status(rs.getString("payment_status"));
				list.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static void removeFromCart(int cid, int pid) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "delete from cart where cid=? and pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			pst.setInt(2, pid);
			pst.executeUpdate();
			System.out.println("Removed From Cart!");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static boolean checkProductInCart(int pid) {
		boolean flag2 = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from cart where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, pid);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag2 = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag2;
	}

}
