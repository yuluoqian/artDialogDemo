<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#assign path="${request.getContextPath()}">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title></title>
		<script src="${path}/resource2/js/jquery-1.7.2.js" type="text/javascript"></script>
		<script src="${path}/resource2/js/common.js" type="text/javascript"></script>
		<script src="${path}/resource2/jquery.artDialog.js?skin=blue"></script>
		<script src="${path}/resource2/iframeTools.js"></script>
		
		<script>
	$(document).ready(function() {
		
	});
	
	//重写tips方法,注释掉1.5秒后自动关闭
	//---------这段代码直接是固定的----用于重写覆盖tips方法显示一会直接关闭的这种默认行为。
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
	//---------这段代码直接是固定的----用于重写覆盖tips方法显示一会直接关闭的这种默认行为。
	
	
	
	function test01()
	{
		
		artDialog.tips("服务器正在处理中，请稍等---(该tips会一直等待服务有了响应才关闭-默认行为可是直接就关闭了哦)");
		
		var rs=getJson("","${path}/demo2/warting.do");		
	 	//setTimeout("finish()",3000);//用于模拟服务器端处理完毕了
		if(rs==undefined)
		{
		   alert("服务器错误");
		}else if(rs['diverr']!=undefined){
		   //alert("提示给客户的错误");
		}else
		{
			//alert("服务器处理完成");	
			art.dialog.tips("处理完成!",2000);
			setTimeout("closeTips()",1000);
			//closeTips();
		}
	}
	
	//模拟服务器端已经处理完毕，返回数据
	function closeTips()
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
							art.dialog.tips("提示内容");一小会就会自动关闭，该示例演示如何重写这种行为。
							<br>具体实现，请查看代码注释
							<br> 
							<a href="javascript:test01();">点我查看效果</a>
					</div>
	</body>
</html>
