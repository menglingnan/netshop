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
	<strong><font size="6" face="Microsoft YaHei UI" color="#ffffff">��ӭ���ʁ7�8�ɵ������7�8����վ��ף�㹺����죡</font><br></strong> 
  </div>
  <%if (session.getAttribute("USER") != null){ %>
  <br>
  	<hr>
	<P align="center" class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	�7�8<a class="STYLE1" href="displayProduct.jsp">ȫ����Ʒ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	�7�8<a class="STYLE1" href="SearchByType.jsp">�������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	�7�8<a class="STYLE1" href="viewCart.jsp">�鿴���ﳵ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	�7�8<%=session.getAttribute("USER")+"����ã�" %>&nbsp;&nbsp;
		�7�8<a class="STYLE1" href="logout.jsp">�˳�</a>
	</p>

	
	
	<hr>
	<br>
  <% }
  else { %>
  <br><p align="right">
 	 	�7�8<a class="STYLE1" href="login.jsp">��¼</a>
	&nbsp;&nbsp;
		�7�8<a class="STYLE1" href="new.jsp">ע��</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<p>
	<%} %>
	
  </body>
</html>
