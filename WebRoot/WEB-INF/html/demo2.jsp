<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#assign path="${request.getContextPath()}">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title></title>
		<script src="${path}/js/jquery-1.7.2.js" type="text/javascript"></script>
		<script src="${path}/js/common.js" type="text/javascript"></script>
		<script src="${path}/resource2/jquery.artDialog.js?skin=blue"></script>
		<script src="${path}/resource2/iframeTools.js"></script>
		
		<script>
	$(document).ready(function() {
		
	});
	
	//重写tips方法,注释掉1.5秒后自动关闭
	artDialog.tips = function (content, time) {
    return artDialog({
        id: 'Tips',
        title: false,
        cancel: false,
        fixed: true,
        lock: false
	    })
	    .content('<div style="padding: 0 1em;">' + content + '</div>')
	    //.time(time || 1.5)  //注释掉定时关闭事件
		;
	};
	
	function test01()
	{
		artDialog.tips("1.5秒后关闭")
	 	setTimeout("finish()",3000);
	}
	
	//模拟服务器端已经处理完毕，返回数据
	function finish()
	{	
		//遍历所有art.dialog实例，全部关闭。[art.dialog.tips属于其中一种]
		var list = art.dialog.list;
		for (var i in list) {
		    list[i].close();
		};
	}
	
		
</script>

<style type="text/css">
.div {
	margin: 0px;
	padding: 20px;
	border: 1px solid red;
}
</style>
	</head>
	<body>
					<div  class="div">
							<a href="javascript:test01();">test01</a>
					</div>		 		
	</body>
	
</html>
