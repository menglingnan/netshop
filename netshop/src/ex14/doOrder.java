package ex14;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDao;

import entity.Order;

public class doOrder extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2698740324308478544L;

	/**
	 * Constructor of the object.
	 */
	public doOrder() {
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

		response.setContentType("text/html;charset=gbk");
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		String username = request.getParameter("UserName");
		username = new String(username.getBytes("ISO-8859-1"),"gbk");
		System.out.println(username);
		String zipcode = request.getParameter("ZipCode");
		String phone = request.getParameter("Phone");
		String creditcard = request.getParameter("CreditCard");

		double total = Double.parseDouble(session.getAttribute("total").toString());
		Order order = new Order(username,zipcode,phone,creditcard,total);
		OrderDao od = new OrderDao();
		od.saveOrder(order);
		request.getRequestDispatcher("bye.jsp").forward(request, response);
		//session.invalidate();           
		session.setAttribute("cart", null);
		session.setAttribute("total", null);
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
		response.setContentType("text/html;charset=gbk");
		request.setCharacterEncoding("gbk");
		HttpSession session=request.getSession();
		String username = request.getParameter("UserName");
		username = new String(username.getBytes("ISO-8859-1"),"gbk");
		System.out.println(username);
		String zipcode = request.getParameter("ZipCode");
		String phone = request.getParameter("Phone");
		String creditcard = request.getParameter("CreditCard");

		double total = Double.parseDouble(session.getAttribute("total").toString());
		Order order = new Order(username,zipcode,phone,creditcard,total);
		OrderDao od = new OrderDao();
		od.saveOrder(order);
		request.getRequestDispatcher("bye.jsp").forward(request, response);
		//session.invalidate();           
		session.setAttribute("cart", null);
		session.setAttribute("total", null);
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
