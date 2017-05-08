```javascript
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title></title>
    <script src="../images/jquery.js" type="text/javascript"></script>
    <style type="text/css">
        #a
        {
            width: 500px;
            height: 500px;
            margin: 0px auto;
            border: 1px solid black;
        }
        #b
        {
            width: 200px;
            height: 200px;
            margin: 0px auto;
            border: 1px solid black;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#a").click(function () {
                alert("a")
            })
            $("#b").click(function () {
                alert("b");
                $("#Hidden1").val("1");
                //e.stopPropagation();
            })
            $("#d").click(function () {
                alert("d");
            })
        })
        function ceshi() {
            alert("ceshi");
        }
    </script>
</head>
<body>
    <input id="hfC" type="hidden" value="0" />
    <input id="Hidden1" type="hidden" value="0" />
    <input id="Hidden2" type="hidden" value="0" />
    <div id="a">
        <div id="b">
        </div>
    </div>
    <a href="javascript:ceshi()" id="d">dddd</a>
</body>
</html>
```
