<%@ page language="java" pageEncoding="gb18030"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
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
    <title>My JSP 'logout.jsp' starting page</title>
    
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
		
		
		
    <%session.invalidate(); %>
    
    <p align="center"><font size="5" face="Microsoft YaHei UI" color="#ffffff"><strong><br><br>登出成功</strong></font></p>
    <br><br><br>
    <p align="center"><a class="STYLE1" href="login.jsp">重新登录</a></p>
	


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
