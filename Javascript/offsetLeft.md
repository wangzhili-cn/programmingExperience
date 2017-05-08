```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        body { padding: 0px; margin: 0px; }
        #div_test { width: 200px; height: 200px; border: 1px solid black; }
    </style>
    <script type="text/javascript">
        window.onload = function () {
            var divTest = document.getElementById('div_test');
            var divLeftWidth = divTest.offsetLeft;
            alert(divLeftWidth);
            divTest.onmouseover = function () {
                stratMove();
            }
        }
        function stratMove() {
            alert("00");
        }
    </script>
</head>
<body>
    <div id="div_test">
    </div>
</body>
</html>
```
