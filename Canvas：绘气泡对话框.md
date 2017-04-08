---
绘制气泡对话框
---
```javascript
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript">
        function draw() {
            var canvas = document.getElementById('canvas');
            if (canvas.getContext) {
                var ctx = canvas.getContext('2d');

                // 贝尔赛曲线
                ctx.beginPath();
                ctx.moveTo(75, 25);
                ctx.quadraticCurveTo(25, 25, 25, 62.5);
                ctx.quadraticCurveTo(25, 100, 50, 100);
                ctx.quadraticCurveTo(50, 120, 30, 125);
                ctx.quadraticCurveTo(60, 120, 65, 100);
                ctx.quadraticCurveTo(125, 100, 125, 62.5);
                ctx.quadraticCurveTo(125, 25, 75, 25);
                ctx.stroke();
            }
        }
    </script>
</head>
<body onload="draw();">
    <canvas id="canvas" width="150" height="150"></canvas>
</body>
</html>

```
