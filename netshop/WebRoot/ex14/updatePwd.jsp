<%@ page language="java" pageEncoding="gb18030"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�޸�����</title>
    
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
function check(){
	var password1=document.getElementById("PassWord1");
	var password2=document.getElementById("PassWord2");
	
	if(password1.value==""){
		alert("���벻��Ϊ��Ŷ");
		password1.focus();
		return false;
	}

	if(password2.value==""){
		alert("��ȷ���������");
		password2.focus();
		return false;
	}
	
	if(password2.value!=password1.value){
		alert("�������벻һ�£�����������");
		password2.focus();
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
		
<form name="form1" method="get" action="UpdatePassword" onsubmit="return check()">		
 <table width="266" border="0" align="center" class="STYLE1" height="120">
<tbody>
	<tr>
    <td width="75">�û���</td>
   
    <td width="181"><p><%=session.getAttribute("Uname")%></p></td>
  </tr><tr>
  <tr>
    <td width="75">�µ�����</td>
    <td width="181"><input type="password" name="PassWord1" id="PassWord1"></td>
  </tr><tr>
    <td>�ٴ�����</td>
    <td><input type="password" name="PassWord2" id="PassWord2"></td>
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
