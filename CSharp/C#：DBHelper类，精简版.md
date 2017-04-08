---
DBHelper类，精简版。
---
> 仅有查DataTable方法  
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// 数据库访问类
/// 类是C#程序的最小单元
/// </summary>
public class DBHelper
{
    //建立数据库连接字符串
    private static string connstring = "server=DS;database=test3;uid=sa;pwd=sa";
    //数据库命令对象
    private static SqlConnection conn = new SqlConnection(connstring);
    //数据库命令对象
    private static SqlCommand comm = null;
    //创建数据适配器
    private static SqlDataAdapter da = null;
    //查询方法
    public static DataTable GetDTBySql(string sql)
    {
        //如果查询的是DataTable则不用打开关闭，因为它是连续性查找数据的
        da = new SqlDataAdapter(sql, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    //增删改的方法
    public static int ExecuteNonQuery(string sql)
    {
        comm = new SqlCommand(sql, conn);
        conn.Open();
        int num = comm.ExecuteNonQuery();
        comm.Dispose();//资源回收da.Fill(ds, "Discussion");
        conn.Close();
        return num;
    }
}

```
