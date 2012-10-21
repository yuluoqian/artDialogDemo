<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#assign path="${request.getContextPath()}">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>logon</title>
		<script src="${path}/js/jquery-1.7.2.js" type="text/javascript"></script>
		<script src="${path}/js/common.js" type="text/javascript"></script>
		<script src="${path}/art_resource/jquery.artDialog.js?skin=blue"></script>
		<script src="${path}/art_resource/iframeTools.js"></script>
		
		<script>
	$(document).ready(function() {
		//alert("我是弹出的子页面");
	});
	
	
	function submit_m()
	{
		//取得页面上的参数：如果参数太多，可以用 var args=getPostDatas($(document));[common.js]
		var username=$("input[name='username']").val();
		var nickname=$("input[name='nickname']").val();
		var age=$("input[name='age']").val();
		var args="username="+username+"&nickname="+nickname+"&age="+age+"";
		
		var result=getJson(args,"${path}/art/post_test.do");
		//alert(result['result']);
		
		//设置回父窗口，然后关闭当前页面
		var origin=artDialog.open.origin;
		var returnElement = origin.document.getElementById('returndata');
		returnElement.value=result['result'];
		art.dialog.tips("数据取得成功(三秒后关闭)");
		
		//暂停一会再关闭
		window.setTimeout("closediv()",3000);
		
	}
	
	function closediv()
	{
			art.dialog.close();
	}
	
</script>

<style type="text/css">
div {
	margin: 0px;
	padding: 20px;
	border: 1px solid red;
}
</style>
	</head>
	<body>
		${path}
		<p>
			如果需要更改art的背景颜色-可以更改blue.css中的line39 .aui_inner
		</p>
		<div>
			from 服务器
			<br>
				username<input name="username" value="${username}">
					<br>
						nickname<input name="nickname" value="${nickname}">
							<br>
		</div>
		<br>
			<div>
				<input name="age" value="22"  />
				<br>
					<!-- 当然这里可以使用submit进行提交表单，但是不太好处理返回，因为会刷新页面 -->
					<input type="button" name="提交" onclick="javascript:submit_m();" value="提交" />
			</div>
	</body>
</html>
