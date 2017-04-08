---
VSS：VisualStudio自带的集成源代码管理工具
---
> 基本说明
```javascript
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        visual source safe的部分说明<br />
        微软推出的适用于中小型企业管理的代码版本控制系统<br />
        在visual studio中按F1键可以跳转到网页msdn（微软提供的标准使用参考手册）
    </div>
    </form>
</body>
</html>
```
> 深入说明  
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class research_aspnet_visual_source_safe_introduction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //C#代码源文件以.cs结尾的扩展名
    }
    //中英文翻译
    //    Log on to Visual SourceSafe Database
    //登录到Visual SourceSafe数据库

    //Provide your credentials to access this database
    //提供您的凭据访问这个数据库

    //Visual SourceSafe credentials may be different than your Windows network user name and password
    //Visual SourceSafe凭证可能比你的Windows网络不同的用户名和密码

    //Run analyze now
    //现在运行分析

    //Remind me later
    //提醒我以后

    //We recommend that you run the Analyze utility at this time
    //我们建议您运行分析实用程序

    //We have detected the following conditions that may lead to integrity issues in your SourceSafe database
    //我们发现下列条件,可能导致SourceSafe数据库完整性问题

    //The Analyze utility has not been run in the last 30 days
    //分析实用程序没有运行在过去的30天

    //An incomplete operation was detected for the following users
    //为以下用户发现了一个不完整的操作

    //Read Write
    //阅读写

    //Righte
    //权利

    //Logged In
    //登录

    //Project
    //项目

    //or reliability and performance reasons using the analyze,archive and restore utilities over network is not recommended.Do you want to continue?
    //可靠性和性能原因使用分析、归档和恢复实用工具在网络不推荐。你想要继续吗?

    //analyze
    //分析

    //Cancel the current database analysis/repair?
    //取消当前数据库分析/修理吗?

}
```
