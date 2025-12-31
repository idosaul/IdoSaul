using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AspNet : System.Web.UI.Page
{
    public string str;
    public string str2;
    public string str3;
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "";
        str2 = "";
        str3 = "<table border = '1'>";
        for (int i = 1; i <= 10; i++)
        {
            str3 += "<tr>";
            for (int j = 1; j <= 10; j++)
            {
                str3 += "<td>";
                str3 += i * j;
                str3 += "</td>";

            }
            str3 += "</tr>";
        }
        str3 += "</table>";

        for (int i = 0; i <= 10; i++)
        {
            Response.Write("i:" + i);

        }
    }
}