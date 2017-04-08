---
C#自带日历框以及递归基本算法
---
> 前台日历框
```javascript
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recursive.aspx.cs" Inherits="testaspnet_recursive" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
        VS自带的日期框
        <asp:Calendar ID="Calendar1" runat="server" TargetControlID="txtPublishDate" Format="yyyy-MM-dd"
            runat="server" Enabled="True"></asp:Calendar>
    </div>
    </form>
</body>
</html>
```
> 后台递归算法
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class testaspnet_recursive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        digui();
        test();
        console();
    }
    /// <summary>
    /// 递归求5的阶层
    /// </summary>
    public void digui()
    {
        int n = 5;
        int j;
        j = jieceng(n);
        this.Label1.Text = j.ToString();
    }
    public int jieceng(int n)
    {
        int result;
        if (n < 0)
        {
            return 0;
        }
        else if (n == 0 || n == 1)
        {
            result = 1;
        }
        else
        {
            result = jieceng(n - 1) * n;
        }
        return result;
    }
    public void test()
    {
        string b = "0";
        //ConfigurationHelper.GetBoolSetting(b);
        this.Label2.Text = b;
    }
    public void console()
    {
        Console.Write("test");
    }

}
```
