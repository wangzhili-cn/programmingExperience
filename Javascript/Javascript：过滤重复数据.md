---
过滤重复数据JS
---
```javascript
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>过滤重复数据</title>
    <script src="../../js/jquery/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        window.onload = function () {
            var arr = [1, 1, 2, 2, 3, 3];
            var result = [], isRepeated;
            for (var i = 0, len = arr.length; i < len; i++) {
                isRepeated = false;
                for (var j = 0; j < result.length; j++) {
                    if (arr[i] == result[j]) {
                        isRepeated = true;
                        break;
                    }
                }
                if (!isRepeated) {
                    result.push(arr[i]);
                }
            }
            console.log(result.toString());
        }
    </script>
</head>
<body>
</body>
</html>
```
