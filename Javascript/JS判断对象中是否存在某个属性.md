---
JS判断对象中是否存在某个属性
---  
```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>检查对象中是否存在某个属性</title>
    <script src="../../js/jquery/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            var data = { name: "wang", value: "0" };
            if ("name" in data) {
                alert("data中存在name属性")
                alert(data.name);
            }
        })
    </script>
</head>
<body>
</body>
</html>
```  
