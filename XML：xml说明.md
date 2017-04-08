---
XML说明
---
```XML
<?xml version="1.0" encoding="utf-8" ?>
<manager>
  <!--1.XML可以用来描述数据，重点是“数据是什么”
  HTML则是用来显示数据，重点是“如何显示数据”
  
  2.对XML最好的形容可能就是：XML是一种跨平台，与软硬件无关的，处理信息的工具。
  
  3.XML声明部分没有结束标记，XML声明并不是XML的一部分，所以没有结束标记。
  
  4.书信的信封说明并不是书信内容的一部分，但是对于书信的传递却包含重要意义。
  类型与数据豪不相关，但是对于操作这个数据的软件来说却相当重要-->
  <file type="gif">computer.gif</file>
  <!--4.5说明：元数据（与数据有关的数据）应该是以属性的方式存储的，而数据本身是已元素的方式存储的。-->
  <!--属性值一般方法双引号之间，但也有下面这种放入双引号的情况-->

  <person sex="female"> </person>
  <gangster name='George "Shotgun" Ziegler'></gangster>

  <!--5.XML浏览器（NetScape，Explorer）-->
  <!--InternetExplorer 5.0 也支持XML行为（XML Behaviors）：
  1.行为是Microsoft独有的技术
  2.行为可以从XML脚本中分离程序脚本
  3.行为可以见数据存储到客户端的硬盘上。-->

  <!--XSL - 可扩展样式单语言（Extensible Style Sheet Language）
  XSL由三部分组成: XML文档转换（XML Document Transformation ，又叫XSLT）,模式匹配语法（ a pattern matching syntax ，又叫XPath), 格式话对象（ a formatting object interpretation，XSL FO）。-->
</manager>
```
