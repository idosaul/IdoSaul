<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div style="text-align: right; width: 300px; margin: 0 auto;">
     <h2>כניסה</h2>
     
         <form method="post" runat="server">
           <table>
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
               <td colspan="2" align="center">
                 <input type="submit" value="שלח">
               </td>
             </tr>
           </table>
         </form>

 </div>

</asp:Content>

