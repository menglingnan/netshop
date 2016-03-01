<%@ page language="java" pageEncoding="gb18030"%>
<%@ page import="java.text.*"%>
<%@ page import="entity.Product;"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'detail.jsp' starting page</title>
    
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

		<br>
  <%      	if(session.getAttribute("USER")==null)
  				response.sendRedirect("login.jsp");
  
  			Product product=(Product)session.getAttribute("product");
	%>
	<div align="center"><img src="images/<%=product.getPImage()%>" alt="<%=product.getPImage()%>"></div>
	<br><br>
  <table class="STYLE1" cellSpacing="0" cellPadding="0" width="300" border="0" align="center" height="150">
  	<tbody>
  		<tr>
  			<td align="left">商品名称：</td>
  			<td align="left"><%= product.getName() %></td>
  		</tr>
  		<tr>
  			<td align="left"> </td>
  			<td align="left"> </td>
  		</tr>
  		<tr>
  			<td align="left">描述：</td>
  			<td align="left"><%= product.getPDesc() %></td>
  		</tr>
  		<tr>
  			<td align="left">价格：</td>
  			<td align="left">￥<%=new DecimalFormat("0.00").format(product.getPrice())%></td>
  		</tr>
  		<tr>  
  			<td align="left">
  			<form name="form1" method="post" action="AddProductToCart">
  			<input type="submit" name="add" value="放入购物车">
  			</form>
  			</td>
  
  			<td align="left">
  			<form name="form2" method="post" action="viewCart.jsp">
  			<input type="submit" name="view" value="查看购物车">
  			</form>
  			</td>
  	
  		</tr>
  	</tbody>
  </table>
 


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
