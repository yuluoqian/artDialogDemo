
 
  artDialog 是一个简单清新的弹出jquery插件
  
  
  
  
  
  http://aui.github.com/artDialog/			 【5.x版本 github地址】
  
  http://www.planeart.cn/demo/artDialog/ 【作者博客】
  					
  注意：5.x 版本不再支持iframe方式弹出层，只能在同一个页面上把要弹出层上的内容通过字符串参数的形式写好。
  
  4.x地址：http://code.google.com/p/artdialog/
  
  
 --------------------------------
 例子1：普通页面弹出一个artDialog。弹出的这个div上的数据从.do传递过来。(虽然art本身支持纯html+js传值，但我更喜欢用springMVC+Freemarker倒腾一遍)
 弹出的div接受到参数后，显示在相应的input里。这个时候点击提交。数据就提交到服务器端了。
 提交使用的是ajax同步提交，我觉得js方式更方便数据校验。
 
 例子2：art.dialog.tips("提示成功"); 这个方法的原始效果是1.5秒后自动关闭。
 
 但是我们要的效果有时候却是：页面提交，弹出提示【服务器端正在处理】，服务器端处理完毕，再提示【处理完成/失败】。然后关闭提示。
 例子2就是重载了art.dialog.tips方法。实现了这个效果。
 
 开发环境：myeclipse 8.5  jdk1.6
 
 
 