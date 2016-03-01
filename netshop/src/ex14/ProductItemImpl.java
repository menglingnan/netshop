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

	// ����BookBeans�б�
	public List searchAll() {	
		List titlesList = new ArrayList();
		// ��ȡ�鼮�б�
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement("SELECT productId, name, price, PDesc, attr FROM product");

			ResultSet results = pStmt.executeQuery();
			// ��ȡ������
			while (results.next()) {
				Product p1 = new Product();  //ÿ�δ���һ����װ���ʵ��
                //�����ݱ��е�һ����¼������ӵ���װ����
				p1.setProductId(results.getInt("productId"));
				p1.setName(results.getString("name"));
				p1.setPrice(results.getDouble("price"));
				p1.setPDesc(results.getString("PDesc"));
				p1.setAttr(results.getString("attr"));
				titlesList.add(p1);  //���⽫����ӵ�������
			}
		}
		// �������ݿ��쳣
		catch (SQLException exception) {
			exception.printStackTrace();
		}
		// �ͷ���Դ
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
			// ��ȡ������
			if (results.next()) {
                //�����ݱ��е�һ����¼������ӵ���װ����
				product.setProductId(results.getInt("productId"));
				product.setName(results.getString("name"));
				product.setPrice(results.getDouble("price"));
				product.setPDesc(results.getString("PDesc"));
				product.setAttr(results.getString("attr"));
				product.setPImage(results.getString("PImage"));
			}
		}
			
		// �������ݿ��쳣
		catch (SQLException exception) {
			exception.printStackTrace();
		}
		// �ͷ���Դ
		finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		
		return product;
	}
}
