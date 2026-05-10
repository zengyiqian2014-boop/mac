#!/bin/bash

echo "🏛️ Generating Museum-Grade P6 Social Studies Project..."

rm -rf pages css index.html
mkdir -p pages/indus pages/egypt pages/greece pages/singapore css

# ================= STYLE (MORE ELEGANT) =================
cat > css/style.css <<'EOF'
body{
  margin:0;
  font-family: "Georgia", serif;
  background:#031a13;
  color:#f2f2f2;
  line-height:1.9;
}

header{
  background:linear-gradient(90deg,#012b1d,#00140e);
  padding:30px;
  text-align:center;
  letter-spacing:1px;
}

header h1{
  margin:0;
  font-size:2.3em;
}

nav{
  background:#0b2f22;
  text-align:center;
  padding:12px;
}

nav a{
  color:#c8ffe6;
  margin:0 14px;
  text-decoration:none;
  font-weight:bold;
}

nav a:hover{
  text-decoration:underline;
}

section{
  max-width:1100px;
  margin:50px auto;
  padding:20px;
}

.card{
  background:linear-gradient(145deg,#123f2d,#0c2c20);
  padding:30px;
  margin:45px 0;
  border-left:4px solid #00ffcc;
  border-radius:12px;
  box-shadow:0 0 20px rgba(0,255,200,0.08);
}

h2{
  color:#9fffe0;
  margin-bottom:10px;
  font-size:1.4em;
}

img{
  width:58%;
  border-radius:10px;
  margin:15px 0;
  display:block;
}

footer{
  position:fixed;
  bottom:0;
  width:100%;
  background:#00140e;
  text-align:center;
  font-size:12px;
  padding:10px;
}
EOF

# ================= HOME =================
cat > index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>P6 Social Studies Project</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<h1>P6 SOCIAL STUDIES PROJECT</h1>
</header>

<nav>
<a href="index.html">Home</a>
<a href="pages/indus/index.html">Indus Valley</a>
<a href="pages/egypt/index.html">Ancient Egypt</a>
<a href="pages/greece/index.html">Ancient Greece</a>
<a href="pages/singapore/index.html">Singapore</a>
</nav>

<section>

<div class="card">
<h2>Introduction to Ancient Civilisations</h2>
<p>
This project explores how early civilisations developed in response to their natural environments, especially river systems. It focuses on the Indus Valley, Ancient Egypt, Ancient Greece, and modern Singapore. These societies demonstrate how geography influences human settlement, agriculture, engineering, and long-term sustainability. Rivers provided essential resources such as water, fertile soil, and transportation routes, allowing early communities to grow into complex urban societies. Over time, humans developed advanced systems such as irrigation networks, drainage systems, and early engineering structures to improve living conditions and support population growth. The study also connects ancient innovations to modern urban planning in Singapore, showing continuity in human adaptation strategies.
</p>
</div>

</section>

<footer>P6 Social Studies</footer>

</body>
</html>
EOF

# ================= INDUS =================
cat > pages/indus/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Indus Valley Civilisation</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>INDUS VALLEY CIVILISATION</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="../greece/index.html">Greece</a>
<a href="../singapore/index.html">Singapore</a>
</nav>

<section>

<div class="card">
<h2>Urban Design and Organisation</h2>
<img src="https://upload.wikimedia.org/wikipedia/commons/9/9d/Mohenjo-daro.jpg">
<p>
The Indus Valley Civilization is recognised for its highly structured urban design. Cities such as Mohenjo-daro were carefully planned using grid systems, where streets intersected at right angles to create a logical and efficient layout. This level of organisation suggests strong administrative control and long-term planning. Buildings were constructed using uniform baked bricks, indicating standardised measurement systems. One of the most remarkable features was the drainage system, where covered channels ran alongside streets to remove wastewater. This reflects an advanced understanding of hygiene, environmental management, and engineering.
</p>
</div>

<div class="card">
<h2>Water Systems and Daily Life</h2>
<img src="https://upload.wikimedia.org/wikipedia/commons/4/4f/Indus_valley_well.jpg">
<p>
Water played a central role in sustaining life in the Indus Valley. Many households had private wells, ensuring reliable access to clean water. This reduced dependence on external water sources and increased resilience during environmental changes. Public structures such as the Great Bath suggest that water also had cultural significance. The bathing complex was waterproofed using bitumen, demonstrating advanced material knowledge. Combined with wells, drainage systems, and seasonal rainfall usage, the civilisation developed a balanced and sustainable water management system.
</p>
</div>

<div class="card">
<h2>Legacy and Modern Relevance</h2>
<img src="https://upload.wikimedia.org/wikipedia/commons/3/3a/Modern_city_planning.jpg">
<p>
The principles of the Indus Valley Civilization continue to influence modern urban planning. Singapore, for example, applies similar ideas through efficient drainage systems, land optimisation, and integrated water management. The emphasis on cleanliness, infrastructure planning, and sustainability demonstrates how ancient knowledge remains relevant in modern society.
</p>
</div>

</section>

<footer>Indus Valley</footer>

</body>
</html>
EOF