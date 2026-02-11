using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string first_name = Request.Form["first_name"]; //aspx:name
            string lastn = Request.Form["last_name"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string genders = Request.Form["gender"];
            string checkb = Request.Form["checkb"];
            string age = Request.Form["age"];



            /*
            //האם המשתמש קיים?
            //לפי אימייל
            //אם לא קיים
            //עושים ISERTR
            //ובמקום לכתוב נרשמת בהצלחה
            //Response.Redirect("login.aspx");
            //אם קיים
            //stResult="המשתמש קיים"
            */

            string sqlInsert =
                    "INSERT INTO tUsers " +
                    "VALUES (" +
                    "N'" + first_name + "'," +     // <--- N לפני המחרוזת
                    "N'" + lastn + "'," +
                     "N'" + email + "'," +
                      "N'" + password + "'," +
                      age + "," +
                       "N'" + genders + "'," +
                        "N'" + checkb + "'" +

                    ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            stResult = "נרשמת בהצלחה!";
        }
    }
}




