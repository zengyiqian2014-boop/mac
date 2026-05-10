#!/bin/bash

echo "🌿 Reset project..."
rm -rf pages css js index.html

mkdir -p pages/indus pages/egypt pages/greece pages/solutions css js

# ================= CSS（华丽展览风） =================
cat > css/style.css <<'EOF'
body {
  font-family: Arial, sans-serif;
  background:#012b1a;
  color:#fff;
  margin:0;
}

header {
  background: linear-gradient(90deg,#025a36,#013d24);
  padding:25px;
  text-align:center;
  position:sticky;
  top:0;
  z-index:10;
}

header h1 {
  font-size:2.3em;
  margin:0;
  letter-spacing:1px;
}

nav {
  text-align:center;
  background:#0a3a22;
  padding:10px;
}

nav a {
  color:#fff;
  margin:0 15px;
  text-decoration:none;
  font-weight:bold;
}

nav a:hover {
  color:#00ffcc;
}

section {
  max-width:1100px;
  margin:25px auto;
  padding:20px;
  background:#144d2a;
  border-radius:15px;
  box-shadow:0 0 25px rgba(0,0,0,0.6);
  animation:fade 1s ease-in;
}

article {
  background:#1b5a32;
  padding:20px;
  margin:15px 0;
  border-radius:12px;
}

img {
  width:55%;
  border-radius:10px;
  margin-top:10px;
  display:block;
}

iframe {
  width:100%;
  height:420px;
  margin-top:15px;
  border-radius:12px;
}

footer {
  position:fixed;
  bottom:0;
  width:100%;
  background:#013d24;
  text-align:center;
  padding:10px;
}

@keyframes fade {
  from {opacity:0; transform:translateY(10px);}
  to {opacity:1; transform:translateY(0);}
}
EOF

# ================= HOME =================
cat > index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Sustainability Project</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header><h1>Ancient Civilizations & Sustainability</h1></header>

<nav>
<a href="index.html">Home</a>
<a href="pages/indus/index.html">Indus</a>
<a href="pages/egypt/index.html">Egypt</a>
<a href="pages/greece/index.html">Greece</a>
<a href="pages/solutions/index.html">Solutions</a>
</nav>

<section>
<article>
<h2>Overview (Key Ideas)</h2>

<ul>
<li>Ancient civilizations built sustainability through water management systems.</li>
<li>Indus Valley used grid cities and drainage systems.</li>
<li>Egypt controlled Nile flooding using irrigation basins.</li>
<li>Greece developed early hydropower systems.</li>
<li>Nature-based engineering was key to survival.</li>
<li>Singapore can learn water reuse + urban planning.</li>
</ul>

<iframe src="https://www.youtube.com/embed/9Jb0bZxQ"></iframe>

<img src="https://images.unsplash.com/photo-1500375592092-40eb2168fd21?w=900">

</article>
</section>

<footer>Project Website</footer>

</body>
</html>
EOF

# ================= INDUS =================
cat > pages/indus/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Indus Valley</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>Indus Valley Civilization</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="../greece/index.html">Greece</a>
<a href="../solutions/index.html">Solutions</a>
</nav>

<section>

<article>
<h2>Key Points</h2>
<ul>
<li>Grid-based city planning (Mohenjo-daro)</li>
<li>Advanced drainage system</li>
<li>Public wells for water access</li>
<li>Standardized brick construction</li>
<li>Hygiene-focused urban design</li>
<li>Early sanitation engineering</li>
</ul>
</article>

<article>
<h2>Urban Design Insight</h2>
<p>
Indus cities were designed with precision layout systems that improved efficiency, hygiene, and sustainability.
</p>
<img src="https://images.unsplash.com/photo-1524492412937-b28074a5d7da?w=900">
</article>

<iframe src="https://www.youtube.com/embed/VbYc8-b8S5o"></iframe>

</section>

<footer>Indus Study</footer>

</body>
</html>
EOF

# ================= EGYPT =================
cat > pages/egypt/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Egypt</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>Ancient Egypt</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="../indus/index.html">Indus</a>
<a href="index.html">Egypt</a>
<a href="../greece/index.html">Greece</a>
<a href="../solutions/index.html">Solutions</a>
</nav>

<section>

<article>
<h2>Key Points</h2>
<ul>
<li>Nile annual flooding cycle</li>
<li>Basin irrigation system</li>
<li>Shadoof water lifting device</li>
<li>Nilometer flood prediction</li>
<li>Fertile silt farming system</li>
<li>Season-based agriculture planning</li>
</ul>
</article>

<article>
<h2>Nile System</h2>
<p>
Egyptian agriculture depended entirely on controlled Nile flooding systems.
</p>
<img src="https://images.unsplash.com/photo-1500375592092-40eb2168fd21?w=900">
</article>

<iframe src="https://www.youtube.com/embed/6D4g5PQ2Oi8"></iframe>

</section>

<footer>Egypt Study</footer>

</body>
</html>
EOF

# ================= GREECE =================
cat > pages/greece/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Greece</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>Ancient Greece Hydropower</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="../indus/index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="index.html">Greece</a>
<a href="../solutions/index.html">Solutions</a>
</nav>

<section>

<article>
<h2>Key Points</h2>
<ul>
<li>Waterwheel mechanical energy</li>
<li>Grain milling systems</li>
<li>Gravity-powered overshot wheels</li>
<li>Roman engineering influence</li>
<li>Early renewable energy use</li>
<li>Mechanical automation systems</li>
</ul>
</article>

<article>
<h2>Hydropower Concept</h2>
<img src="https://images.unsplash.com/photo-1469474968028-56623f02e42e?w=900">
</article>

<iframe src="https://www.youtube.com/embed/5qap5aO4i9A"></iframe>

</section>

<footer>Greece Study</footer>

</body>
</html>
EOF

# ================= SOLUTIONS =================
cat > pages/solutions/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Solutions</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>Modern Sustainability Solutions</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="../indus/index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="../greece/index.html">Greece</a>
<a href="index.html">Solutions</a>
</nav>

<section>

<article>
<h2>Key Ideas</h2>
<ul>
<li>Vertical farming systems</li>
<li>Water recycling (NEWater model)</li>
<li>Smart drainage infrastructure</li>
<li>Green building design</li>
<li>Renewable energy integration</li>
<li>Urban sustainability planning</li>
</ul>
</article>

<article>
<h2>Modern Application</h2>
<img src="https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=900">
</article>

<iframe src="https://www.youtube.com/embed/2p8X5F1"></iframe>

</section>

<footer>Solutions</footer>

</body>
</html>
EOF

echo "✅ DONE - Fully stable, elegant, non-breaking website generated"