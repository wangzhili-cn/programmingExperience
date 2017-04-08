---
GridView的基本使用
---
> C#前台
```C#
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gridview.aspx.cs" Inherits="testaspnet_gridview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function aaa() {
            alert("000");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvList" runat="server" AutoGenerateColumns="False" ForeColor="#333333">
            <Columns>
                <asp:BoundField DataField="ID" FooterText="编号" HeaderText="编号" />
                <asp:BoundField DataField="en_word" FooterText="英文" HeaderText="英文" />
                <asp:BoundField DataField="cn_word" FooterText="中文" HeaderText="中文" />
                <asp:BoundField DataField="Remard" FooterText="备注" HeaderText="备注" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
```
> C#后台  
```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class testaspnet_gridview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindData();
        }
    }
    private void bindData()
    {
        string sql = "select * from Word";
        DataTable dtGridView = new DataTable();
        dtGridView = DBHelper.GetDTBySql(sql);
        //将datatable转化为dataset
        DataSet dsGridView = new DataSet();
        dsGridView.Tables.Add(dtGridView);
        gvList.DataSource = dsGridView;
        gvList.DataBind();
    }
}
```
