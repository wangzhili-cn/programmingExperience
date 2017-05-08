---
confirm判断执行
---  
```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <input id="confirm" type="button" value="button" onclick="ck()" />
    <script type="text/javascript">
        function ck() {
            if (confirm("确认点击吗?")) {
                alert("你点击了这个按钮！");
            }
        }
    </script>
</body>
</html>
```
