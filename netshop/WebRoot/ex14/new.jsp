<%@ page language="java" pageEncoding="gb18030"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>ע��</title>
    
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
<script type="text/javascript">
function outPut() 
 { 
 	var obj1=document.getElementsByName("UserName")[0].value; 
 	document.location.href="CheckUserName?username="+obj1; 
 } 
function check(){
	var username=document.getElementById("UserName");
	var password=document.getElementById("PassWord");
	var phone=document.getElementById("Phone");
	var address=document.getElementById("Address");

		var zipcode=document.getElementById("ZipCode");
	if(username.value==""){
		alert("�û�������Ϊ��Ŷ");
		username.focus();
		return false;
	}
	if(password.value==""){
		alert("���벻��Ϊ��Ŷ");
		password.focus();
		return false;
	}
	if(phone.value==""){
		alert("�绰����Ϊ��Ŷ");
		phone.focus();
		return false;
	}
	if(address.value==""){
		alert("��ַ����Ϊ��Ŷ");
		address.focus();
		return false;
	}

		if(zipcode.value==""){
		alert("�ʱ಻��Ϊ��Ŷ");
		zipcode.focus();
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
		<br>
		
<form name="form1" method="get" action="InsertNewUser" onsubmit="return check()">		
 <table width="400" border="0" align="center" class="STYLE1">
<tbody>
  <tr>
    <td width="100">�û���</td>
    <% String name=request.getParameter("username");
    if(name!=null)
    	name = new String(name.getBytes("ISO-8859-1"),"gbk");
    else name="";
    
     %>
    <td><input type="text" name="UserName" id="UserName" value="<%=name %>"> &nbsp;&nbsp;
    <a  class="STYLE1" href="javascript:"  onClick="outPut();">�������</a></td>
  </tr>
  <tr>
    <td>����</td>
    <td><input type="text" name="PassWord" id="PassWord"></td>
  </tr>
  <tr>
    <td>�绰</td>
    <td><input type="text" name="Phone" id="Phone"></td>
  </tr>
  <tr>
    <td>��ַ</td>
    <td><input type="text" name="Address" id="Address"></td>
  </tr>
  <tr>
  <tr>
    <td>��������</td>
    <td><input type="text" name="ZipCode" id="ZipCode"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="submit1" value="�ύ">
    <input type="reset" name="reset1" value="����"></td>
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
