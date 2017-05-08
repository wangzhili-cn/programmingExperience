```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript">
        window.onload = function () {
            a();
            b();
        }
        var timer = null;
        function a() {
            //            setInterval(function () {
            //                alert("a");
            //            }, 1000);
            for (var i = 0; i < 100000; i++) {
                var a = Math.random();
                console.log(a);
            }
            alert("a");
        }

        function b() {
            alert("b");
        }
    </script>
</head>
<body>
</body>
</html>
```
