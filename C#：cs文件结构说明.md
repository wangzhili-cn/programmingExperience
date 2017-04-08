---
cs文件结构说明
---
> 基本说明
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;


namespace FisherCommunity.App.Console //命名空间
{
    class Program   //类
    {
        static void Main(string[] args)//Main方法 程序入口
        {
            //Console.Write("程序");  命令，已分号结束。
            //快捷键 ctrl+F5 直接运行

            //C#中的显示，隐示转换
            //Console.WriteLine(9+2.2);   输出结果是11.2
            //当加号两边包含字符串的时候，是将两边的字符串拼接起来
            //两个整数相除，结果仅保留整数部分小数部分将会被（省略）舍去  console.write(5/10); 输出0

            //在编程中通常使用 % 取余 来验证一个数是否可以被2整除
            //int number=29;
            //Console.Write(number%2);  如果可以整除则输出0（没有余数是偶数） 如果不能就输出1（有余数是奇数）

        }
    }
}
```  
> 标识说明
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//关键字 using ，这个关键字的用途是导入命名空间。比如这句：using System.Text; 作用是导入System.Text命名空间中的类。

namespace FisherCommunity.App.Student   //命名空间 -命名空间是来组织与管理类的
{
    class VisualStudioIntroduction      //类
    {
        
//在Visual Studio的开发环境中，关键字被标识为蓝色，下图代码中，用红方框圈出的单词就是关键字。
    }
}
```
