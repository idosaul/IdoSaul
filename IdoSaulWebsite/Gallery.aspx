<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>תוצאות NBA</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #1a1a1a;
            color: white;
            padding: 20px;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* עיצוב הכרטיסייה */
        .game-card {
            background: #2d2d2d;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.3);
            border-top: 4px solid #1d428a; /* כחול NBA */
        }

        /* לוח התוצאות */
        .scoreboard {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 1px solid #444;
        }

        .team {
            text-align: center;
            flex: 1;
        }

        .team img {
            width: 50px;
            height: 50px;
            display: block;
            margin: 0 auto 5px;
        }

        .team-name {
            font-weight: bold;
            font-size: 1.1rem;
        }

        .score {
            font-size: 2rem;
            font-weight: 800;
            color: #ff6b00; /* כתום כדורסל */
        }

        .game-status {
            font-size: 0.8rem;
            color: #aaa;
            text-align: center;
            font-weight: bold;
        }

        /* שחקן מצטיין */
        .top-performer {
            display: flex;
            align-items: center;
            background: #383838;
            padding: 10px;
            border-radius: 8px;
        }

        .player-info {
            margin-right: 15px;
        }

        .player-name {
            font-size: 0.9rem;
            color: #eee;
            margin: 0;
        }

        .player-stats {
            font-size: 0.85rem;
            color: #ff6b00;
            font-weight: bold;
            margin: 0;
        }

        .label {
            font-size: 0.7rem;
            color: #888;
            text-transform: uppercase;
            display: block;
            margin-bottom: 3px;
        }
    </style>
</head>
<body>

<h1 style="text-align: center;">תוצאות משחקי הלילה</h1>

<div class="container">
    
    <div class="game-card">
        <div class="scoreboard">
            <div class="team">
                <img src="https://logodownload.org/wp-content/uploads/2021/04/los-angeles-lakers-logo.png" alt="Lakers">
                <div class="team-name">לייקרס</div>
                <div class="score">112</div>
            </div>
            
            <div class="game-status">סיום</div>
            
            <div class="team">
                <img src="https://logodownload.org/wp-content/uploads/2021/04/golden-state-warriors-logo.png" alt="Warriors">
                <div class="team-name">ווריורס</div>
                <div class="score">104</div>
            </div>
        </div>

        <div class="top-performer">
            <div class="player-info">
                <span class="label">שחקן מצטיין</span>
                <p class="player-name">אנתוני דייוויס</p>
                <p class="player-stats">30 נק', 15 ריב', 3 חס'</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="scoreboard">
            <div class="team">
                <img src="https://logodownload.org/wp-content/uploads/2021/04/boston-celtics-logo.png" alt="Celtics">
                <div class="team-name">סלטיקס</div>
                <div class="score">128</div>
            </div>
            
            <div class="game-status">סיום</div>
            
            <div class="team">
                <img src="https://logodownload.org/wp-content/uploads/2021/04/miami-heat-logo.png" alt="Heat">
                <div class="team-name">היט</div>
                <div class="score">108</div>
            </div>
        </div>

        <div class="top-performer">
            <div class="player-info">
                <span class="label">שחקן מצטיין</span>
                <p class="player-name">ג'ייסון טייטום</p>
                <p class="player-stats">35 נק', 8 ריב', 5 אס'</p>
            </div>
        </div>
    </div>

</div>

</body>
</html>
</asp:Content>

