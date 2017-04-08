---
C#随机数，并求除最大数外的其他数的和
---
```javascript
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class research_aspnet_encapsulation_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static decimal getValue()
    {
        List<decimal> deList = new List<decimal>();
        //随机生成五个decimel数并添加到集合deList中
        for (int i = 0; i < 5; i++)
        {
            //随机生成五个0-9随机数
            Random ra = new Random();
            decimal num = ra.Next();
            deList.Add(num);
        }
        //找出这个集合中最大的数,并求和list集合
        decimal deMax = 0;
        decimal sum = 0;
        for (int i = 0; i < deList.Count; i++)
        {
            if (deList[i] > deMax)
            {
                deMax = deList[i];
            }
            sum += deList[i];
        }
        //处最大值外的其他值和
        decimal num2 = sum - deMax;
        //最终比较获得的值
        if (num2 > deMax)
        {
            return num2;
        }
        else
        {
            return deMax;
        }
    }
}
```
