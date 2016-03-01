<%@ page language="java" pageEncoding="gb18030"%>
<%@ page import="java.util.List"%>
<%@	page import="entity.Category"%>

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
    <title>Search</title>
    
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
    <font size="5" face="Microsoft YaHei UI" color="#ffffff"><strong><label>❤分类查询商品❤</label></strong></font> 
   </div><%
   		if(session.getAttribute("USER") == null)
   			response.sendRedirect("login.jsp");
   		dao.CategoryDao categoryDao = new dao.CategoryDao();
        List list = categoryDao.searchAll();
   %>
   <br>
   <form name="form1" method="post" action="doSearch.jsp">
   <p align="center" class="STYLE1">
   选择分类：
   <select name="selectType" id="selectType">
   	<%
   		for(int i=0;i<list.size();i++){
   			Category category=(Category)list.get(i);
    %>
    		<option value="<%=category.getCatId() %>"><%=category.getName()%></option>
    <%	} %>
    </select>
    </p>
    <p align="center">
	<input name="SubmitType" type="submit" value="提交">
	</p>
   </form>

  	


</td>
		</tr>
		</table>
		<table width="950" border="0" align="center" cellspacing="0" cellpadding="0"  bgcolor="#ee6686">
		<tr><td><%@ include file='bottom.jsp'%>
		</td></tr>
		</table>
		  </body>
</html>
