---
MD5加密类
---
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///md5 的摘要说明
/// </summary>
public class md5
{
    public md5()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public static string MD5(string str, int code)
    {
        if (code == 16)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower().Substring(8, 16);
        }
        else
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower();
        }
    }
}
```
