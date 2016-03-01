<%@ page language="java" pageEncoding="gb18030"%>


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
<script type="text/javascript">
<!--设置首页或收藏配置脚本(兼容IE和Firefox)-->

//加入收藏函数
	function addFavorite(){
		var aUrls=document.URL.split("/");
		var vDomainName="http://"+aUrls[2]+"/";
		var description=document.title;
		try{//IE
			window.external.AddFavorite(vDomainName,description);
		}catch(e){//Firefox
		window.sidebar.addPanel(description,vDomainName,"");
		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
<title>无标题文档</title>
</head>


<body class="STYLE1">
<div align="center"> 
<br><br><br><br><br><br>Copyright&copy;2010-2020 ❤仙蒂瑞拉网上商城❤<br> 
    <a class="STYLE1" href="mailto:416053245@qq.com">联系我们</a> 地址：江苏省南通市啬园路9号 邮编226019 仙蒂瑞拉技术中心设计制作维护 <a class="STYLE1" href="javascript:addFavorite();">加入收藏</a>
	<br><br><br><br>
</div>
</body>
</html>

