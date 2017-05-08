```javascript
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title></title>
    <script type="text/javascript">
        /*
        删除指定位置的元素
        */
        Array.prototype.remove = function (index) {
            if (isNaN(index) || index > this.length) {
                return false;
            }
            for (var i = 0, n = 0; i < this.length; i++) {
                if (this[i] != this[index]) {
                    this[n++] = this[i];
                }
            }
            this.length -= 1
        }
        var a = ['1', '2', '3', '4', '5'];

        alert("elements: " + a + "nLength: " + a.length);
        //        for (var i = a.length - 1; i >= 3; i--) {
        //            a.remove(i);
        //        }
        a.remove(0);
        //删除下标为0的元素
        alert("elements: " + a + "nLength: " + a.length);
    </script>
</head>
<body>
</body>
</html>
```
