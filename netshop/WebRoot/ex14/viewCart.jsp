<%@ page language="java" pageEncoding="gb18030"%>
<%@ page import="java.util.*"%>
<%@page import="ex14.ProductItem"%>
<%@ page import="java.text.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>我的购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE1 {
color: #FFFFFF;
font-family: "Microsoft YaHei UI";
}
-->
    </style>
</head>
  
  <body bgcolor="#FFCCCC">
		<table width="950" border="0" align="center" cellspacing="0" cellpadding="0"  bgcolor="#ee6686">
		<tr><td><br>
			<%@include file='top.jsp'%>
		</td></tr>
		</table>
		<table width="950" border="0" align="center" cellspacing="0" cellpadding="0"  bgcolor="#ee6686">
		<tr>
		<td>
  <%     if(session.getAttribute("USER")==null)
  			response.sendRedirect("login.jsp");
   %>

		<p align="center">
			<font size="5" color="#ffffff" face="Microsoft YaHei UI">
			<strong>❤我的购物车❤</strong>
			</font>
		</p>
		<br>
  <% 
  	Map cart = (Map)session.getAttribute("cart"); 
  	double total = 0; 
  	if(cart==null||cart.size()==0){
  	%><p class="STYLE1" align="center">购物车里什么都没有哦，再<a class="STYLE1" href="displayProduct.jsp">去逛逛</a>吧~</p>
  	<%
  		} else {
  			Set cartItems = cart.keySet();
  			Object[] productId = cartItems.toArray();
  			entity.Product product;
  			ProductItem cartItem;
  			int quantity;
  			double price, subtotal;
  	%>
<table width="525" height="60" border="0" align="center" class="STYLE1">
<tbody>
<tr bgcolor="#33aadf">
	<td width="155" height="29" align="center">商品名</td>
	<td width="123" align="center">数量</td>
	<td width="113" align="center">价格</td>
	<td width="116" align="center">小计</td>
	<td width="80" style="background-color: rgb(192, 192, 192);"></td>
</tr>
<%
	int i = 0;
		int n = productId.length;
		
		while (i < n) {
			cartItem = (ProductItem) cart.get(productId[i]);
			product = cartItem.getProduct();
			int pid = product.getProductId();
			quantity = cartItem.getQuantity();
			price = product.getPrice();
			subtotal = quantity * price;
			total += subtotal;
			i++;
%>

<tr height="40">
	<td align="center" width="130">
					<a class="STYLE1" href="ToViewProduct?productId=<%=product.getProductId()%>">		
							<%=product.getName() %>
					</a>
				</td>
	<td align="center"><%=quantity%></td>
	<td align="right">￥<%=new DecimalFormat("0.00").format(price)%></td>
	<td align="right">￥<%=new DecimalFormat("0.00").format(subtotal)%></td>
	<td align="center"><a class="STYLE1" href="DeleteItem?pid=<%=pid %>">删除</a></td>
</tr>

  	<%
  		}
  	%>	 </tbody></table>
		<%
			session.setAttribute("total", new Double(total));
		%>
		<p class="STYLE1" align="center">总计：￥<%=new DecimalFormat("0.00").format(total)%></p>
    <p class="STYLE1" align="center"><a class="STYLE1" href="displayProduct.jsp">继续购物</a></p>
<table class="STYLE1" align="center">
  <tbody>
	<tr>
	  <td>
		<form name="form1" method="post" action="DeleteCart">
  		  <input type="submit" name="submit1" value="清空">
  		</form>
	  </td>
	  <td>
	    <form name="form2" method="post" action="order.jsp">
  		  <input type="submit" name="submit2" value="结账">
 		</form>
	  </td>
	</tr>
  </tbody>
</table>
  
  

  <%
  	}
  %>
 

</td>
		</tr>
		</table>
		<table width="950" border="0" align="center" cellspacing="0" cellpadding="0"  bgcolor="#ee6686">
		<tr><td>
			<%@ include file='bottom.jsp'%>
		</td></tr>
		</table>
  </body>
</html>
