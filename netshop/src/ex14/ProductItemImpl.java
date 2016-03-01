package ex14;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.ConnectionManager;
import entity.Product;
public class ProductItemImpl implements ProductIf{
	private Connection con;
	private PreparedStatement pStmt;

	// 返回BookBeans列表
	public List searchAll() {	
		List titlesList = new ArrayList();
		// 获取书籍列表
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement("SELECT productId, name, price, PDesc, attr FROM product");

			ResultSet results = pStmt.executeQuery();
			// 读取行数据
			while (results.next()) {
				Product p1 = new Product();  //每次创建一个封装类的实例
                //将数据表中的一条记录数据添加到封装类中
				p1.setProductId(results.getInt("productId"));
				p1.setName(results.getString("name"));
				p1.setPrice(results.getDouble("price"));
				p1.setPDesc(results.getString("PDesc"));
				p1.setAttr(results.getString("attr"));
				titlesList.add(p1);  //将封将类添加到数组中
			}
		}
		// 处理数据库异常
		catch (SQLException exception) {
			exception.printStackTrace();
		}
		// 释放资源
		finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return titlesList;
	}
	
	public Product searchProductById(int id) {
		Product product = new Product();
		
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement("SELECT * FROM product WHERE productId=" + id); 
							
			ResultSet results = pStmt.executeQuery();
			// 读取行数据
			if (results.next()) {
                //将数据表中的一条记录数据添加到封装类中
				product.setProductId(results.getInt("productId"));
				product.setName(results.getString("name"));
				product.setPrice(results.getDouble("price"));
				product.setPDesc(results.getString("PDesc"));
				product.setAttr(results.getString("attr"));
				product.setPImage(results.getString("PImage"));
			}
		}
			
		// 处理数据库异常
		catch (SQLException exception) {
			exception.printStackTrace();
		}
		// 释放资源
		finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		
		return product;
	}
}
