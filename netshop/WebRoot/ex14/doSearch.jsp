<%@ page language="java" pageEncoding="gb18030"%>
<%@ page import="java.util.*"%>
<%@	page import="dao.ProductDao"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doSearch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%  if(session.getAttribute("USER")==null)
  			response.sendRedirect("login.jsp");
    
    	String strId = request.getParameter("selectType");
    	int id = Integer.parseInt(strId);
    	List list = new ArrayList();
    	ProductDao productDao = new ProductDao();
    	list = productDao.searchByCat(id);
    	session.setAttribute("RESULT",list);
    	response.sendRedirect("ProductByType.jsp");
    %>
  </body>
</html>
