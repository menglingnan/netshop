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
<!--������ҳ���ղ����ýű�(����IE��Firefox)-->

//�����ղغ���
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
<title>�ޱ����ĵ�</title>
</head>


<body class="STYLE1">
<div align="center"> 
<br><br><br><br><br><br>Copyright&copy;2010-2020 �7�8�ɵ����������̳ǁ7�8<br> 
    <a class="STYLE1" href="mailto:416053245@qq.com">��ϵ����</a> ��ַ������ʡ��ͨ����԰·9�� �ʱ�226019 �ɵ��������������������ά�� <a class="STYLE1" href="javascript:addFavorite();">�����ղ�</a>
	<br><br><br><br>
</div>
</body>
</html>

