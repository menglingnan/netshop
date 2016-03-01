package ex14;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserInfoDao;
import entity.Userinfo;

public class InsertNewUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public InsertNewUser() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("gbk");
		
		String username = request.getParameter("UserName");
		username = new String(username.getBytes("ISO-8859-1"),"gbk");
		System.out.println(username);
		
		String password = request.getParameter("PassWord");
		String zipcode = request.getParameter("ZipCode");
		
		String phone = request.getParameter("Phone");
		String address = request.getParameter("Address");
	
		Date d1 = new Date();
		Userinfo u1 = new Userinfo(username, password, phone, address, zipcode, "1", d1 );
		UserInfoDao ud1 = new UserInfoDao();
		int result = ud1.AutoAdd(u1);
		
		if(result>0){
			response.setCharacterEncoding("gbk");
			PrintWriter pw=response.getWriter();     
			pw.write("<script language='javascript'>alert('×¢²á³É¹¦£¡');window.location.href='login.jsp';</script>");
		}
		else{
			response.setCharacterEncoding("gbk");
			PrintWriter pw=response.getWriter();     
			pw.write("<script language='javascript'>alert('×¢²áÊ§°Ü£¡');window.location.href='new.jsp';</script>");
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
