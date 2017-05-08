---
css层模型布局
---  
```javascript
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>CSSLayer层模型布局案例</title>
    <style type="text/css">
        #left { width: 25%; height: 100px; position: fixed; left: 0; top: 0; bottom: 0; background-color: green; border: 1px solid black; }
        #right { width: 75%; height: 100px; position: fixed; left: 25%; top: 0; bottom: 0; background-color: White; border: 1px solid black; }
    </style>
</head>
<body>
    <div id="left">
        左侧导航栏
    </div>
    <div id="right">
        右侧内容 使用position:fixed;绝对定位进行页面布局
    </div>
</body>
</html>
```
