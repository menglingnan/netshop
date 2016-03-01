<%@ page language="java" pageEncoding="gb18030"%>
<%@ page import="java.util.*"%>


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
    <title>Products</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
		
		
		
  <div align="center"> 
    <%  if(session.getAttribute("USER")==null)
  			response.sendRedirect("login.jsp");
    
    System.out.println("RESULT:"+session.getAttribute("RESULT")); 
  	if(session.getAttribute("RESULT")==null) 
  		response.sendRedirect("SearchByType.jsp");  
  %> 
  <% 
	ArrayList list = (ArrayList)session.getAttribute("RESULT"); 
  %> 
  <% entity.Product product1 = (entity.Product)list.get(1); %>
  <font size="5" face="Microsoft YaHei UI"><strong><font color="#ffffff"><label>❤所有<%= product1.getAttr() %>类的商品❤</label></font></strong></font> 
  </div>
  <br><table align="center" border="0">
  		<tr bgcolor="#33aadf">
  			<td align="center" width="100" height = "26"><font color="#ffffff" face="Microsoft YaHei UI"><%= "品名" %></font><br></td>
  			<td align="center" width="100"><font color="#ffffff" face="Microsoft YaHei UI"><%= "价格" %></font><br></td>
  			<td align="center" width="300"><font color="#ffffff" face="Microsoft YaHei UI"><%= "描述信息" %></font><br></td>
  			<td align="center" width="100"><font color="#ffffff" face="Microsoft YaHei UI"><%= "属性" %></font><br></td>
  		</tr>
  <%
  	for(int i = 0; i < list.size(); i++){
    		entity.Product product = (entity.Product)list.get(i);
  %>
  		<tr height="40"  class="STYLE1">
  			<td width="100" height = "26">&nbsp;&nbsp;&nbsp;&nbsp;
  			<a class="STYLE1" href="ToViewProduct?productId=<%=product.getProductId()%>">			
				<%=product.getName() %>
			</a></td>
  			<td align="center" width="100"><%= "￥"+product.getPrice() %></td>
  			<td width="300">&nbsp;&nbsp;&nbsp;&nbsp;<%= product.getPDesc() %></td>
  			<td align="center" width="100"><%= product.getAttr() %></td>
  		</tr>
  <%
  	} 
  %>
  </table>
  <br><br>
<p align="center" class="STYLE1"><a href="displayProduct.jsp" class="STYLE1">返回所有商品</a></p>
  


		</td>
		</tr>
		</table>
		<table width="950" border="0" align="center" cellspacing="0" cellpadding="0"  bgcolor="#ee6686">
		<tr><td><%@ include file='bottom.jsp'%>
		</td></tr>
		</table>
		  </body>
</html>
