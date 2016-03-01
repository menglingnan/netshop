<%@ page language="java" pageEncoding="gb18030"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title></title>
    
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
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
			color: #FFFFFF;
			font-family: "Microsoft YaHei UI";
		}
-->
</style>
  </head>
  <body bgcolor="#ee6686"><div align="center"><img src="images/side.png" alt="Cinderella's house"></div>
  <div align="center"><br>
	<strong><font size="6" face="Microsoft YaHei UI" color="#ffffff">欢迎访问❤仙蒂瑞拉❤的网站，祝你购物愉快！</font><br></strong> 
  </div>
  <%if (session.getAttribute("USER") != null){ %>
  <br>
  	<hr>
	<P align="center" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	❤<a class="STYLE1" href="displayProduct.jsp">全部商品</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	❤<a class="STYLE1" href="SearchByType.jsp">分类查找</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	❤<a class="STYLE1" href="viewCart.jsp">查看购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	❤<%=session.getAttribute("USER")+"，你好！" %>&nbsp;&nbsp;
		❤<a class="STYLE1" href="logout.jsp">退出</a>
	</p>

	
	
	<hr>
	<br>
  <% }
  else { %>
  <br><p align="right">
 	 	❤<a class="STYLE1" href="login.jsp">登录</a>
	&nbsp;&nbsp;
		❤<a class="STYLE1" href="new.jsp">注册</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<p>
	<%} %>
	
  </body>
</html>
