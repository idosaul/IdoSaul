<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Basketball.aspx.cs" Inherits="Basketball" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
</head>
<body>

<div class="header">
   <!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="UTF-8">
    <title>תוצאות NBA מעודכן</title>
    <style>
        body {
            text-align: center;
            font-family: sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 50px;
        }

        table {
            margin: 0 auto;
            width: 800px;
            background-color: white;
            border-collapse: collapse;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        th {
            background-color: #1d428a;
            color: white;
            padding: 15px;
        }

        td {
            border-bottom: 1px solid #eee;
            padding: 15px;
            vertical-align: middle;
        }

        /* עיצוב הלוגו החדש */
        .logo {
            width: 40px;
            height: 40px;
            vertical-align: middle;
            margin-left: 10px;
            object-fit: contain; /* שומר על צורת הלוגו */
        }

        .score {
            font-size: 24px;
            font-weight: bold;
            color: #222;
        }

        .players-row {
            background-color: #fafafa;
            font-size: 14px;
            color: #555;
        }

        .stat {
            color: #c9082a;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <h2>תוצאות NBA - משחקי הלילה</h2>

    <table>
        <thead>
            <tr>
                <th>קבוצה מארחת</th>
                <th>תוצאה סופית</th>
                <th>קבוצת חוץ</th>
            </tr>
        </thead>
        <tbody>
            <!-- משחק 1 -->
            <tr>
                <td>
                    <img src="https://cdn.nba.com/logos/nba/1610612747/primary/L/logo.svg" alt="Lakers" class="logo">
                    לייקרס
                </td>
                <td class="score">102 - 114</td>
                <td>
                    <img src="https://cdn.nba.com/logos/nba/1610612743/primary/L/logo.svg" alt="Nuggets" class="logo">
                    דנבר
                </td>
            </tr>
            <tr class="players-row">
                <td>מצטיין: אנתוני דייוויס (<span class="stat">22</span>/12/2)</td>
                <td>סיום</td>
                <td>מצטיין: ניקולה יוקיץ' (<span class="stat">31</span>/13/10)</td>
            </tr>

            <!-- משחק 2 -->
            <tr>
                <td>
                    <img src="https://cdn.nba.com/logos/nba/1610612738/primary/L/logo.svg" alt="Cavaliers" class="logo">
                    קליבלנד
                </td>
                <td class="score">115 - 109</td>
                <td>
                    <img src="https://cdn.nba.com/logos/nba/1610612755/primary/L/logo.svg" alt="76ers" class="logo">
                    פילדלפיה
                </td>
            </tr>
            <tr class="players-row">
                <td>מצטיין: דונובן מיטשל (<span class="stat">28</span>/5/6)</td>
                <td>סיום</td>
                <td>מצטיין: ג'ואל אמביד (<span class="stat">33</span>/10/3)</td>
            </tr>
        </tbody>
    </table>

</body>
</html>

</body>
</html>
</asp:Content>

