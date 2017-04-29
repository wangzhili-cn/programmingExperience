---
html高度占满整个浏览器，除去js方法的解决方法
---
```HTML
<!--<!DOCTYPE html>-->
<html>
<head>
	<title>test</title>
	<link rel="stylesheet" type="text/css" href="main.css" media="only screen and (max-width:480px)"/>
</head>
<body style="padding: 0;margin: 0;height: 100%;">
<!--<div style="width:500px;height:500px;margin:0px auto; border: 1px solid black">
<div style="width: 100px;height:100%; border:1px solid blue;" ></div>
</div>-->
<div style="width: 100px;height:100%;margin:0px auto;background: blue" ></div>
</body>
</html>
```
可以看出如上代码将!DOCTYPE html的头声明注释掉，body设置100%，即可达到高度占满整个屏幕。  
而中间注释的代码，表示如果外面有父盒子，则使用%百分比是针对外面的大盒子来说明的。
