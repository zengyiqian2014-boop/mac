cat << 'EOF' > build_eric_site.sh
#!/bin/bash

echo "💎 正在为 Eric 生成扁平化学术项目 (GitHub Pages 部署版)..."

# 1. 创建资产文件夹
mkdir -p css
mkdir -p assets

# ---------------------------------------------------------
# 2. 生成高端翡翠绿学术样式表
cat << 'CSS_EOF' > css/style.css
:root {
    --emerald-dark: #022c22;
    --emerald-main: #064e3b;
    --emerald-light: #10b981;
    --paper-bg: #faf9f6;
    --text-dark: #0f172a;
    --text-muted: #475569;
    --sidebar-bg: #ffffff;
}

* { box-sizing: border-box; margin: 0; padding: 0; }

body {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
    background-color: var(--paper-bg);
    color: var(--text-dark);
    line-height: 1.8;
}

/* 顶部导航 */
.navbar {
    position: fixed;
    top: 0; width: 100%; height: 80px;
    background: rgba(250, 249, 246, 0.98);
    backdrop-filter: blur(12px);
    display: flex; justify-content: space-between; align-items: center;
    padding: 0 6%; z-index: 1000;
    border-bottom: 1px solid rgba(6, 78, 59, 0.08);
}
.navbar .brand {
    font-family: 'Playfair Display', serif;
    font-size: 24px; font-weight: 700;
    color: var(--emerald-main); text-decoration: none;
    letter-spacing: -0.5px;
}
.nav-links { display: flex; gap: 35px; }
.nav-links a {
    text-decoration: none; color: var(--text-muted);
    font-weight: 600; font-size: 13px;
    text-transform: uppercase; letter-spacing: 1.2px;
    transition: all 0.3s ease;
    padding: 8px 0;
    border-bottom: 2px solid transparent;
}
.nav-links a:hover, .nav-links a.active {
    color: var(--emerald-main);
    border-bottom: 2px solid var(--emerald-light);
}

/* Banner */
.page-header {
    height: 45vh;
    background-size: cover; background-position: center;
    display: flex; flex-direction: column; justify-content: center;
    padding: 0 8%; color: white; margin-top: 80px;
    position: relative;
}
.page-header::before {
    content: ''; position: absolute; top: 0; left: 0; width: 100%; height: 100%;
    background: linear-gradient(rgba(2, 44, 34, 0.85), rgba(6, 78, 59, 0.8));
    z-index: 1;
}
.page-header h1, .page-header p { position: relative; z-index: 2; }
.page-header h1 { font-family: 'Playfair Display', serif; font-size: 48px; margin-bottom: 15px; }
.page-header p { font-size: 18px; max-width: 800px; opacity: 0.85; font-weight: 300; }

/* 分栏布局 */
.main-container {
    max-width: 1300px; margin: 0 auto;
    padding: 60px 5%;
    display: grid; grid-template-columns: 1.6fr 1fr; gap: 60px;
}

/* 文章排版 */
.article-body h2 { font-family: 'Playfair Display', serif; font-size: 32px; color: var(--emerald-main); margin: 35px 0 20px 0; }
.article-body h2:first-child { margin-top: 0; }
.article-body h3 { font-size: 20px; color: var(--emerald-dark); margin: 25px 0 15px 0; }
.article-body p { font-size: 16px; margin-bottom: 25px; text-align: justify; color: #334155; }
.article-body strong { color: var(--emerald-dark); font-weight: 600; }

/* 学术配图样式 */
.article-img-container {
    width: 100%; margin: 30px 0; border-radius: 12px; overflow: hidden;
    box-shadow: 0 15px 35px rgba(0,0,0,0.06); border: 1px solid rgba(6,78,59,0.1);
}
.article-img-container img { width: 100%; height: auto; display: block; object-fit: cover; }
.img-caption { background: #f0f6f3; padding: 12px 20px; font-size: 13px; color: var(--text-muted); text-align: center; font-style: italic; }

/* 侧边栏与视频 */
.sidebar {
    background: var(--sidebar-bg); padding: 40px;
    border-radius: 14px; box-shadow: 0 20px 40px rgba(0,0,0,0.03);
    border: 1px solid rgba(6,78,59,0.05); position: sticky; top: 120px; height: fit-content;
}
.video-box {
    position: relative; padding-bottom: 56.25%; height: 0;
    border-radius: 10px; overflow: hidden; background: #000;
    margin-bottom: 30px; box-shadow: 0 15px 35px rgba(0,0,0,0.15);
}
.video-box iframe { position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0; }

.data-tag {
    background: #f0f6f3; border-left: 4px solid var(--emerald-light);
    padding: 22px; margin-bottom: 20px; border-radius: 0 8px 8px 0;
}
.data-tag h4 { color: var(--emerald-main); font-size: 13px; text-transform: uppercase; letter-spacing: 1px; margin-bottom: 6px; }

/* 首页独有 */
.hero-home {
    height: 80vh;
    background: linear-gradient(rgba(2, 44, 34, 0.92), rgba(2, 44, 34, 0.88)), url('https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?auto=format&fit=crop&w=1920');
    background-size: cover; background-position: center;
    display: flex; flex-direction: column; justify-content: center; align-items: center;
    color: white; text-align: center; padding: 0 20px; margin-top: 80px;
}
.hero-home h1 { font-family: 'Playfair Display', serif; font-size: 64px; margin-bottom: 25px; letter-spacing: -1px; }
.hero-home p { font-size: 20px; max-width: 900px; font-weight: 300; margin-bottom: 40px; opacity: 0.9; }

.grid-home { display: grid; grid-template-columns: repeat(4, 1fr); gap: 25px; max-width: 1300px; margin: -80px auto 80px auto; padding: 0 5%; position: relative; z-index: 10; }
.card-home { background: white; padding: 35px; border-radius: 12px; box-shadow: 0 25px 50px rgba(0,0,0,0.06); transition: all 0.3s ease; text-decoration: none; color: inherit; border-bottom: 4px solid transparent; }
.card-home:hover { transform: translateY(-10px); border-bottom-color: var(--emerald-light); }
.card-home h3 { font-family: 'Playfair Display', serif; color: var(--emerald-main); font-size: 22px; margin-bottom: 12px; }

footer { background: var(--emerald-dark); color: rgba(255,255,255,0.6); text-align: center; padding: 60px 20px; font-size: 14px; }

@media(max-width: 968px) {
    .main-container { grid-template-columns: 1fr; }
    .grid-home { grid-template-columns: repeat(2, 1fr); }
}
CSS_EOF

# ---------------------------------------------------------
# 3. 生成 index.html (首页)
cat << 'HTML_EOF' > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eco-Legacy | Academic Research Portal</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar">
        <a href="index.html" class="brand">ECO-LEGACY</a>
        <div class="nav-links">
            <a href="index.html" class="active">Home</a>
            <a href="indus.html">Indus Valley</a>
            <a href="egypt.html">Ancient Egypt</a>
            <a href="greece.html">Ancient Greece</a>
            <a href="singapore.html">Singapore 2030</a>
        </div>
    </nav>

    <header class="hero-home">
        <span style="color: var(--emerald-light); font-weight:600; letter-spacing:3px; text-transform:uppercase; font-size:13px; margin-bottom:15px;">Primary 6 Social Studies Group Project</span>
        <h1>Echoes of Antiquity</h1>
        <p>Decoding the thermodynamics and kinetic intelligence of ancient engineering to power the targets of the Singapore Green Plan 2030.</p>
    </header>

    <main class="grid-home">
        <a href="indus.html" class="card-home"><h3>01 // Indus Valley</h3><p>Explore passive thermodynamics, urban wind corridors, and high-density microclimate control systems.</p></a>
        <a href="egypt.html" class="card-home"><h3>02 // Ancient Egypt</h3><p>Analyze the fluid mechanics of basin irrigation networks and data-driven equity governance via Nilometers.</p></a>
        <a href="greece.html" class="card-home"><h3>03 // Ancient Greece</h3><p>Investigate the mechanical advantage of kinetic watermills and Socratic passive solar urban planning frameworks.</p></a>
        <a href="singapore.html" class="card-home" style="background: var(--emerald-main); color: white;"><h3>04 // Eric's Action Plan</h3><p style="color: rgba(255,255,255,0.8);">See our strategic synthesis mapping ancient engineering templates onto the Singapore 2030 blueprint.</p></a>
    </main>

    <footer><p>&copy; 2026 Made by Eric. All Rights Reserved.</p></footer>
</body>
</html>
HTML_EOF

# ---------------------------------------------------------
# 4. 生成 indus.html (印度河)
cat << 'HTML_EOF' > indus.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indus Valley | Eric's Academic Archive</title>
    <link rel="stylesheet" href="css/style.css"><link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar">
        <a href="index.html" class="brand">ECO-LEGACY</a>
        <div class="nav-links">
            <a href="index.html">Home</a><a href="indus.html" class="active">Indus Valley</a><a href="egypt.html">Ancient Egypt</a><a href="greece.html">Ancient Greece</a><a href="singapore.html">Singapore 2030</a>
        </div>
    </nav>

    <header class="page-header" style="background-image: url('https://images.unsplash.com/photo-1608963473132-c67efbe56b06?auto=format&fit=crop&w=1920');">
        <h1>I. The Indus Valley Civilisation</h1>
        <p>A Masterclass in Passive Thermodynamics and Grid-Based Microclimate Manipulation.</p>
    </header>

    <div class="main-container">
        <article class="article-body">
            <h2>The Grid as a Thermodynamic Machine</h2>
            <p>Mohenjo-Daro and Harappa demonstrate an unprecedented understanding of climate-responsive master planning. Unlike other Bronze Age civilizations, the Indus Valley cities were strictly structured on a cardinal grid system—a calculated engineering defense against extreme heat.</p>
            <div class="article-img-container"><img src="https://images.unsplash.com/photo-1599946347371-68eb71b16afc?auto=format&fit=crop&w=1000" alt="Archaeological Grid"><div class="img-caption">Figure 1.1: Excavated foundations of Mohenjo-Daro showing the wind-aligned grid corridors.</div></div>
            <h3>Fluid Dynamics & The Venturi Effect</h3>
            <p>By orienting major roads precisely North-to-South, Harappan planners harnessed seasonal monsoons. Streets acted as <strong>Urban Wind Corridors</strong>, utilizing the Venturi Effect to flush heat out without energy expenditure.</p>
            <p>Material standardization conform to a precise ratio of <strong>1:2:4</strong>. This specific density engineered an optimal <strong>Thermal Mass</strong>, allowing interiors to remain cool through a delay mechanism known as <strong>Thermal Lag</strong>.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/owhYIZgSI-Q" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Thermodynamic Capacity</h4><p>-6°C Temperature Drop achieved passive cooling.</p></div>
        </aside>
    </div>
    <footer><p>&copy; 2026 Made by Eric. All Rights Reserved.</p></footer>
</body>
</html>
HTML_EOF

# ---------------------------------------------------------
# 5. 生成 egypt.html (埃及)
cat << 'HTML_EOF' > egypt.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ancient Egypt | Eric's Academic Archive</title>
    <link rel="stylesheet" href="css/style.css"><link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar">
        <a href="index.html" class="brand">ECO-LEGACY</a>
        <div class="nav-links">
            <a href="index.html">Home</a><a href="indus.html">Indus Valley</a><a href="egypt.html" class="active">Ancient Egypt</a><a href="greece.html">Ancient Greece</a><a href="singapore.html">Singapore 2030</a>
        </div>
    </nav>
    <header class="page-header" style="background-image: url('https://images.unsplash.com/photo-1539650116574-8efeb43e2750?auto=format&fit=crop&w=1920');">
        <h1>II. Ancient Egyptian Civilisation</h1>
        <p>Hydraulic Stewardship, Dynamic Basin Infrastructure, and Data Governance.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>The Philosophy of Hydraulic Stewardship</h2>
            <p>The pharaonic engineers synchronized their entire agrarian economy with the natural flooding rhythm of the Nile, known as <em>Akhet</em>.</p>
            <div class="article-img-container"><img src="https://images.unsplash.com/photo-1503177119275-0aa32b3a7447?auto=format&fit=crop&w=1000" alt="Nile Irrigation"><div class="img-caption">Figure 2.1: The Nile floodplain system, the basis for zero-carbon gravity-fed basin irrigation.</div></div>
            <h3>Basin Irrigation & Silt Deposition</h3>
            <p>The core structural innovation was <strong>Basin Irrigation</strong>. Floodwaters were impounded for <strong>40 to 60 days</strong>, allowing mineral-dense silt to settle and refertilize the soil naturally without chemical additives.</p>
            <p>This network was managed via <strong>Nilometers</strong>—stone monitoring columns carved into bedrock. This hydro-data established highly equitable tax laws adjusted to seasonal flood levels.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/v1EdMt7Hs7E" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Systemic Efficiency</h4><p>100% Zero-Carbon Pumping via gravitational inclines.</p></div>
        </aside>
    </div>
    <footer><p>&copy; 2026 Made by Eric. All Rights Reserved.</p></footer>
</body>
</html>
HTML_EOF

# ---------------------------------------------------------
# 6. 生成 greece.html (希腊)
cat << 'HTML_EOF' > greece.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ancient Greece | Eric's Academic Archive</title>
    <link rel="stylesheet" href="css/style.css"><link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar">
        <a href="index.html" class="brand">ECO-LEGACY</a>
        <div class="nav-links">
            <a href="index.html">Home</a><a href="indus.html">Indus Valley</a><a href="egypt.html">Ancient Egypt</a><a href="greece.html" class="active">Ancient Greece</a><a href="singapore.html">Singapore 2030</a>
        </div>
    </nav>
    <header class="page-header" style="background-image: url('https://images.unsplash.com/photo-1505881502353-a1986add3762?auto=format&fit=crop&w=1920');">
        <h1>III. Ancient Greek Engineering</h1>
        <p>Kinetic Energy Conversion, Mechanical Advantage, and Socratic Solar Architecture.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>Decoupling Labor via Kinetic Energy</h2>
            <p>Hellenistic inventors sought to leverage fluid mechanics to automate industrial processing, substituting caloric labor with renewable <strong>Kinetic Energy</strong>.</p>
            <div class="article-img-container"><img src="https://images.unsplash.com/photo-1601999109332-542b18dbec57?auto=format&fit=crop&w=1000" alt="Greek Solar Planning"><div class="img-caption">Figure 3.1: Classical Hellenistic urban layouts designed for solar thermal optimization.</div></div>
            <h3>Perachora Waterwheel & Socratic Houses</h3>
            <p>A single kinetic mill replaced the physical exhaustion of <strong>50 laborers</strong>. Furthermore, Socrates famously stated that houses must be "cool in summer and warm in winter," leading to the <strong>Olynthus Southern Grid</strong> planning that used roof overhangs to regulate solar thermal intake.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/arD374MFk4w" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Kinetic Leverage</h4><p>50:1 Efficiency ratio over biological expenditure.</p></div>
        </aside>
    </div>
    <footer><p>&copy; 2026 Made by Eric. All Rights Reserved.</p></footer>
</body>
</html>
HTML_EOF

# ---------------------------------------------------------
# 7. 生成 singapore.html (新加坡)
cat << 'HTML_EOF' > singapore.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Singapore 2030 | Strategy by Eric</title>
    <link rel="stylesheet" href="css/style.css"><link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar">
        <a href="index.html" class="brand">ECO-LEGACY</a>
        <div class="nav-links">
            <a href="index.html">Home</a><a href="indus.html">Indus Valley</a><a href="egypt.html">Ancient Egypt</a><a href="greece.html">Ancient Greece</a><a href="singapore.html" class="active">Singapore 2030</a>
        </div>
    </nav>
    <header class="page-header" style="background-image: url('https://images.unsplash.com/photo-1525625293386-3f8f99389edd?auto=format&fit=crop&w=1920');">
        <h1>IV. Synthesis: Singapore Green Plan 2030</h1>
        <p>Translating Principles of Antiquity into Modern Island Resilience.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>The Challenge of Island Urbanism</h2>
            <p>Singapore faces acute vulnerabilities from the severe <strong>Urban Heat Island (UHI) effect</strong> and flash-flood risks. Eric's synthesis proposes adopting ancient "physics-first" logic to unlock eco-resilience.</p>
            <div class="article-img-container"><img src="https://images.unsplash.com/photo-1569336415962-a4bd9f69cd83?auto=format&fit=crop&w=1000" alt="Modern SG Architecture"><div class="img-caption">Figure 4.1: Modern Singapore's integration of ancient layout morphology with vertical nature.</div></div>
            <h3>Strategizing Tengah & Marina Barrage</h3>
            <p>By adapting the geometric wind corridors of Mohenjo-Daro, <strong>Tengah Town</strong> can lower temperatures by 2-3°C. Meanwhile, concrete canals can be transformed into decentralized "mini-basins" mirroring Egyptian hydrology.</p>
        </article>
        <aside class="sidebar" style="background: var(--emerald-dark); color: white;">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/PM101DvvG4Q" allowfullscreen></iframe></div>
            <h3 style="color: var(--emerald-light);">Green Plan Targets</h3>
            <ul style="list-style-type: none; font-size: 14px; line-height: 2;">
                <li>🎯 80% Green Buildings</li><li>🎯 2 GWp Solar Output</li><li>🎯 130L Water Target</li>
            </ul>
        </aside>
    </div>
    <footer><p>&copy; 2026 Made by Eric. All Rights Reserved.</p></footer>
</body>
</html>
HTML_EOF

# 8. 启动测试
echo "✅ 恭喜 Eric，GitHub Pages 专属扁平化架构生成完毕！"
echo "🌟 所有页面底部版权已更新：© 2026 Made by Eric."
echo "👉 请运行下方预览命令检查效果，满意后即可 git push 到仓库："
python3 -m http.server 8000
EOF

# 赋予执行权限并运行
chmod +x build_eric_site.sh
bash build_eric_site.sh