package ex14;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserInfoDao;

public class CheckUserInfo extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public CheckUserInfo() {
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
		
		String zipcode = request.getParameter("ZipCode");
		String phone = request.getParameter("Phone");
		String address = request.getParameter("Address");

		UserInfoDao ud1 = new UserInfoDao();
		int result = ud1.getByInfo(username, phone, address, zipcode);
		HttpSession session=request.getSession();
		session.setAttribute("Uname", username);
		
		System.out.println("Uname:"+session.getAttribute("Uname"));
		if(result>0){
			response.setCharacterEncoding("gbk");
			PrintWriter pw=response.getWriter();     
			pw.write("<script language='javascript'>alert('信息核对成功！');window.location.href='updatePwd.jsp';</script>");
		}
		else{
			response.setCharacterEncoding("gbk");
			PrintWriter pw=response.getWriter();     
			pw.write("<script language='javascript'>alert('信息核对失败！');window.location.href='forget.jsp';</script>");
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
