<%@ page language="java" pageEncoding="gb18030"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
    <title>��������</title>
	
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
		alert("�û�������Ϊ��Ŷ");
		username.focus();
		return false;
	}
	if(zipcode.value==""){
		alert("�ʱ಻��Ϊ��Ŷ");
		zipcode.focus();
		return false;
	}
	if(phone.value==""){
		alert("�绰����Ϊ��Ŷ");
		phone.focus();
		return false;
	}
	if(creditcard.value==""){
		alert("���ÿ��Ų���Ϊ��Ŷ");
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
			<strong>�7�8������������Ϣ�7�8</strong>
			</font>
		</p>
 <table width="300" border="0" align="center" class="STYLE1">
<tbody>
  <tr>
    <td width="150">�û���</td>
    <td><input type="text" name="UserName" id="UserName"></td>
  </tr>
  <tr>
    <td>�ʱ�</td>
    <td><input type="text" name="ZipCode" id="ZipCode"></td>
  </tr>
  <tr>
    <td>�绰</td>
    <td><input type="text" name="Phone" id="Phone"></td>
  </tr>
  <tr>
    <td>���ÿ�</td>
    <td><input type="text" name="CreditCard" id="CreditCard"></td>
  </tr>
  <tr>
    <td>
    		<input type="submit" name="submit1" value="�ύ">
    </td>
    <td><input type="reset" name="reset1" value="����"></td>
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
