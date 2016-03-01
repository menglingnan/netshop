package ex14;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserInfoDao;

public class UpdatePassword extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public UpdatePassword() {
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
		
		HttpSession session=request.getSession();
		String username = (String)session.getAttribute("Uname");
		System.out.println("get1:"+username);

		String password = request.getParameter("PassWord1");
		password = new String(password.getBytes("ISO-8859-1"),"gbk");

		UserInfoDao ud1 = new UserInfoDao();
		int result = ud1.updatePwdByName(username, password);
		
		
		System.out.println("Uname:"+session.getAttribute("Uname"));
		if(result>0){
			response.setCharacterEncoding("gbk");
			PrintWriter pw=response.getWriter();     
			pw.write("<script language='javascript'>alert('√‹¬Î–ﬁ∏ƒ≥…π¶£°');window.location.href='login.jsp';</script>");
		}
		else{
			response.setCharacterEncoding("gbk");
			PrintWriter pw=response.getWriter();     
			pw.write("<script language='javascript'>alert('√‹¬Î–ﬁ∏ƒ ß∞‹£°');window.location.href='updatePwd.jsp';</script>");
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
