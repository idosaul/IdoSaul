<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: right; width: 300px; margin: 0 auto;">
        <h2>הרשמה</h2>
        
            <form method="post" runat="server">
              <table>
                <tr>
                  <td>שם פרטי</td>
                  <td>
                    <input type="text" name="first_name" id="first_name">
                  </td>
                </tr>
                <tr>
                  <td>שם משפחה</td>
                  <td>
                    <input type="text" name="last_name" id="last_name">
                  </td>
                </tr>
                <tr>
                  <td>אימייל</td>
                  <td>
                    <input type="email" name="email" id="email">
                  </td>
                </tr>
                <tr>
                  <td>סיסמה</td>
                  <td>
                    <input type="password" name="password" id="password">
                  </td>
                </tr>
                <tr>
                    <td>גיל</td>
            <td>
                <select name="age" id="age">
                    <option value="0">בחר גיל</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>מגדר</td>
            <td>
                <input name="gender" id="gender1" value="ז" type="radio" />זכר<br />
                <input name="gender" id="gender2" value="נ" type="radio" />נקבה
            </td>
        </tr>
        <tr>
            <td>תחביבים</td>
            <td>
                <input name="checkb" id="checkb1" value="שחייה" type="checkbox" />שחייה<br />
                <input name="checkb" id="checkb2" value="קריאה" type="checkbox" />קריאה<br />
                <input name="checkb" id="checkb3" value="תכנות" type="checkbox" />תכנות<br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <input id="Submit1" type="submit" value="submit" />
            </td>
        </tr>

                 
                </tr>
              </table>
            </form>
        <%=stResult %>

    </div>
</asp:Content>

