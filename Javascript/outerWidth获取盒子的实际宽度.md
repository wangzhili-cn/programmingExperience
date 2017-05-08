```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="../../js/jquery/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            var wid = $("#testDiv").outerWidth(true);
            alert(wid);
        })
    </script>
</head>
<body>
    <div id="testDiv" style="width: 200px; height: 200px; border: 1px solid black; margin:5px; border:5px;">
    </div>
</body>
</html>
```
