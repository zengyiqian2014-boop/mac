#!/bin/bash

echo "💎 正在为 Eric 生成内容增强版学术项目 (GitHub Pages 部署版)..."

# 1. 创建资产文件夹
mkdir -p css
mkdir -p assets

# ---------------------------------------------------------
# 2. 生成高端翡翠绿学术样式表 (保持原样)
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

# 3. 生成 index.html (增强介绍)
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
        <span style="color: var(--emerald-light); font-weight:600; letter-spacing:3px; text-transform:uppercase; font-size:13px; margin-bottom:15px;">Primary 6 Social Studies Excellence Initiative</span>
        <h1>Echoes of Antiquity</h1>
        <p>A comprehensive research synthesis exploring how ancient civil engineering principles—specifically thermodynamics, hydraulic stewardship, and kinetic efficiency—provide vital, time-tested blueprints for Singapore's 2030 sustainability transition.</p>
    </header>
    <main class="grid-home">
        <a href="indus.html" class="card-home"><h3>01 // Indus Valley</h3><p>Analysis of Bronze Age thermodynamic precision and grid-based microclimate management techniques.</p></a>
        <a href="egypt.html" class="card-home"><h3>02 // Ancient Egypt</h3><p>Evaluation of basin irrigation systems and data-driven administrative governance using hydrological metrics.</p></a>
        <a href="greece.html" class="card-home"><h3>03 // Ancient Greece</h3><p>Investigation into mechanical kinetic leverage and the formalization of passive solar architectural regulations.</p></a>
        <a href="singapore.html" class="card-home" style="background: var(--emerald-main); color: white;"><h3>04 // Eric's Action Plan</h3><p style="color: rgba(255,255,255,0.8);">A strategic proposal mapping historical engineering paradigms directly onto the Singapore Green Plan 2030 targets.</p></a>
    </main>
    <footer><p>&copy; 2026 Made by Eric. All Rights Reserved.</p></footer>
</body>
</html>
HTML_EOF

# 4. 生成 indus.html (增强学术内容)
cat << 'HTML_EOF' > indus.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indus Valley | Engineering Analysis</title>
    <link rel="stylesheet" href="css/style.css">
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
        <p>A Case Study in Passive Thermodynamics and Urban Heat Mitigation.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>The Grid as a Thermodynamic Machine</h2>
            <p> The Indus Valley Civilisation (c. 2600–1900 BCE) represents an early pinnacle of systematic urban planning. Harappa and Mohenjo-Daro were not developed organically; they were engineered with a rigid cardinal grid structure. This was not merely for aesthetic organization, but a sophisticated response to the harsh regional climate. By strictly aligning street networks, planners intentionally created convective pathways for regional wind currents.</p>
            <h3>Fluid Dynamics: Harnessing the Venturi Effect</h3>
            <p>The streets functioned as <strong>Passive Wind Corridors</strong>. By optimizing street width in proportion to residential building heights, Harappan engineers utilized the <strong>Venturi Effect</strong>, where wind velocity increases as it moves through constricted spaces. This effectively accelerated cool air circulation, flushing out trapped heat and reducing the ambient urban temperature without any active mechanical energy consumption.</p>
            <h3>Thermal Mass and Material Integrity</h3>
            <p>The universal adoption of the <strong>1:2:4 brick ratio</strong> across the civilization was a triumph of material standardization. These kiln-fired bricks possessed high <strong>Thermal Inertia</strong>. Throughout the day, the thick masonry absorbed solar radiation, delaying heat penetration into the living quarters (a process known as <em>Thermal Lag</em>). By the time the stored heat would have reached the interior, the external temperature had dropped, allowing the walls to discharge heat back into the cooler night air, maintaining a remarkably stable indoor microclimate.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/owhYIZgSI-Q" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Engineering Output</h4><p>Maintained indoor temperatures significantly below external peaks through structural thermodynamics.</p></div>
        </aside>
    </div>
</body>
</html>
HTML_EOF

# 5. 生成 egypt.html (增强学术内容)
cat << 'HTML_EOF' > egypt.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ancient Egypt | Hydrology</title>
    <link rel="stylesheet" href="css/style.css">
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
        <p>Hydraulic Stewardship and Data-Driven Resource Management.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>The Philosophy of Hydraulic Stewardship</h2>
            <p>Ancient Egyptian civilization thrived by synchronizing state-level infrastructure with the predictable volatility of the Nile’s annual cycle (<em>Akhet</em>). This represents one of history's first successful examples of large-scale hydrological management, where engineering was used to harmonize human settlement with environmental reality rather than attempting to dominate or alter the natural river course.</p>
            <h3>Basin Irrigation as a Circular System</h3>
            <p> The engineers implemented a "Basin Irrigation" strategy by constructing networks of longitudinal and transverse dikes. This effectively segmented the floodplains into vast, manageable reservoirs. The system utilized gravity-fed channels to inundate these basins, holding water in situ for 40 to 60 days. This provided a critical service: the water velocity decreased, allowing nutrient-rich alluvial silt to settle and fertilize the soil naturally, ensuring sustainable agrarian output without the need for intensive soil-depleting practices.</p>
            <h3>Nilometers and State Governance</h3>
            <p>The state utilized <strong>Nilometers</strong>—calibrated stone markers—as essential instrumentation for macro-economic policy. By measuring the vertical rise of the Nile, the state achieved early <strong>Data-Driven Governance</strong>. This allowed for accurate crop yield forecasting and the implementation of equitable, flood-level-adjusted taxation systems, ensuring social stability despite the variance of seasonal water levels.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/v1EdMt7Hs7E" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Governance Metric</h4><p>Hydraulic data provided the empirical foundation for social welfare and state tax equity.</p></div>
        </aside>
    </div>
</body>
</html>
HTML_EOF

# 6. 生成 greece.html (增强学术内容)
cat << 'HTML_EOF' > greece.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ancient Greece | Kinetic Analysis</title>
    <link rel="stylesheet" href="css/style.css">
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
        <p>Kinetic Energy Conversion and Passive Solar Optimization.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>Decoupling Labor via Kinetic Leverage</h2>
            <p> Greek civil engineering transitioned from biological labor (human/animal) toward renewable atmospheric and fluid kinetic energy. Facing demographic constraints, Hellenistic engineers pioneered the use of the vertical waterwheel, converting the kinetic velocity of water into rotational force via a series of precision-cut wooden gear assemblies.</p>
            <h3>Mechanical Advantage</h3>
            <p>This development was transformative, achieving significant <strong>Mechanical Advantage</strong>. A single watermill unit could replicate the output of over 50 manual laborers, effectively decoupling economic production from caloric human limitations. This shift demonstrates that sustainable industrial growth can be achieved through technological innovation rather than simple extraction.</p>
            <h3>Socratic Solar Architecture</h3>
            <p>The Greeks were pioneers in formalizing <strong>Passive Solar Urbanism</strong>. The philosopher Socrates articulated the logic that a well-designed dwelling should provide thermal comfort across seasons: cool in summer and warm in winter. This culminated in the "Olynthus Grid," a city planning regulation requiring every house to be oriented towards the South. This exploited the low-angle winter sun for internal heating, while roof overhangs provided seasonal shading, a foundational principle for modern sustainable architecture and energy-efficient building design.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/arD374MFk4w" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Kinetic Output</h4><p>Achieved massive force multiplication, reducing reliance on biological labor exhaustion.</p></div>
        </aside>
    </div>
</body>
</html>
HTML_EOF

# 7. 生成 singapore.html (增强学术内容)
cat << 'HTML_EOF' > singapore.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Singapore 2030 | Research Synthesis</title>
    <link rel="stylesheet" href="css/style.css">
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
        <p>Applying Ancient Physics to Modern Urban Resilience.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>The Future-Proofing of Hyper-Dense Island Urbanism</h2>
            <p>Singapore’s 2030 sustainability agenda represents a crucial convergence of modern technology and age-old physics. The research in this portal confirms that the core principles of resilience are universal. By synthesizing the thermodynamic, hydraulic, and kinetic wisdom of ancient civilizations, we can refine our strategic response to contemporary climate challenges such as the Urban Heat Island (UHI) effect and hydrological insecurity.</p>
            <h3>1. Re-engineering Microclimates (Indus Model)</h3>
            <p>The "Tengah" master plan stands as an ideal candidate for applying Harappan thermodynamics. By utilizing Computational Fluid Dynamics (CFD) to emulate ancient "Wind Corridor" morphology, we can ensure that high-density residential blocks are not heat traps but active cooling conduits. Integrating high-thermal-mass building materials mirroring the 1:2:4 ratio further assists in mitigating peak daytime heat absorption.</p>
            <h3>2. Integrated Hydrological Resilience (Egyptian Model)</h3>
            <p>The modern Singaporean approach via the <strong>ABC (Active, Beautiful, Clean) Waters Programme</strong> effectively replicates the Egyptian basin management strategy. By naturalizing storm-drainage channels into bio-filtering rain gardens, we are transitioning from a 'drain-and-discharge' water policy to a 'capture-and-filter' circular model, mirroring the silt-and-water retention logic of the Nile valley.</p>
            <h3>3. Solar Optimization (Greek Model)</h3>
            <p>To reach our ambitious 2 GWp solar energy target, we must move beyond standard installation practices. Adopting the "Socratic" orientation framework for building facades ensures that solar-tracking geometry is baked into the urban design. By mandating solar-harvesting angles for new industrial and residential corridors, Singapore can transform its entire vertical skyline into a renewable energy utility, maximizing harvested irradiance regardless of building footprint.</p>
        </article>
        <aside class="sidebar" style="background: var(--emerald-dark); color: white;">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/PM101DvvG4Q" allowfullscreen></iframe></div>
            <h3 style="color: var(--emerald-light);">Green Plan Strategy Matrix</h3>
            <ul style="list-style-type: none; font-size: 14px; line-height: 2;">
                <li>🎯 <strong>80% Green Buildings:</strong> Leveraged Indus Thermodynamic Passivity.</li>
                <li>🎯 <strong>2 GWp Solar Output:</strong> Leveraged Greek Solar Geometry.</li>
                <li>🎯 <strong>130L Water Target:</strong> Leveraged Egyptian Hydraulic Circularity.</li>
            </ul>
        </aside>
    </div>
</body>
</html>
HTML_EOF

# 8. 启动测试
echo "✅ 恭喜 Eric，GitHub Pages 专属扁平化架构（内容增强版）已生成完毕！"
echo "👉 请运行下方命令进行预览："
python3 -m http.server 8000
