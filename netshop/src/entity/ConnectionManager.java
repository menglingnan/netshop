package entity;
import java.sql.*;



public class ConnectionManager {
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/netshop";
	public static final String DATABASE_USER = "root";
	public static final String DATABASE_PASSWORD = "123";
	
	public static Connection getConnection(){
		Connection con = null;
		try{
			Class.forName(DRIVER_CLASS);
		}catch( ClassNotFoundException e ){
			System.out.println("drive error");
			e.printStackTrace();
		}
		try{
			
			con = (Connection) DriverManager.getConnection(URL,DATABASE_USER,DATABASE_PASSWORD);
			System.out.println("-------------------------------------------------");
			System.out.println("sucess");
		}catch( SQLException e ){
			System.out.println("error");
			e.printStackTrace();
		}
		return con;
	}
	
	public static void closeConnection( Connection con,Statement stmt,ResultSet res){
		if( res != null )
			try{
				res.close();
				res = null;
			}catch( SQLException e ){
				e.printStackTrace();
			}
		if( stmt != null )
			try{
				stmt.close();
				stmt = null;
			}catch( SQLException e ){
				e.printStackTrace();
			}
		try{
			if( con != null && con.isClosed() == false ){
				con.close();
				con = null;
			}
		}catch( SQLException e ){
			e.printStackTrace();
		}
	}
	
	public static void closeConnection( Connection con, PreparedStatement pStmt, ResultSet res){
		if( res != null )
			try{
				res.close();
				res = null;
			}catch( SQLException e ){
				e.printStackTrace();
			}
			if( pStmt != null )
				try{
					pStmt.close();
					pStmt = null;
				}catch( SQLException e ){
					e.printStackTrace();
				}
			try{
				if( con != null && con.isClosed() == false ){
					con.close();
					con = null;
				}
			}catch( SQLException e ){
				e.printStackTrace();
			}	
	}
	/*public static void main( String args[]){
		ConnectionManager.getConnection();
	}*/
	
}
