```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>时间暂停</title>
    <script type="text/javascript">
        var int = self.setInterval("clock()", 50)
        function clock() {
            var t = new Date();
            document.getElementById("clock").value = t;
        }
        //setInterval实现隔多少时间执行一段代码
        //clearInterval暂停事件
    </script>
</head>
<body>
    <input type="text" id="clock" size="35" />
    <button onclick="int=window.clearInterval(int)">
        Stop interval</button>
</body>
</html>
```
