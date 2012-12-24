<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#assign path="${request.getContextPath()}">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>logon</title>
		<script src="${path}/resource1/js/jquery-1.7.2.js" type="text/javascript"></script>
		<script src="${path}/resource1/jquery.artDialog.js?skin=blue"></script>
		<script src="${path}/resource1/iframeTools.js"></script>
		<script>
			
			$(document).ready(function(){
				
			});
						
			//弹出子页面
			function opendiv()
			{	 	
				var args="username="+$("#username").val()+"&nickname="+$("#nickname").val()+"";
			 	art.dialog.open(
					"${path}/art/sub_page.do?"+args+"",
					{
						lock : true,
						background : 'gray', //背景颜色
						opacity : 0.4,	//淡化背景颜色
						width : '500px',
						height : '350px',
						drag : true,
						title : "显示的子页面标题头",
						resize : true,
						fixed : true
					}
				);
			}
		</script>
</head>
	<body>
		${path}
		<br>
			登录页面 <br />
			<div style="border:1px solid red;padding:20px;margin: 10px;">

				主页面传给子页面上的数据
				<hr>
				<input name="username" id="username" value="zhang" />
				<br>
				<input name="nickname" id="nickname" value="张丰丰" />
				<br>

					<br>
						子页面返回给主页面的数据 <br>
							<input name="returndata" id="returndata" value="" />
							<br>
						   <a href="javascript:opendiv();">弹出子页面</a>
			</div>
						
			<div style="border:1px solid red;padding:20px;margin: 10px;">
				<a href="${path}/l/demo2.do">第二个示例--修该tips为手动关闭(就是改为我们可以通过代码控制关闭)</a>
			</div>			
						
		 	
			
	</body>
</html>
