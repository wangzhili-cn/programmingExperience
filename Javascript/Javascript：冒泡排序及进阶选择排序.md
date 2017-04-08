---
冒泡排序及进阶选择排序
---
- 冒泡排序  
```javascript
 <script type="text/javascript">
        window.onload = function () {
  //冒泡排序
            var dataValChangeArr = [5, 3, 1, 6, 8, 4, 2, 9, 0];
            var count = 0;
            var countVal = 0;
            var countValue = 0;
            var temp;
            var pos = 0; //比较值
            for (var i = 0; i < dataValChangeArr.length - 1; i++) {
                pos = i;
                for (var j = i + 1; j < dataValChangeArr.length; j++) {
                    if (dataValChangeArr[j] < dataValChangeArr[pos]) {
                        pos = j;
                        countVal++;
                    }
                    count++;
                } //第i个数与最小的数group[pos]交换
                temp = dataValChangeArr[i];
                dataValChangeArr[i] = dataValChangeArr[pos];
                dataValChangeArr[pos] = temp;
                count++;
            }
            console.log(dataValChangeArr.toString() + " 循环次数：" + count);
            console.log(countVal);
            //冒泡排序的原理是将，第一个数同所有数进行比较然后找出最小的值
            //同第一个数交换位置，直到所有数都比较一遍为止
            }
```  
- 选择排序  
```javascript
 <script type="text/javascript">
        window.onload = function () {
   //选择排序（建议从里往外写）
            var dataArr = [5, 3, 1, 6, 8, 4, 2, 9, 0];
            var cycles = 0; //循环次数
            var change = null;
            for (var i = dataArr.length - 1; i > 0; i--) {
                for (var j = 0; j < i; j++) {
                    if (dataArr[j] > dataArr[j + 1]) {
                        change = dataArr[j];
                        dataArr[j] = dataArr[j + 1];
                        dataArr[j + 1] = change;
                        cycles++;
                    }
                }
            }
            console.log(dataArr.toString() + " 循环次数：" + cycles);
            //选择排序第二种方式（建议从外往里写）
            var dataValArr = [5, 3, 1, 6, 8, 4, 2, 9, 0];
            var cyclesVal = 0; //循环次数
            for (var i = 0; i < dataValArr.length - 1; i++) {
                for (var j = i + 1; j < dataValArr.length; j++) {
                    if (dataValArr[i] > dataValArr[j]) {
                        var save = dataValArr[i];
                        dataValArr[i] = dataValArr[j];
                        dataValArr[j] = save;
                        cyclesVal++;
                    }
                }
            }
            console.log(dataValArr.toString() + " 循环次数：" + cyclesVal);
            //选择排序的原理就是：每次比较相邻两个数，并将较大的往后排，
            //直到所有的数都两两比较后，即可把所有顺序排出来。
            //其中外层循环次数为元素个数减一
            }
```
