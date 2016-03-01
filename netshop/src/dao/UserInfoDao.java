package dao;

import java.sql.*;
import java.util.*;

import entity.ConnectionManager;
import entity.Userinfo;



public class UserInfoDao {

	public int Add( Userinfo userinfo ){
		int result = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		String addSql = "insert into userinfo(UserId,Name,Password,Phone,Address,Zipcode,Status) values(?,?,?,?,?,?,?)";
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(addSql);
			pStmt.setInt(1,userinfo.getUserId());
			pStmt.setString(2, userinfo.getName());
			pStmt.setString(3, userinfo.getPassword());
			pStmt.setString(4, userinfo.getPhone());
			pStmt.setString(5, userinfo.getAddress());
			pStmt.setString(6, userinfo.getZipcode());
			pStmt.setString(7, userinfo.getStatus());
			result = pStmt.executeUpdate();
		}catch(Exception e){
			System.out.println("插入操作有误");
			e.printStackTrace();
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return result;
	}
	
	public int AutoAdd( Userinfo userinfo ){
		int result = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		UserInfoDao us1 = new UserInfoDao();
		String addSql = "insert into userinfo(UserId,Name,Password,Phone,Address,Zipcode,Status) values(?,?,?,?,?,?,?)";
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(addSql);
			pStmt.setInt(1,us1.getNewId());
			pStmt.setString(2, userinfo.getName());
			pStmt.setString(3, userinfo.getPassword());
			pStmt.setString(4, userinfo.getPhone());
			pStmt.setString(5, userinfo.getAddress());
			pStmt.setString(6, userinfo.getZipcode());
			pStmt.setString(7, userinfo.getStatus());
			result = pStmt.executeUpdate();
		}catch(Exception e){
			System.out.println("插入操作有误");
			e.printStackTrace();
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return result;
	}
	
	public int Del( int userid ){
		int result = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		String delSql = "delete from userinfo where UserId=?";
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(delSql);
			pStmt.setInt(1,userid);
			result = pStmt.executeUpdate();
		}catch(Exception e){
			System.out.println("删除操作有误");
			e.printStackTrace();
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return result;
	}
	public int Update( Userinfo userinfo ){
		int result = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		String updateSql = "update userinfo set Name=?,Password=?,Phone=?,Address=?,Zipcode=?,Status=?";
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(updateSql);
			
			pStmt.setString(1, userinfo.getName());
			pStmt.setString(2, userinfo.getPassword());
			pStmt.setString(3, userinfo.getPhone());
			pStmt.setString(4, userinfo.getAddress());
			pStmt.setString(5, userinfo.getZipcode());
			pStmt.setString(6, userinfo.getStatus());
			result = pStmt.executeUpdate();
		}catch(Exception e){
			System.out.println("更新操作有误");
			e.printStackTrace();
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return result;
	}
	public ArrayList Search(){
		ArrayList list = new ArrayList();
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String searchSql = "select * from userinfo";
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(searchSql);
			res = (ResultSet) pStmt.executeQuery();
			while(res.next()){
				Userinfo user = new Userinfo();
				user.setUserId(res.getInt("UserId"));
				user.setName(res.getString("Name"));
				user.setPassword(res.getString("Password"));
				user.setPhone(res.getString("Phone"));
				user.setAddress(res.getString("Address"));
				user.setStatus(res.getString("Status"));
				user.setZipcode(res.getString("Zipcode"));
				user.setCreateDate(res.getDate("CreateDate"));
				list.add(user);
			}
			
		}catch( Exception e ){
			System.out.println("查询操作错误");
			e.printStackTrace();
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		
		return list;
	}
	
	
	public boolean Search( Userinfo userinfo ){
		boolean flag;
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String searchSql = "select * from userinfo where Name=? and Password=?";
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(searchSql);
			pStmt.setString(1,userinfo.getName());
			pStmt.setString(2,userinfo.getPassword());
			res = (ResultSet) pStmt.executeQuery();

			if(res.next()){
				flag = true;
				userinfo.setUserId(res.getInt("UserId"));
				userinfo.setPhone(res.getString("Phone"));
				userinfo.setAddress(res.getString("Address"));
				userinfo.setStatus(res.getString("Status"));
				userinfo.setZipcode(res.getString("Zipcode"));
				userinfo.setCreateDate(res.getDate("CreateDate"));
			}
				
			else flag = false;
			System.out.println(flag);
			
		}catch( Exception e ){
			System.out.println("查询操作错误");
			e.printStackTrace();
			flag = false;
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return flag;
	}
	public int getNewId(){
		int newid = 0;
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String maxSql = "select max(UserId) from userinfo";
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(maxSql);
			
			res = (ResultSet) pStmt.executeQuery();
			while (res.next()) {
				newid = res.getInt("max(UserId)") + 1;
			}
			
		}catch( Exception e ){
			System.out.println("获取新ID号操作错误:"+e.toString());
			e.printStackTrace();
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return newid;
	}
	public int getByNamePassword( String name,String password ){
		int flag=1;
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String searchSql = "select * from userinfo where Name=? and Password=?";
		//String searchSql = "select * from userinfo where Name=\""+name+"\""+" and Password=\""+password+"\"";
		
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(searchSql);

			pStmt.setString(1, name);
			pStmt.setString(2, password);
			res = (ResultSet) pStmt.executeQuery();
			if(res.next())
				flag = 1;		
				
			else flag = 0;

		}catch( Exception e ){
			System.out.println("信息核对操作错误");
			e.printStackTrace();
			flag = 0;
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return flag;
	}
	
	public int getByName( String name ){
		int flag=1;
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String searchSql = "select * from userinfo where Name=?";
		
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(searchSql);

			pStmt.setString(1, name);
			res = (ResultSet) pStmt.executeQuery();
			if(res.next())
				flag = 1;		
				
			else flag = 0;

		}catch( Exception e ){
			System.out.println("信息核对操作错误");
			e.printStackTrace();
			flag = 0;
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return flag;
	}
	
	public int getByInfo( String name, String phone, String address, String zipcode ){
		int flag=1;
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet res = null;
		String searchSql = "select * from userinfo where Name=? and Phone=? and Address=? and Zipcode=?";
		
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(searchSql);

			pStmt.setString(1, name);
			pStmt.setString(2, phone);
			pStmt.setString(3, address);
			pStmt.setString(4, zipcode);
			res = (ResultSet) pStmt.executeQuery();
			if(res.next())
				flag = 1;		
				
			else flag = 0;

		}catch( Exception e ){
			System.out.println("用户信息核对错误");
			e.printStackTrace();
			flag = 0;
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return flag;
	}
	
	public int updatePwdByName( String name ,String password ){
		int flag = 0;
		Connection con = null;
		PreparedStatement pStmt = null;

		String updateSql = "update userinfo set Password=? where Name=?";
		
		try{
			con = ConnectionManager.getConnection();
			pStmt = (PreparedStatement) con.prepareStatement(updateSql);

			pStmt.setString(1, password);
			System.out.println("update:"+name);
			pStmt.setString(2, name);
			flag = pStmt.executeUpdate();
			
		}catch( Exception e ){
			System.out.println("密码修改失败");
			e.printStackTrace();
			flag = 0;
		}finally{
			ConnectionManager.closeConnection(con, pStmt, null);
		}
		return flag;
	}
	/*public static void main( String args[]){
		ConnectionManager.getConnection();
		Date d1 = new Date();
		
		Userinfo u1 = new Userinfo("Apple", "111", "15896269105", "ntu 11#206", "226019", "1", d1);		 
		//u1.setUserId(8);	
		UserInfoDao ud1 = new UserInfoDao();

		//ud1.Del(1);ud1.Del(2);ud1.Del(3);ud1.Del(4);ud1.Del(5);ud1.Del(6);ud1.Del(7);ud1.Del(8);ud1.Del(9);
		//ud1.AutoAdd(u1);
		//u1.setName("Banana");ud1.AutoAdd(u1);
		//u1.setName("Pear");ud1.AutoAdd(u1);
		//u1.setName("Orange");ud1.AutoAdd(u1);
		
		//u1.setUserId(ud1.getNewId());
		
		//u2.setUserId(ud1.getNewId());
		//u1.setAddress("ntu");
		//ud1.Update(u1);
		//ud2.AutoAdd(u2);
		//System.out.println(ud1.Search(u2));
		
	} */
}
