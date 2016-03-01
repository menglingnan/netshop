package ex14;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Product;

public class AddProductToCart extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9192896270327227811L;

	/**
	 * Constructor of the object.
	 */
	public AddProductToCart() {
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
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
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

		HttpSession session=request.getSession(false);
		RequestDispatcher dispatcher;
		if(session==null){
			dispatcher = request.getRequestDispatcher("displayProduct.jsp");
			dispatcher.forward(request, response);
		}
		Map cart=(Map)session.getAttribute("cart");
		Product product = (Product)session.getAttribute("product");
		if(cart==null){
			cart=new HashMap();
			session.setAttribute("cart", cart);
		}
		ProductItem cartItem = (ProductItem)cart.get(Integer.toString(product.getProductId()));
		
		// 如果商品在购物车中，更新其数量
		// 否则，创建一个条目到Map中
		if (cartItem != null)
			cartItem.setQuantity(cartItem.getQuantity() + 1);
		else {
			ProductItem cartItem1 = new ProductItem();
			cartItem1.setProduct(product);
			cartItem1.setQuantity(1);
			cart.put(Integer.toString(product.getProductId()), cartItem1);
		}

		dispatcher = request.getRequestDispatcher("viewCart.jsp");
		dispatcher.forward(request, response);
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
