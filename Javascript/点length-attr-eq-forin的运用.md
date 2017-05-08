```javascript
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>点length-attr-eq-forin的运用</title>
    <script src="../js/jquery/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {

        });
        function a() {
            var count = $(".father").length;
            //            alert(count);
            //取得要匹配的值
            var arrar = new Array();
            for (i = 0; i < count; i++) {
                arrar[i] = $(".father:eq(" + i + ")").attr("value");
            }
            // alert(arrar);
            var count2 = $(".children").length;
            //            alert(count2);
            //取得要与之匹配的值
            var arrChildren = new Array();
            for (i = 0; i < count2; i++) {
                arrChildren[i] = $(".children:eq(" + i + ")").attr("value");
            }
            //            alert(arrChildren); 
            //进行匹配
            for (var i = 0; i < count2; i++) {
                var num = arrChildren[i];
                //                alert(num);
                for (num in arrar) {
                    //                    alert("0");
                    $(".children:eq(" + i + ")").attr("disabled", true);
                }
            }
        }
    </script>
</head>
<body>
    <span>1.</span>
    <input class="father" type="checkbox" value="1" />
    <input class="father" type="checkbox" value="2" />
    <span>2.</span>
    <input class="children" type="checkbox" value="1" />
    <input class="children" type="checkbox" value="2" />
    <input class="children" type="checkbox" value="3" />
    <input class="children" type="checkbox" value="4" />
    <input id="Button1" type="button" value="button" onclick="a()" />
    <ol>
        <li>拿到类相同元素的多少长度，然后通过循环eq拿到这个类中对应个数元素的value存到数组中</li>
        <li>用相同的方法拿到需要匹配并改变的元素存放到数组中，然后通过for循环和for in循环逐个</li>
        <li>对 比并通过attr添加对应元素</li>
    </ol>
    <h3>
        这其中运用到的JQuery方法</h3>
    <p>
        function a() { var count = $(".father").length; // alert(count); //取得要匹配的值 var arrar
        = new Array(); for (i = 0; i < count; i++) { arrar[i] = $(".father:eq(" + i + ")").attr("value");
        } alert(arrar); var count2 = $(".children").length; // alert(count2); //取得要与之匹配的值
        var arrChildren = new Array(); for (i = 0; i < count2; i++) { arrChildren[i] = $(".children:eq("
        + i + ")").attr("value"); } // alert(arrChildren); //进行匹配 for (var i = 0; i < count2;
        i++) { var num = arrChildren[i]; // alert(num); for (num in arrar) { // alert("0");
        $(".children:eq(" + i + ")").attr("disabled", true); } } }</p>
    <ol>
        <li>.length获取该类元素的总个数长度</li>
        <li>arrar[i] = $(".father:eq(" + i + ")").attr("value");循环拿到改类每个元素attr拿到这个中的value</li>
        <li>for (num in arrar)运用for in循环将num（此为具体值）in(在)arrar对象中是否存在</li>
        <li>$(".children:eq(" + i + ")").attr("disabled", true); 再将children中eq（匹配指定元素索引的值）获取第几个元素attr属性改变</li>
    </ol>
</body>
</html>
```
