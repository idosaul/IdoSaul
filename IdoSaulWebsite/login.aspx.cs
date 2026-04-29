using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string email = Request.Form["email"]; //form:name
            string password = Request.Form["password"];

            if (email == "cool@email.com" && password == "adminpower")
            {
                Response.Redirect("admin.aspx");
            }
            else
            {

                // בדיקת משתמש רגיל
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE gmail = N'" + email + "' " +
                    "AND password = N'" + password + "'";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

                if (dt.Rows.Count == 0)
                    stResult = "אימייל או סיסמה שגויים";
                else
                    Response.Redirect("home.aspx");
            }
        }
    }
}
