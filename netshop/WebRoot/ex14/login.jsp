<%@ page language="java" pageEncoding="gb18030"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
<title>Cinderella's House</title>
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
	var txtn=document.getElementById("txtName");
	var txtp=document.getElementById("txtPwd");
	if(txtn.value==""){
		alert("用户名不能为空哦");
		txtn.focus();
		return false;
	}
	if(txtp.value==""){
		alert("密码不能为空哦");
		txtp.focus();
		return false;
	}
	return true;
}
</script>
</head>
 
  <body>
  
   <body bgcolor="#FFCCCC">
		<table width="950" border="0" align="center" cellspacing="0" cellpadding="0"  bgcolor="#ee6686">
		<tr><td><br>
			<%@include file='top.jsp'%>
		</td></tr>
		</table>
		<table width="950" border="0" align="center" cellspacing="0" cellpadding="0"  bgcolor="#ee6686">
		<tr>
		<td>
		
		
<% String name=(String)session.getAttribute("Uname");
    if(name==null)name="";
    
     %>		
 <form name="form1" onSubmit="return check()" method="get" action="LoginServlet">
 <div align="center"><font size="5" face="Microsoft YaHei UI"><strong><font color="#ffffff">
 	<label>❤登 录❤</label>
 	</font></strong></font>
  </div>
  <br>
    <table width="289" border="0" align="center" class="STYLE1" height="130">
  		<tr>
    		<td width="100" align="center">
    			 用户名
    		<td width="180">       
      				<input type="text" name="txtName" id="txtName" value="<%=name %>">    
     		</td>
  		</tr>
  		<tr>
    		<td  width="100" align="center">
    			密&nbsp;&nbsp;&nbsp;码
    		</td>
    		<td>
    			<input type="password" name="txtPwd" id="txtPwd">
    		</td>
  		</tr>
  		<tr>
    		<td align="center">
    			<input type="submit" name="Submit" value="提交" />
    		</td>
    		<td class="STYLE1">
    			<input type="reset" name="reset1" value="重置" />&nbsp;&nbsp;<a class="STYLE1" href="forget.jsp">忘记密码</a>
    		</td>
  		</tr>
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

