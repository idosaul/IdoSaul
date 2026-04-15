<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Basketball.aspx.cs" Inherits="Basketball" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NBA Premium Dashboard</title>
    <style>
        :root {
            --nba-blue: #1d428a;
            --nba-red: #c8102e;
            --dark-bg: #0f0f0f;
            --card-bg: #1e1e1e;
            --accent: #ff6b00;
        }

        body {
            font-family: 'Assistant', sans-serif;
            background-color: var(--dark-bg);
            color: #ffffff;
            margin: 0;
            padding: 40px 20px;
        }

        .header {
            text-align: center;
            margin-bottom: 50px;
        }

        .header h1 {
            font-size: 3rem;
            text-transform: uppercase;
            letter-spacing: 2px;
            background: linear-gradient(to right, #fff, var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 25px;
            max-width: 1400px;
            margin: 0 auto;
        }

        /* עיצוב כרטיסיית פרימיום */
        .game-card {
            background: var(--card-bg);
            border-radius: 20px;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 1px solid #333;
            position: relative;
        }

        .game-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(255, 107, 0, 0.2);
            border-color: var(--accent);
        }

        .card-header {
            background: linear-gradient(45deg, #262626, #333);
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            font-size: 0.8rem;
            color: #888;
            font-weight: bold;
        }

        .matchup {
            padding: 30px 20px;
            display: flex;
            align-items: center;
            justify-content: space-around;
        }

        .team {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 80px;
        }

        .team img {
            width: 65px;
            height: 65px;
            object-fit: contain;
            margin-bottom: 10px;
            filter: drop-shadow(0 4px 8px rgba(0,0,0,0.5));
        }

        .score-box {
            text-align: center;
        }

        .main-score {
            font-size: 2.5rem;
            font-weight: 900;
            letter-spacing: -1px;
            margin: 0 15px;
        }

        .performer-section {
            background: rgba(255, 255, 255, 0.03);
            margin: 15px;
            border-radius: 15px;
            padding: 15px;
            display: flex;
            align-items: center;
            border-right: 4px solid var(--accent);
        }

        .performer-img {
            width: 50px;
            height: 50px;
            background: #444;
            border-radius: 50%;
            margin-left: 15px;
            overflow: hidden;
        }

        .performer-details p {
            margin: 0;
        }

        .p-name {
            font-weight: bold;
            font-size: 1rem;
            color: #fff;
        }

        .p-stats {
            font-size: 0.85rem;
            color: var(--accent);
            margin-top: 4px !important;
        }

        .win-tag {
            color: #4CAF50;
            font-size: 0.7rem;
            margin-top: 5px;
        }

    </style>
</head>
<body>

<div class="header">
    <h1>NBA Game Center</h1>
    <p>סיכום משחקי הלילה</p>
</div>

<div class="grid-container">

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>12.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-milwaukee-bucks-logo.png" alt="Bucks">
                <span>MIL</span>
            </div>
            <div class="main-score">118 - 110</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-philadelphia-76ers-logo.png" alt="76ers">
                <span>PHI</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">יאניס אנטטוקומפו</p>
                <p class="p-stats">34 PTS | 12 REB | 7 AST</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>12.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-phoenix-suns-logo.png" alt="Suns">
                <span>PHX</span>
            </div>
            <div class="main-score">105 - 120</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-denver-nuggets-logo.png" alt="Nuggets">
                <span>DEN</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">ניקולה יוקיץ'</p>
                <p class="p-stats">28 PTS | 14 REB | 11 AST</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>12.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-dallas-mavericks-logo.png" alt="Mavs">
                <span>DAL</span>
            </div>
            <div class="main-score">126 - 115</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-los-angeles-clippers-logo.png" alt="Clippers">
                <span>LAC</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">לוקה דונצ'יץ'</p>
                <p class="p-stats">41 PTS | 9 REB | 6 AST</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>12.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-new-york-knicks-logo.png" alt="Knicks">
                <span>NYK</span>
            </div>
            <div class="main-score">102 - 98</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-brooklyn-nets-logo.png" alt="Nets">
                <span>BKN</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">ג'יילן ברונסון</p>
                <p class="p-stats">29 PTS | 4 REB | 8 AST</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>11.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-sacramento-kings-logo.png" alt="Kings">
                <span>SAC</span>
            </div>
            <div class="main-score">109 - 114</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-oklahoma-city-thunder-logo.png" alt="Thunder">
                <span>OKC</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">שיי גילג'ס-אלכסנדר</p>
                <p class="p-stats">33 PTS | 5 REB | 6 AST</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>11.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-memphis-grizzlies-logo.png" alt="Grizzlies">
                <span>MEM</span>
            </div>
            <div class="main-score">101 - 110</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-minnesota-timberwolves-logo.png" alt="Wolves">
                <span>MIN</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">אנתוני אדוארדס</p>
                <p class="p-stats">27 PTS | 7 AST | 3 STL</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>11.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-cleveland-cavaliers-logo.png" alt="Cavs">
                <span>CLE</span>
            </div>
            <div class="main-score">115 - 103</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-indiana-pacers-logo.png" alt="Pacers">
                <span>IND</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">דונובן מיטשל</p>
                <p class="p-stats">31 PTS | 6 AST | 4 REB</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>10.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-new-orleans-pelicans-logo.png" alt="Pels">
                <span>NOP</span>
            </div>
            <div class="main-score">121 - 111</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-atlanta-hawks-logo.png" alt="Hawks">
                <span>ATL</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">זאיון וויליאמסון</p>
                <p class="p-stats">26 PTS | 10 REB | 2 BLK</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>10.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-san-antonio-spurs-logo.png" alt="Spurs">
                <span>SAS</span>
            </div>
            <div class="main-score">98 - 112</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-houston-rockets-logo.png" alt="Rockets">
                <span>HOU</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">ויקטור וומבניאמה</p>
                <p class="p-stats">22 PTS | 13 REB | 5 BLK</p>
            </div>
        </div>
    </div>

    <div class="game-card">
        <div class="card-header"><span>FINAL</span> <span>10.04.2026</span></div>
        <div class="matchup">
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-chicago-bulls-logo.png" alt="Bulls">
                <span>CHI</span>
            </div>
            <div class="main-score">105 - 108</div>
            <div class="team">
                <img src="https://loodibee.com/wp-content/uploads/nba-orlando-magic-logo.png" alt="Magic">
                <span>ORL</span>
            </div>
        </div>
        <div class="performer-section">
            <div class="performer-details">
                <p class="p-name">פאולו באנקרו</p>
                <p class="p-stats">25 PTS | 8 REB | 9 AST</p>
            </div>
        </div>
    </div>

</div>

</body>
</html>
</asp:Content>

