---
时间脚本
---
```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="../jquery-1.9.1/jquery.js" type="text/javascript"></script>
    <script src="jquery.timer.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            timerTest();
        })

        function timerTest() {
            $('body').everyTime('50s', function () {
                console.log("1");
            });
        }
    </script>
</head>
<body>
</body>
</html>
```
