package dao;
import java.util.*;
import java.sql.*;

import entity.ConnectionManager;
import entity.Category;

public class CategoryDao {
	
	public List searchAll(){
		List list = new ArrayList();
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String searchSql = "select * from category";
		try{
			con = ConnectionManager.getConnection();
			pStmt = con.prepareStatement(searchSql);
			res = pStmt.executeQuery();
			System.out.println(res.toString());
			while(res.next()){		
				Category category = new Category();
				
				category.setCatId(res.getInt("CatId"));
				category.setName(res.getString("Name"));
				category.setCDesc(res.getString("CDesc"));
				list.add(category);
			}
		}catch(Exception e){
			System.out.println("²éÑ¯²Ù×÷´íÎósearchAll()");
			e.printStackTrace();
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return list;
	}
	
	
	
}
