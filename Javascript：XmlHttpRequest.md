---
Just javascript complete xml file call  
---
```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript">
        var xmlhttp;
        window.onload = function () {
            xmlhttp = null;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            } else if (window.ActiveXObject) {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            } else {
                xmlhttp = null;
            }
            if (xmlhttp != null) {
                var url = "../CD.xml"
                xmlhttp.onreadystatechange = state_change;
                xmlhttp.open("GET", url, true);
                xmlhttp.send(null);
                //有不清楚属性的地方可以打印出来看下
                //console.log(xmlhttp);
            }
        }
        function state_change() {
            var doc = document.getElementById("txt");
            doc.innerHTML = xmlhttp.responseText;
        }
    </script>
</head>
<body>
    <p id="txt">
    </p>
</body>
</html>
```
