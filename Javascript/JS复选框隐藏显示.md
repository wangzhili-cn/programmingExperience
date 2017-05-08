---
JS复选框隐藏显示内容
---  
```javascript
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>三元复选框</title>
    <script type="text/javascript">
       
    </script>
</head>
<body>
    <p>
        使用三元运算符实现复选框勾选隐藏文本框</p>
    <input type="checkbox" id="checkbox" onclick="on_hide();" />
    <input type="text" id="hide" style="display: block;" />
    <script type="text/javascript">
        function on_hide() {
            document.getElementById("hide").style.display = (document.getElementById("checkbox").checked == true) ? "none" : "block";
        }
    </script>
</body>
</html>
```
