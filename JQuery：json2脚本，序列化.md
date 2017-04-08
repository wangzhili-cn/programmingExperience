---
js中的序列化与反序列化
---
```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>json2脚本序列化与反序列化</title>
    <script src="../jquery/jquery.js" type="text/javascript"></script>
    <script src="json2.js" type="text/javascript"></script>
</head>
<body>
    <div>
        <h3>
            json2.js提供了json的序列化和反序列化方法，可以将一个json对象转换成json字符串，也可以将一个json字符串转换成一个json对象。</h3>
        <p>
            在页面中添加json2.js的引用。<br />
            序列化方法<br />
            var jsonObj = { id: '01', name: 'Tom' };<br />
            JSON.stringify(jsonObj);<br />
            反序列化方法<br />
            var jsonString = "{ id: '01', name: 'Tom' }";<br />
            JSON.parse(jsonString);
        </p>
        <div id="btn" style="width: 100px; height: 50px; background-color: Gray;">
            <a href="javascript:serialization();">序列化</a><br />
            <a href="javascript:deserialization();">反序列化</a>
        </div>
    </div>
    <script type="text/javascript">
        var jsonObj = { id: '01', name: 'Tom' };
        var jsonString = "{ id: '01', name: 'Tom' }";
        $("#btn").click(function () {
            serialization();
        });
        /* 
        序列化
        */
        function serialization() {
            alert(JSON.stringify(jsonObj));
        }
        /*
        反序列化
        */
        function deserialization() {
            console.log(JSON.parse(jsonString));
        }
    </script>
</body>
</html>
```
