<%@ page language="java" pageEncoding="gb18030"%>
<%@ page import="java.util.List"%>
<%@	page import="dao.ProductDao"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<style type="text/css">
	<!--
	.STYLE1 {
			color: #FFFFFF;
			font-family: "Microsoft YaHei UI";
		}
	-->
</style>
		<title>Cinderella's Goods</title>

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
		
		<p align="center">
			<font size="5" color="#ffffff" face="Microsoft YaHei UI">
			<strong>❤仙蒂瑞拉家的所有商品❤</strong>
			</font>
		</p>
		<%
			if (session.getAttribute("USER") == null)
				response.sendRedirect("login.jsp");
		%>
		<%
			ProductDao productDao = new ProductDao();
			List list = productDao.searchAll();
		%>
		<br>
		<table align="center" border="0">
			<tr bgcolor="#33aadf">
				<td align="center" width="130" height="26">
					<font color="#ffffff" face="Microsoft YaHei UI"><%="品名"%></font>
					<br>
				</td>
				<td align="center" width="100">
					<font color="#ffffff" face="Microsoft YaHei UI"><%="价格"%></font>
					<br>
				</td>
				<td align="center" width="300">
					<font color="#ffffff" face="Microsoft YaHei UI"><%="描述信息"%></font>
					<br>
				</td>
				<td align="center" width="100">
					<font color="#ffffff" face="Microsoft YaHei UI"><%="属性"%></font>
					<br>
				</td>
			</tr>
			<%
				for (int i = 0; i < list.size(); i++) {
					entity.Product product = (entity.Product) list.get(i);
			%>
			<tr height="40">
				<td align="center" width="130" height="26">
					<a class="STYLE1" href="ToViewProduct?productId=<%=product.getProductId()%>">
							<%=product.getName() %>
					</a>
				</td>
				<td align="center" width="100">
					<font color="#ffffff" face="Microsoft YaHei UI"><%="￥" + product.getPrice()%></font>
				</td>
				<td align="center" width="300">
					<font color="#ffffff" face="Microsoft YaHei UI"><%=product.getPDesc()%></font>
				</td>
				<td align="center" width="100">
					<font color="#ffffff" face="Microsoft YaHei UI"><%=product.getAttr()%></font>
				</td>
			</tr>
			<%
				}
			%>
		</table>
		
		<p align="center">	<a href="SearchByType.jsp" class="STYLE1"><br><br>查询</a></p>
		
		
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
