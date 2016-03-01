package dao;
import java.sql.*;
import java.util.*;

import entity.ConnectionManager;
import entity.Product;


public class ProductDao {
	public List searchAll(){
		List list = new ArrayList();
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String searchSql = "select * from product";
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement(searchSql);
			res = pStmt.executeQuery();
			
			while(res.next()){
				Product product = new Product();
				product.setProductId(res.getInt("ProductId"));
				product.setName(res.getString("Name"));
				product.setCatId(res.getInt("CatId"));
				product.setPrice(res.getDouble("Price"));
				product.setPDesc(res.getString("PDesc"));
				product.setAttr(res.getString("attr"));
				product.setPImage(res.getString("PImage"));
				list.add(product);
			}
		}catch(Exception e) {
			System.out.println("²éÑ¯²Ù×÷´íÎósearchAll()");
			e.printStackTrace();
		}finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return list;
	}
	
	public List searchByCat(int catId){
		List list = new ArrayList();
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String searchSql = "select * from product where CatId=?";
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement(searchSql);
			pStmt.setInt(1, catId);
			res = pStmt.executeQuery();
			while(res.next()){
				Product product = new Product();
				product.setProductId(res.getInt("productId"));
				product.setName(res.getString("name"));
				product.setCatId(res.getInt("catId"));
				product.setPrice(res.getDouble("price"));
				product.setPDesc(res.getString("PDesc"));
				product.setAttr(res.getString("attr"));
				product.setPImage(res.getString("PImage"));
				list.add(product);
			}
		}catch(Exception e){
			System.out.println("²éÑ¯²Ù×÷´íÎósearchByCat(int catId)");
			e.printStackTrace();
		}finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return list;
	}
	public int Add(Product product){
		int result = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		String addSql = "insert into product(ProductId,Name,CatId,Price,PDesc,Attr,PImage) values(?,?,?,?,?,?,?)";
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement(addSql);
			pStmt.setInt(1, product.getProductId());
			pStmt.setString(2, product.getName());
			pStmt.setInt(3, product.getCatId());
			pStmt.setDouble(4, product.getPrice());
			pStmt.setString(5, product.getPDesc());
			pStmt.setString(6, product.getAttr());
			pStmt.setString(7,product.getPImage());
			result = pStmt.executeUpdate();
		}catch(Exception e){
			System.out.println("²åÈë²Ù×÷´íÎó");
			e.printStackTrace();
		}finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return result;
	}
	public int Del(int productId){
		int result = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		String delSql = "delete from product where ProductId=?";
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement(delSql);
			pStmt.setInt(1, productId);
			result = pStmt.executeUpdate();
		}catch(Exception e){
			System.out.println("É¾³ý²Ù×÷´íÎó");
			e.printStackTrace();
		}finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return result;
	}
	public int Update( Product product ){
		int result = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		String updateSql = "update product set Name=?,CatId=?,Price=?,PDesc=?,Attr=?,PImage=?";
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(updateSql);
			
			pStmt.setString(1, product.getName());
			pStmt.setInt(2, product.getCatId());
			pStmt.setDouble(3, product.getPrice());
			pStmt.setString(4, product.getPDesc());
			pStmt.setString(5, product.getAttr());
			pStmt.setString(6, product.getPImage());
			result = pStmt.executeUpdate();
		}catch(Exception e){
			System.out.println("¸üÐÂ²Ù×÷ÓÐÎó");
			e.printStackTrace();
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return result;
	}
	public Product ProductById(int id){
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		Product product = new Product();
		
		String searchSql = "select * from product where ProductId=?";
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement(searchSql);
			pStmt.setInt(1, id);
			res = pStmt.executeQuery();
			while(res.next()){

				product.setProductId(res.getInt("productId"));
				product.setName(res.getString("name"));
				product.setCatId(res.getInt("catId"));
				product.setPrice(res.getDouble("price"));
				product.setPDesc(res.getString("PDesc"));
				product.setAttr(res.getString("attr"));
				product.setPImage(res.getString("PImage"));
			}
		}catch(Exception e){
			System.out.println("²éÑ¯²Ù×÷´íÎó");
			e.printStackTrace();
		}finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return product;
	}
	public static void main( String args[]){
		ConnectionManager.getConnection();

		ProductDao pd1=new ProductDao();
		Product p1=pd1.ProductById(3);
		System.out.println(p1.getName());
		
	}
}
