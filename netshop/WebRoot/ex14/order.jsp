<%@ page language="java" pageEncoding="gb18030"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
    <title>订单处理</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
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
    <script>
function check(){
	var username=document.getElementById("UserName");
	var zipcode=document.getElementById("ZipCode");
	var phone=document.getElementById("Phone");
	var creditcard=document.getElementById("CreditCard");
	if(username.value==""){
		alert("用户名不能为空哦");
		username.focus();
		return false;
	}
	if(zipcode.value==""){
		alert("邮编不能为空哦");
		zipcode.focus();
		return false;
	}
	if(phone.value==""){
		alert("电话不能为空哦");
		phone.focus();
		return false;
	}
	if(creditcard.value==""){
		alert("信用卡号不能为空哦");
		creditcard.focus();
		return false;
	}
	return true;
}
</script>
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
  	 <%  if(session.getAttribute("USER")==null)
  			response.sendRedirect("login.jsp");
  	  %>
<form name="form1" onsubmit="return check()" method="get" action="doOrder">


  		<p align="center">
			<font size="5" color="#ffffff" face="Microsoft YaHei UI">
			<strong>❤请输入以下信息❤</strong>
			</font>
		</p>
 <table width="300" border="0" align="center" class="STYLE1">
<tbody>
  <tr>
    <td width="150">用户名</td>
    <td><input type="text" name="UserName" id="UserName"></td>
  </tr>
  <tr>
    <td>邮编</td>
    <td><input type="text" name="ZipCode" id="ZipCode"></td>
  </tr>
  <tr>
    <td>电话</td>
    <td><input type="text" name="Phone" id="Phone"></td>
  </tr>
  <tr>
    <td>信用卡</td>
    <td><input type="text" name="CreditCard" id="CreditCard"></td>
  </tr>
  <tr>
    <td>
    		<input type="submit" name="submit1" value="提交">
    </td>
    <td><input type="reset" name="reset1" value="重置"></td>
  </tr>
  </tbody>
</table>
 
 </form>
 
 
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
