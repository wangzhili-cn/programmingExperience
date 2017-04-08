---
随机去重数组
---  
```  
  <script type="text/javascript">
  window.onload = function () {
            //随机生成九个不重复的数，组成数组。
            var randarr = new Array();
            for (var i = 0; i < 9; i++) {
                var count = 0;
                //定义一个计数器，并清空 
                var num = Math.floor(Math.random() * 10);
                //随机生成0-9之间的整数（包括0和9），因为用了floor向下取整
                if (num > 0) {
                    //过滤掉随机数为0的情况 
                    for (var n = 0; n < randarr.length; n++) {
                        //遍历数组中已有数字
                        if (num != randarr[n]) {
                            //依次判断新的随机数是否已在数组中，如果不在，计数器+1
                            count = count + 1;
                            //当新随机数和数组中已有值不相等时，计数器+1
                        }
                    }
                    if (count == randarr.length) {
                        //当计数器最终的值和当前数组length的值相等时 
                        randarr[i] = num;
                        //把生成的新随机数放进数组
                    } else {
                        i = i - 1;
                        //只要有一个不相等，说明数组中已有，那就不让它占用i的值 
                    }
                } else {
                    i = i - 1;
                    //如果随机数为0的话，就不让它占用i的值
                }
            }
            console.log(randarr.sort(sortnum))
            //调用数组数字排序函数打印当前数组 
            //数字排序函数，从小到大是a-b，从大到小是b-a，字母只用sort() 
            function sortnum(a, b) { return a - b; }
    }
</script>
```
