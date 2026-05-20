#!/bin/bash

echo "💎 Initializing Advanced Academic Website for Eric (Expanded Content Edition)..."

mkdir -p css

# 1. CSS 保持不变
cat << 'CSS_EOF' > css/style.css
:root { --emerald-dark: #022c22; --emerald-main: #064e3b; --emerald-light: #10b981; --paper-bg: #faf9f6; --text-dark: #0f172a; --text-muted: #475569; }
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: 'Inter', -apple-system, sans-serif; background-color: var(--paper-bg); color: var(--text-dark); line-height: 1.8; }
.navbar { position: fixed; top: 0; width: 100%; height: 80px; background: rgba(250, 249, 246, 0.98); backdrop-filter: blur(12px); display: flex; justify-content: space-between; align-items: center; padding: 0 5%; z-index: 1000; border-bottom: 1px solid rgba(6, 78, 59, 0.08); }
.navbar .brand { font-family: 'Playfair Display', serif; font-size: 24px; font-weight: 700; color: var(--emerald-main); text-decoration: none; }
.nav-links { display: flex; gap: 30px; }
.nav-links a { text-decoration: none; color: var(--text-muted); font-weight: 600; font-size: 13px; text-transform: uppercase; letter-spacing: 1.2px; transition: 0.3s; padding-bottom: 5px; }
.nav-links a:hover, .nav-links a.active { color: var(--emerald-main); border-bottom: 2px solid var(--emerald-light); }
.page-header { height: 45vh; background-size: cover; background-position: center; display: flex; flex-direction: column; justify-content: center; padding: 0 8%; color: white; margin-top: 80px; position: relative; }
.page-header::before { content: ''; position: absolute; top:0; left:0; width:100%; height:100%; background: linear-gradient(rgba(2, 44, 34, 0.85), rgba(6, 78, 59, 0.8)); z-index: 1; }
.page-header h1, .page-header p { position: relative; z-index: 2; }
.page-header h1 { font-family: 'Playfair Display', serif; font-size: 52px; margin-bottom: 15px; }
.main-container { max-width: 1300px; margin: 0 auto; padding: 60px 5%; display: grid; grid-template-columns: 1.6fr 1fr; gap: 60px; }
.article-body h2 { font-family: 'Playfair Display', serif; font-size: 36px; color: var(--emerald-main); margin: 30px 0 20px; }
.article-body h3 { font-size: 22px; color: var(--emerald-dark); margin: 25px 0 15px; border-left: 4px solid var(--emerald-light); padding-left: 15px; }
.article-body p { font-size: 16px; margin-bottom: 25px; text-align: justify; color: #334155; }
.article-img-container { width: 100%; margin: 30px 0; border-radius: 12px; overflow: hidden; box-shadow: 0 15px 35px rgba(0,0,0,0.06); }
.article-img-container img { width: 100%; height: auto; display: block; object-fit: cover; max-height: 450px; }
.img-caption { background: #f0f6f3; padding: 12px 20px; font-size: 13px; color: var(--text-muted); text-align: center; font-style: italic; }
.sidebar { background: white; padding: 40px; border-radius: 14px; box-shadow: 0 20px 40px rgba(0,0,0,0.03); border: 1px solid rgba(6,78,59,0.05); position: sticky; top: 100px; height: max-content; }
.video-box { position: relative; padding-bottom: 56.25%; height: 0; border-radius: 10px; overflow: hidden; background: #000; margin-bottom: 30px; }
.video-box iframe { position: absolute; top:0; left:0; width:100%; height:100%; border: 0; }
.data-tag { background: #f0f6f3; border-left: 4px solid var(--emerald-light); padding: 20px; margin-bottom: 20px; border-radius: 0 8px 8px 0; }
.data-tag h4 { color: var(--emerald-main); font-size: 13px; text-transform: uppercase; margin-bottom: 6px; }
.hero-home { height: 85vh; background: linear-gradient(rgba(2, 44, 34, 0.9), rgba(2, 44, 34, 0.85)), url('https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?auto=format&fit=crop&w=1920'); background-size: cover; background-position: center; display: flex; flex-direction: column; justify-content: center; align-items: center; color: white; text-align: center; padding: 0 20px; margin-top: 80px; }
.hero-home h1 { font-family: 'Playfair Display', serif; font-size: 68px; margin-bottom: 25px; }
.grid-home { display: grid; grid-template-columns: repeat(4, 1fr); gap: 25px; max-width: 1300px; margin: -80px auto 80px; padding: 0 5%; position: relative; z-index: 10; }
.card-home { background: white; padding: 35px; border-radius: 12px; box-shadow: 0 25px 50px rgba(0,0,0,0.05); transition: 0.3s; text-decoration: none; color: inherit; border-bottom: 4px solid transparent; }
.card-home:hover { transform: translateY(-10px); border-bottom-color: var(--emerald-light); }
.card-home h3 { font-family: 'Playfair Display', serif; color: var(--emerald-main); font-size: 22px; margin-bottom: 12px; }
footer { background: var(--emerald-dark); color: rgba(255,255,255,0.6); text-align: center; padding: 60px 20px; font-size: 14px; }
CSS_EOF

# 2. 首页 (index.html) - 添加了项目背景说明
cat << 'HTML_EOF' > index.html
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Eco-Legacy | Academic Research Portal</title><link rel="stylesheet" href="css/style.css"></head>
<body>
    <nav class="navbar"><a href="index.html" class="brand">ECO-LEGACY</a><div class="nav-links"><a href="index.html" class="active">Home</a><a href="indus.html">Indus Valley</a><a href="egypt.html">Ancient Egypt</a><a href="greece.html">Ancient Greece</a><a href="singapore.html">Singapore 2030</a></div></nav>
    <header class="hero-home">
        <span style="color: var(--emerald-light); font-weight:600; letter-spacing:3px; text-transform:uppercase; font-size:13px; margin-bottom:15px;">P6 Social Studies Excellence Initiative</span>
        <h1>Echoes of Antiquity</h1>
        <p>A comprehensive research inquiry into the thermodynamics, hydraulic stewardship, and kinetic intelligence of ancient engineering—and their modern applications for a sustainable Singapore 2030.</p>
    </header>
    <main class="grid-home">
        <a href="indus.html" class="card-home"><h3>01 // Indus Valley</h3><p>Analyzing the Bronze Age mastery of thermodynamics, Venturi wind corridors, and high-density microclimate control systems.</p></a>
        <a href="egypt.html" class="card-home"><h3>02 // Ancient Egypt</h3><p>Investigating the fluid mechanics of zero-carbon basin irrigation networks and data-driven equity governance via Nilometers.</p></a>
        <a href="greece.html" class="card-home"><h3>03 // Ancient Greece</h3><p>Examining the mechanical advantage of kinetic watermills and the Socratic framework of passive solar urban planning.</p></a>
        <a href="singapore.html" class="card-home" style="background: var(--emerald-main); color: white;"><h3 style="color: var(--emerald-light);">04 // Eric's SG 2030 Plan</h3><p style="color: rgba(255,255,255,0.8);">A strategic synthesis mapping ancient engineering templates onto modern Singapore’s Green Plan targets.</p></a>
    </main>
    <footer><p>&copy; 2026 Made by Eric. All Rights Reserved.</p></footer>
</body>
</html>
HTML_EOF

# 3. 印度河流域 (indus.html) - 内容深度扩展
cat << 'HTML_EOF' > indus.html
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><title>Indus Valley | Engineering</title><link rel="stylesheet" href="css/style.css"></head>
<body>
    <nav class="navbar"><a href="index.html" class="brand">ECO-LEGACY</a><div class="nav-links"><a href="index.html">Home</a><a href="indus.html" class="active">Indus Valley</a><a href="egypt.html">Ancient Egypt</a><a href="greece.html">Ancient Greece</a><a href="singapore.html">Singapore 2030</a></div></nav>
    <header class="page-header" style="background-image: url('https://images.unsplash.com/photo-1608963473132-c67efbe56b06?auto=format&fit=crop&w=1920');">
        <h1>I. The Indus Valley Civilisation</h1>
        <p>A Masterclass in Passive Thermodynamics and Grid-Based Microclimate Manipulation.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>The Grid as a Thermodynamic Machine</h2>
            <p>The urban planning of Harappa and Mohenjo-Daro represents a paradigm shift from organic, chaotic growth to structured, climate-responsive design. By utilizing a strictly orthogonal grid, Indus planners did more than impose order; they engineered the city as a heat-mitigation tool. This cardinal grid orientation was essential for optimizing natural airflow in a climate dominated by intense solar radiation.</p>
            <h3>Fluid Dynamics and Venturi-Effect Urbanism</h3>
            <p>The streets were not merely paths for transport; they acted as conduits for wind. By aligning the primary thoroughfares with the prevailing seasonal wind directions, the engineers generated a constant convective flow. This constant movement of air created a low-pressure zone that sucked hot air out of residential interiors—a phenomenon known as the Venturi effect. This passive cooling system allowed the population to survive in high-density environments without active energy consumption.</p>
            <h3>Societal Health via Sanitary Infrastructure</h3>
            <p>Beyond thermal control, the Indus Valley achieved the world’s first standardized public sanitation system. Their reliance on gravity-fed, gradient-based drainage canals, connected to every household, demonstrates a profound understanding of hydrological flow. By separating waste-water from living quarters, they prevented the pathogenic buildup that plagued other ancient societies, proving that civil engineering is the foundation of public health.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/owhYIZgSI-Q" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Thermal Efficiency</h4><p>The 1:2:4 brick ratio provided the ideal "thermal mass," absorbing midday heat and releasing it only during the cool night, stabilizing interior temperatures naturally.</p></div>
        </aside>
    </div>
</body>
</html>
HTML_EOF

# 4. 古埃及 (egypt.html) - 内容深度扩展
cat << 'HTML_EOF' > egypt.html
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><title>Ancient Egypt | Hydrology</title><link rel="stylesheet" href="css/style.css"></head>
<body>
    <nav class="navbar"><a href="index.html" class="brand">ECO-LEGACY</a><div class="nav-links"><a href="index.html">Home</a><a href="indus.html">Indus Valley</a><a href="egypt.html" class="active">Ancient Egypt</a><a href="greece.html">Ancient Greece</a><a href="singapore.html">Singapore 2030</a></div></nav>
    <header class="page-header" style="background-image: url('https://images.unsplash.com/photo-1539650116574-8efeb43e2750?auto=format&fit=crop&w=1920');">
        <h1>II. Ancient Egyptian Civilisation</h1>
        <p>Hydraulic Stewardship, Dynamic Basin Infrastructure, and Data-Driven Governance.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>The Philosophy of Hydraulic Stewardship</h2>
            <p>Ancient Egyptian civilization is a triumph of adaptation over defiance. Unlike cultures that sought to dam the Nile, the Egyptians engineered their society to pulse in rhythm with the river’s annual inundation, known as <em>Akhet</em>. Their hydraulic engineering was not about controlling nature, but about maximizing the productive potential of seasonal fluctuations.</p>
            <h3>Basin Engineering: The Circular Economy of Agriculture</h3>
            <p>The Egyptian basin irrigation system was a masterclass in low-energy resource management. By creating a series of massive earthen dikes, engineers divided the floodplains into vast, manageable basins. When the Nile flooded, these basins were flooded with water and mineral-rich silt. The water was held in these basins for weeks, allowing it to percolate into the soil while simultaneously depositing nutrient-dense sediments. This natural fertilization process meant the land remained fertile for millennia without chemical intervention—a primitive yet perfect circular economy.</p>
            <h3>The Nilometer: Birth of Data Governance</h3>
            <p>Perhaps the most significant contribution was the "Nilometer"—a vertical stone column calibrated to measure the river's rise. This was not just a tool; it was an instrument of state policy. By collecting empirical data on the flood height, the state could accurately forecast agricultural yields and set tax rates. This centralized, data-driven approach to resource governance prevented famine and ensured social stability during periods of environmental volatility, serving as an ancient blueprint for modern governmental risk management.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/v1EdMt7Hs7E" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Hydraulic Governance</h4><p>The Nilometer transformed hydrological data into social equity, ensuring taxation was proportional to environmental reality.</p></div>
        </aside>
    </div>
</body>
</html>
HTML_EOF

# 5. 古希腊 (greece.html) - 内容深度扩展
cat << 'HTML_EOF' > greece.html
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><title>Ancient Greece | Kinetic Energy</title><link rel="stylesheet" href="css/style.css"></head>
<body>
    <nav class="navbar"><a href="index.html" class="brand">ECO-LEGACY</a><div class="nav-links"><a href="index.html">Home</a><a href="indus.html">Indus Valley</a><a href="egypt.html">Ancient Egypt</a><a href="greece.html" class="active">Ancient Greece</a><a href="singapore.html">Singapore 2030</a></div></nav>
    <header class="page-header" style="background-image: url('https://images.unsplash.com/photo-1505881502353-a1986add3762?auto=format&fit=crop&w=1920');">
        <h1>III. Ancient Greek Engineering</h1>
        <p>Kinetic Energy Conversion, Mechanical Advantage, and Socratic Solar Architecture.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>Mechanical Advantage and Energy Decoupling</h2>
            <p>The Greek approach to civil engineering shifted the paradigm from static infrastructure to dynamic, kinetic machinery. Faced with the limitations of manual human and animal labor, Hellenistic inventors utilized the principles of physics to augment human power, specifically through the gear and the vertical waterwheel.</p>
            <h3>The Industrialization of Kinetic Energy</h3>
            <p>The vertical-axle waterwheel, used to drive milling stones, was the first true step towards mechanized industry. By converting the flow of water into torque via wooden gear assemblies, the Greeks achieved a dramatic "mechanical advantage." This allowed for the processing of grain at scales that were previously impossible, effectively decoupling economic production from biological limits. This multiplication of force was a precursor to the Industrial Revolution, demonstrating that mechanical innovation could enhance the resilience of the state.</p>
            <h3>Socratic Solar Design: The Olynthus Grid</h3>
            <p>The Greeks were arguably the first to formalize "passive solar" architecture into urban law. The philosopher Socrates famously noted that a house should be warm in winter and cool in summer. This was achieved through the "Olynthus Grid," where urban planning codes mandated that all domestic structures be oriented towards the South. This exploited the sun's lower angle in winter to maximize light and heat penetration, while the high summer sun was blocked by architectural overhangs. This mastery of geometry to regulate indoor climate remains the gold standard for modern energy-efficient architecture.</p>
        </article>
        <aside class="sidebar">
            <div class="video-box"><iframe src="https://www.youtube.com/embed/arD374MFk4w" allowfullscreen></iframe></div>
            <div class="data-tag"><h4>Energy Leverage</h4><p>The Greek watermill provided a 50:1 leverage ratio, replacing manual exhaustion with continuous, renewable mechanical force.</p></div>
        </aside>
    </div>
</body>
</html>
HTML_EOF

# 6. 新加坡 2030 (singapore.html) - 内容深度扩展
cat << 'HTML_EOF' > singapore.html
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><title>Singapore 2030 | Strategy</title><link rel="stylesheet" href="css/style.css"></head>
<body>
    <nav class="navbar"><a href="index.html" class="brand">ECO-LEGACY</a><div class="nav-links"><a href="index.html">Home</a><a href="indus.html">Indus Valley</a><a href="egypt.html">Ancient Egypt</a><a href="greece.html">Ancient Greece</a><a href="singapore.html" class="active">Singapore 2030</a></div></nav>
    <header class="page-header" style="background-image: url('https://images.unsplash.com/photo-1525625293386-3f8f99389edd?auto=format&fit=crop&w=1920');">
        <h1>IV. Synthesis: Singapore Green Plan 2030</h1>
        <p>Translating the Physics of Antiquity into Modern Urban Resilience.</p>
    </header>
    <div class="main-container">
        <article class="article-body">
            <h2>The Future-Proofing of Hyper-Dense Island Urbanism</h2>
            <p>Singapore’s 2030 sustainability mandate is not merely a technological upgrade; it is an exercise in structural re-imagination. By examining the Indus, Egyptian, and Greek models, we see that the most resilient cities are those that work with, rather than against, thermodynamic and hydrological laws. This synthesis of ancient wisdom and modern computational power is the key to our island's survival.</p>
            <h3>1. Re-engineering Microclimates with Indus Logic</h3>
            <p>The "Tengah" model is a 21st-century iteration of Harappan urbanism. By employing Computational Fluid Dynamics (CFD), we can recreate the wind corridors of the Indus Valley. By optimizing the orientation of HDB blocks to funnel monsoon breezes and utilizing high-thermal-mass building materials, we can achieve "passive cooling" that drastically reduces reliance on mechanical air-conditioning, thereby lowering the Urban Heat Island (UHI) effect.</p>
            <h3>2. The Modern Nilometer: Managing Water Security</h3>
            <p>Singapore's Marina Barrage and the ABC Waters Programme are the direct evolutions of Egyptian basin irrigation. Our modern urban water-retention systems, which naturalize concrete drains into bio-filtering landscapes, mirror the silt-management strategies of the Nile floodplains. We are effectively utilizing the city-state's entire footprint as a giant "Nilometer"—monitoring, capturing, and purifying every drop of rainwater through integrated data-driven sensor networks.</p>
            <h3>3. Socratic Photovoltaic Optimization</h3>
            <p>To reach our 2 GWp solar energy target, we must move beyond simple roof installation. Adopting the Greek Olynthus framework means enforcing "Socratic geometry" in our new industrial estates. By integrating solar-harvesting facades into the very architecture of buildings—optimized by solar-tracking geometry rather than just flat placement—we can maximize renewable energy generation across vertical urban surfaces, ensuring that every square meter of our island contributes to the national grid.</p>
        </article>
        <aside class="sidebar" style="background: var(--emerald-dark); color: white;">
            <h3 style="color: var(--emerald-light); margin-top:0;">Strategic Alignment</h3>
            <ul style="color: rgba(255,255,255,0.8); list-style-type: none; margin-top:20px;">
                <li style="margin-bottom:15px;"><strong>Indus Thermodynamic Passivity</strong> &rarr; 80% Green Building Target</li>
                <li style="margin-bottom:15px;"><strong>Egyptian Hydraulic Stewardship</strong> &rarr; 130L Domestic Water Target</li>
                <li style="margin-bottom:15px;"><strong>Greek Kinetic Leverage</strong> &rarr; 2 GWp Solar Energy Goals</li>
            </ul>
        </aside>
    </div>
</body>
</html>
HTML_EOF

echo "✅ Build complete! All pages generated with deep academic content."
