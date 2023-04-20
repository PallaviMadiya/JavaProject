package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnecation;
import model.CartModel;

public class CartDao {

	public static void insertIntoCart(CartModel c)
	{
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "insert into cart(cusid,pid,pname,pcategory,pprice,qty,total,payment_status) values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, c.getCusid());
			pst.setInt(2, c.getPid());
			pst.setString(3, c.getPname());
			pst.setString(4, c.getPcategory());
			pst.setInt(5, c.getPprice());
			pst.setInt(6, c.getQty());
			pst.setInt(7, c.getTotal());
			pst.setString(8, c.getPayment_status());
			pst.executeUpdate();
			System.out.println("Added to Cart");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static boolean checkProductInWishlist(int pid)
	{
		boolean flag = false;
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from cart where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, pid);
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
	
	public static List<CartModel> getCartByCusId(int id)
	{
		List<CartModel> list = new ArrayList<CartModel>();
		try {
			
			Connection conn = DBConnecation.createConnection();
			String sql = "select * from cart where cusid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				CartModel c = new CartModel();
				c.setCid(rs.getInt("cid"));
				c.setCusid(rs.getInt("cusid"));
				c.setPid(rs.getInt("pid"));
				c.setPname(rs.getString("pname"));
				c.setPcategory(rs.getString("pcategory"));
				c.setPprice(rs.getInt("pprice"));
				c.setQty(rs.getInt("qty"));
				c.setTotal(rs.getInt("total"));
				c.setPayment_status(rs.getString("payment_status"));
				list.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
