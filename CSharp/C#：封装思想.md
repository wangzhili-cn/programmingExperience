---
封装思想，以及如何写C#代码
---
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class testaspnet_encapsulation_instructions : System.Web.UI.Page
{
    /// <summary>
    /// 封装说明与理解
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //1.理解对象和类

    //对象         类
    //小明         名字
    //男           性别       静态特征 字段-属性
    //
    //喜欢足球     爱好       动态行为 方法

    class Child
    {
        //2.public和private 访问修饰符

        public string _name;
        public string _sex; //性别     public是共有字段 可以在类外被修饰  （不安全）
        public int _age;             //private是私有字段，无法在类外被访问 （无法使用）
        public int _height;
    }

    static void Main()
    {
        Child laoK = new Child();
        laoK._sex = "男";
        laoK._age = 17;
    }
    //3.封装的实质

    //封装的实质就是隐藏对象的信息
    //留出访问的接口

    //4.封装的使用场合

    //在C#程序中，通常使用属性对字段进行封装
    class People
    {
        //5.封装的具体实例

        private string _sex;       //隐藏字段
        public string Sex          //公开属性
        {
            get { return _sex; }   //读
            set { _sex = value; }  //写
        }
        //6.只读属性的使用

        public string SEX          //公开属性
        {
            get { return _sex; }   //只能读取，不能写入（不能修改）。
        }

        //7.读写访问器的使用

        //访问修饰符 public公共的，private私有的（默认）
        private string _name; //姓名

        public string Name
        {
            get { return _name; } //读访问器
            set { _name = value; }//写访问器
        }
        //8.封装快捷键

        //封装快捷键ctrl+R+E

        //年龄
        private int _age;

        //9.读写访问器实例
        /// <summary>
        /// 写访问器的实例
        /// </summary>
        public int Age
        {
            get { return _age; }
            set
            {
                if (value >= 3 && value <= 7)
                    _age = value;
            }
        }
        //10.方法的声明与具体实现

        /// <summary>
        /// 方法的声明
        /// </summary>
        public void PlayBall()
        {
            //方法体，方法的实现。
            Console.Write("动作行为，即方法！");
        }
        //11.XML注释

        //13.形参通常没有值，需要有人传递一个值给他。
        /// <summary>
        /// 方法的声明下的注释是XML结构的
        /// </summary>
        /// <param name="suger">糖的类型（形参）</param>
        public void EatSuger(string suger)
        {
            if (suger == "榴莲糖")
            {
                Console.WriteLine("哎呀！我最怕榴莲的味道了！");
            }
            else
            {
                Console.WriteLine("好耶，是我爱吃的糖！");
            }
        }
    }
    //12.实参，拥有实际值的变量或常量

    /// <summary>
    /// 声明和实例化对象并完成改对象在类中的行为即方法
    /// </summary>
    public void statement()
    {
        People laoK = new People(); //声明和实例化对象
        laoK.EatSuger("榴莲糖");    //实参 （对象实际用到的参数实参）
    }
    //最后说两点
    //通过只读方法赋值外，一般用构造方法为类初始化赋值
    //void 返回值类型

    //方法重写即方法覆盖
    //子类可以继承父类，不需要在编写相同的方法，但有的时候子类并不想完全继承父类而是做出一定的修改，这就是方法重写，又称为方法覆盖。
}
```
