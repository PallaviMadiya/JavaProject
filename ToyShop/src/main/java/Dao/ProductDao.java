package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.Product;
import connection.DBConnection;

public class ProductDao {

	public static void insertProduct(Product p) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into Product(sid,image,pname,pprice,pcategory,pdesc) values(?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, p.getSid());
			pst.setString(2, p.getImage());
			pst.setString(3, p.getPname());
			pst.setInt(4, p.getPprice());
			pst.setString(5, p.getPcategory());
			pst.setString(6, p.getPdesc());
			pst.executeUpdate();
			System.out.println("Product Uploaded!");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Product> getProductBySid(int sid){
		List<Product> list = new ArrayList<Product>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from product where sid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, sid);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Product p = new Product();
				p.setPid(rs.getInt("pid"));
				p.setSid(rs.getInt("sid"));
				p.setImage(rs.getString("image"));
				p.setPname(rs.getString("pname"));
				p.setPprice(rs.getInt("pprice"));
				p.setPcategory(rs.getString("pcategory"));
				p.setPdesc(rs.getString("pdesc"));
				list.add(p);
			}
			System.out.println("List Created!");

		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static Product getProductByPid(int id) {
		Product p = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from product where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				p = new Product();
				p.setPid(rs.getInt("pid"));
				p.setSid(rs.getInt("sid"));
				p.setImage(rs.getString("image"));
				p.setPname(rs.getString("pname"));
				p.setPprice(rs.getInt("pprice"));
				p.setPcategory(rs.getString("pcategory"));
				p.setPdesc(rs.getString("pdesc"));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return p;
	}
	public static void updateProduct(Product p) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update product set image=?,pname=?,pprice=?,pcategory=?,pdesc=? where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, p.getImage());
			pst.setString(2, p.getPname());
			pst.setInt(3, p.getPprice());
			pst.setString(4, p.getPcategory());
			pst.setString(5, p.getPdesc());
			pst.setInt(6, p.getPid());
			pst.executeUpdate();
			System.out.println("product Edited");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void deleteProduct(int id) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "delete from product where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			System.out.println("Product Deleted!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Product> getAllProduct(){
		List<Product> list = new ArrayList<Product>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from product";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Product p = new Product();
				p.setPid(rs.getInt("pid"));
				p.setSid(rs.getInt("sid"));
				p.setImage(rs.getString("image"));
				p.setPname(rs.getString("pname"));
				p.setPprice(rs.getInt("pprice"));
				p.setPcategory(rs.getString("pcategory"));
				p.setPdesc(rs.getString("pdesc"));
				list.add(p);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static List<Product> getProductByCategory(){
		List<Product> list = new ArrayList<Product>();
		return list;
	}

	
}
