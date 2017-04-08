---
query脚本实现页面传值
---  
> 传递值
```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>传递值</title>
    <script src="../../jquery/jquery.js" type="text/javascript"></script>
    <script src="../jquery.query.js" type="text/javascript"></script>
    <script type="text/javascript">
        //query脚本实现传值
        //$.query.get("id");接收
        $(function () {
            //            var id = $.query.get("id");
            //            alert("接收ID:" + id);
        })
        function pass() {
            //            var val = "&";
            //window.location.href = "receive_value_page.htm?val=" + val.replace(/&/g, "&");
            window.location.href = "receive_value_page.htm?val=" + "123";
        }
    </script>
</head>
<body>
    <a href="javascript:pass()">传递</a>
</body>
</html> 
```
> 接收值
```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>接收值</title>
    <script src="../../jquery/jquery.js" type="text/javascript"></script>
    <script src="../jquery.query.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            var val = $.query.get("val");
            $("span").text(val);
            alert("接收ID：" + val);
        })
    </script>
</head>
<body>
    <a href="receive_value_page.htm?id=2">传递</a> <span></span>
</body>
</html> 
```
