---
Ajax基本调用
---
```javascript
 <script src="../../../js/jquery/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                type: "GET",
                url: "www.baidu.com",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                },
                error: function (jQxml) {
                    console.log(jQxml);
                }
            })
        })
    </script>
```
