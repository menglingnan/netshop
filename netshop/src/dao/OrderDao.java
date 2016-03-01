package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import entity.ConnectionManager;
import entity.Order;

public class OrderDao {
	public int saveOrder(Order order){
		int result = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		String addSql = "insert into productorder(username,zipcode,phone,creditcard,total) values(?,?,?,?,?)";
		try {
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement(addSql);

			pStmt.setString(1, order.getUsername());
			pStmt.setString(2, order.getZipcode());
			pStmt.setString(3, order.getPhone());
			pStmt.setString(4, order.getCreditcard());
			pStmt.setDouble(5, order.getTotal());
			result = pStmt.executeUpdate();
		}catch(Exception e){
			System.out.println("¶©µ¥±£´æ²Ù×÷´íÎó");
			e.printStackTrace();
		}finally {
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return result;
	}
	/**
	 * @param args
	 */

}
