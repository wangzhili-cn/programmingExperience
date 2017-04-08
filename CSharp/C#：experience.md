---
experience
---
- DLL文件即：应用程序拓展，又称可执行文件
> 编程思想，及做法。
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testaspnet_visualstudio_introduction_introduction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //冒泡排序 转换为逗号分隔字符串实例
        string str = BubbleSort();
        this.Label1.Text = str;

        //关键字 static (静态的)、 void (无返回值)、 string (字符串类型)。常常在Main()方法的声明中看到:static void Main(string[] args)
        //注意：你会发现，所有关键字都是由小写字母组成的，C#语言中，大小写是严格区分的。


        //注释分为：单行注释、多行注释、文档注释。
        //单行注释的符号是2条斜线（请注意斜线的方向），2条斜线右侧的内容就是注释，左侧的代码不会受影响。
        //多行注释以“/*”开始，以“*/”结束，之间的内容就是注释，可以包含多行。
        //文档注释写在类、方法或属性（以后会学到）的前面，它的符号是3条斜线“///”。
    }
    class student
    {
        //请参照console类中的说明后在来看下面的内容
        //C# 中的string.Format与@符号
        string str = string.Format(@"as\df");//@符号表示不区分转义符 也就是不认转义符
        //如果不使用@ 则写成
        string str2 = string.Format("as\\df");//进行转义

        //自增和自减在程序中的情况
        int i = 1;
        //console.write(i++);   输出结果是1，i会先赋值输出在自加
        //console.write(--i);   输出结果是0，i会先自减在输出

        public void test(int i)
        {
            if (i == 1)
            {
                //C# 中使用==双等号来实现等于
            }
        }
        /// <summary>
        /// bool值类型的实际运用
        /// </summary>
        public bool boolResert()
        {
            double Money = 20000.00; //存款
            bool hasHouse = true;    //是否有住房
            bool canMarry;           //是否能结婚
            canMarry = Money > 100000 && hasHouse;
            return canMarry;
        }

        //逻辑运算符  &&  ||  ！
    }
    /// <summary>
    /// C#版冒泡排序
    /// </summary>
    /// <returns></returns>
    public string BubbleSort()
    {
        //定义一组int类型数组
        int[] arrData = new int[] { 45, 56, 42, 1, 5, 3, 7 };
        //定义排序后重组的数组
        int[] dealData;
        //转换时的中间变量
        int temp;
        //冒泡排序从里面往外面写
        for (int i = arrData.Length; i > 0; i--)
        {
            for (int j = 0; j < i - 1; j++)
            {
                if (arrData[j] > arrData[j + 1])
                {
                    temp = arrData[j];
                    arrData[j] = arrData[j + 1];
                    arrData[j + 1] = temp;
                }
            }
        }
        string str = string.Join(",", arrData);
        return str;
    }

    /// <summary>
    /// default跳出循环实例
    /// </summary>
    public void defaultJump()
    {
        int n1 = 3, n2 = 6;//2个运算数
        char oper = '*';     //运算符，赋值为*号
        int str;        //得出值
        string console;
        switch (oper)
        {
            case '+': str = n1 + n2; break; //检查出是对应的字符则运算后赋值，跳出
            case '-': str = n1 - n2; break;
            case '*': str = n1 * n2; break;
            case '/': str = n1 / n2; break;
            default: console = "运算符错误"; break;
        }
    }

    //.net framework 新托管代码编程模型


    /// <summary>
    /// 三元运算符使用实例
    /// </summary>
    public void TernaryOperator()
    {
        string backup;   //备注
        int age = 17;    //年龄
        backup = age > 18 ? "成年人" : "未成年人";
    }


    /// <summary>
    /// for循环的流程机制
    /// </summary>
    public void forCycle()
    {
        //   1.变量的声明与赋值
        for (int i = 0; i < 10; i++) //4.进入下一次循环变量自加
        {//            2.判断循环条件
            //3.执行循环体
        }
    }

    //运行命令打开远程桌面连接 mstsc


    /// <summary>
    /// break跳出循环
    /// </summary>
    public void breakCycle()
    {
        for (int i = 0; i < 10; i++)
        {
            if (i == 3)  //当i==3的时候
                break;   //跳出循环
        }
        //对比第88行代码
        //break在suitch结构中的作用是跳出switch结构，break在其他循环结构中的作用是跳出循环
    }
    /// <summary>
    /// continue跳出循环
    /// </summary>
    public void continueCycle()
    {
        for (int i = 0; i < 10; i++)
        {
            if (i == 3)   //当i==3的时候
                continue; //跳出本次循环进入下一次循环
        }
        //合理的运用for循环中的break和continue可以赛选数据
        //循环条件是i<10，赛选条件是i==3，切勿将循环条件和赛选条件写到一起i<10&&i==3
        for (int i = 0; i < 10; i++)
        {
            if (i % 2 == 0)
            { }
        }
    }
    /// <summary>
    /// foreach循环运用实例
    /// </summary>
    public void foreachCycle()
    {
        int[] arrData = new[] { 1, 2, 3 };
        foreach (int item in arrData)
        {

        }
        //foreach(1.数据类型 2.迭代变量 in 3.数组名)
        //｛
        //  4.使用迭代变量
        //｝
        //1.数据类型必须和数组类型相同
        //2.变量名需要复合命名规则
        //3.in关键字
        //4.迭代变量只能读， 不能写。
    }
    //for循环和foreach循环对比
    //for循环打印需要知道长度和索引
    //foreach循环打印不需要知道长度索引的遍历，但foreach只能读不能写。
    //有一些比数组更高级的数据格式是没有索引的，这个时候就必须要拿foreach来进行遍历找数据了



    //（数组数据类型）C#中有一种数组，专门存储一组相同类型的数据
    //数据类型[] 数组名=new 数据类型[长度];
    public void arrayData()
    {
        //声明一个长度为5的数组
        int[] arrData = new int[5] { 1, 2, 3, 4, 5 };
        //数组的索引从0开始递增,那么Y中的五个元素的索引变成arrData[0]，arrData[1]，arrData[2]

        //最后注意一点，数组经过初始化以后，数组元素有默认的初始值：
        //double类型为0.0,
        //int类型的为0，
        //char类型的为'a'
        //bool类型的为false,
        //string类型的为null

        //数组声明的四种方法
        char[] a = new char[3];//长度为3的数组
        char[] b = new char[] { 'A', 'B', 'C' };//长度为3的数组并且初始化为 A B C
        char[] c = { 'A', 'B', 'C' };//同上一行语句等效
        char[] d = new char[3] { 'A', 'B', 'C' };//同上一行语句等效
    }
    /// <summary>
    /// 二维数组初步理解
    /// </summary>
    public void _2dArray()
    {
        int[,] _2dArr = new int[4, 2] { { 80, 50 }, { 60, 30 }, { 20, 45 }, { 60, 30 } };  //声明一个二维数组其中这个二维数组一维排列是四个，其中一维中的单项的元素是两个
        for (int i = 0; i < _2dArr.GetLongLength(0); i++)
        {
            //返回数组中一维数组的个数
        }
    }
    //这个二维数组中包含4*2=8总共包含八个数组元素，其中一维数组4个，每个一维数组中包含2个元素

    //初级编程思路（在数组中找出最大值）
    public int maxValue()
    {
        int[] arrData = new int[] { 52, 36, 78, 21, 36, 54, 12, 10 };
        int max = 0;
        for (int i = 0; i < arrData.Length; i++)
        {
            if (arrData[i] > max)
            {
                max = arrData[i];
            }
        }
        return max;
    }

    //需要解释2个关键字： const 关键字，表明PI是一个常量； double 关键字，表明PI的类型为“双精度浮点型”（一种精度很高的数字类型）。

    //自动类型转换：2种不同类型的数据运算，低精度类型会自动转换为较高精度的类型。
    //以3.5+8为例，显然数字8的精度较低（int），而3.5的精度较高（double），所以，8会自动转换为double型，即转换为3.5+8.0进行运算，结果为11.5。
    //
    //方法重写 初始化赋值

    //在类中默认的访问修饰符是 private私有的 相对 public公共的

    /// <summary>
    /// VS自带的获取本机的IP地址的方法
    /// </summary>
    /// <returns></returns>
    public string IPAddress()
    {
        string IPAddress = Request.UserHostAddress;
        return IPAddress;
    }

}
```
