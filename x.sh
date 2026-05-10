#!/bin/bash

echo "🏆 Generating P6 A* RUBRIC-ALIGNED PROJECT..."

rm -rf pages css index.html
mkdir -p pages/indus pages/egypt pages/greece pages/singapore css

# ================= STYLE =================
cat > css/style.css <<'EOF'
body{
  margin:0;
  font-family: Georgia;
  background:#041a12;
  color:#f5f5f5;
  line-height:1.9;
}

header{
  background:#012b1d;
  padding:28px;
  text-align:center;
}

header h1{
  margin:0;
  font-size:2.3em;
}

nav{
  background:#0a2d1f;
  text-align:center;
  padding:10px;
}

nav a{
  color:#bfffe0;
  margin:0 12px;
  text-decoration:none;
}

section{
  max-width:1100px;
  margin:50px auto;
  padding:20px;
}

.block{
  background:#123f2d;
  padding:28px;
  margin:40px 0;
  border-left:4px solid #00ffcc;
  border-radius:10px;
}

iframe{
  width:100%;
  height:430px;
  border-radius:10px;
  margin-bottom:15px;
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
<title>P6 A* Social Studies</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<h1>P6 SOCIAL STUDIES (A* RUBRIC PROJECT)</h1>
</header>

<nav>
<a href="index.html">Home</a>
<a href="pages/indus/index.html">Indus</a>
<a href="pages/egypt/index.html">Egypt</a>
<a href="pages/greece/index.html">Greece</a>
<a href="pages/singapore/index.html">Singapore</a>
</nav>

<section>

<div class="block">
<h2>Introduction (Rubric Overview)</h2>
<p>
This project examines how ancient civilisations developed systems to manage water, agriculture, and urban life, and how these systems influenced modern sustainability practices in Singapore. It follows the Primary 6 Social Studies syllabus framework, focusing on the features and legacies of ancient civilisations. The four key civilisations studied include the Indus Valley, Ancient Egypt, Ancient Greece, and modern Singapore as a case study of continuity and adaptation. The project is structured according to SEAB assessment expectations, emphasizing knowledge, understanding, and application.
</p>
</div>

</section>

<footer>P6 A* Project</footer>

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

<header><h1>INDUS VALLEY CIVILISATION</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="../greece/index.html">Greece</a>
<a href="../singapore/index.html">Singapore</a>
</nav>

<section>

<div class="block">
<iframe src="https://www.youtube.com/embed/VbYc8-b8S5o"></iframe>
<h2>BLOCK 1: Knowledge (Urban Systems)</h2>
<p>
The Indus Valley Civilization was one of the earliest urban societies in history, known for its advanced city planning and infrastructure. Cities such as Mohenjo-daro were built using grid systems, standardized bricks, and carefully designed drainage networks. This shows that the civilisation had strong administrative organisation and technical knowledge in engineering and urban design.
</p>
</div>

<div class="block">
<h2>BLOCK 2: Understanding (Why it matters)</h2>
<p>
These systems were important because they improved hygiene, reduced flooding risks, and supported large populations. The drainage system especially shows an understanding of environmental health, which was rare for ancient civilisations. It also shows that the people valued long-term sustainability rather than short-term convenience.
</p>
</div>

<div class="block">
<h2>BLOCK 3: Application (Singapore link)</h2>
<p>
Singapore uses similar principles today through its drainage systems, urban zoning, and water management strategies. Like the Indus Valley, Singapore focuses on efficient land use and sustainable city planning. This demonstrates how ancient ideas continue to influence modern urban design.
</p>
</div>

</section>

<footer>Indus Valley</footer>

</body>
</html>
EOF

# ================= EGYPT =================
cat > pages/egypt/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Ancient Egypt</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>ANCIENT EGYPT</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="../indus/index.html">Indus</a>
<a href="index.html">Egypt</a>
<a href="../greece/index.html">Greece</a>
<a href="../singapore/index.html">Singapore</a>
</nav>

<section>

<div class="block">
<iframe src="https://www.youtube.com/embed/6D4g5PQ2Oi8"></iframe>
<h2>BLOCK 1: Knowledge (Nile System)</h2>
<p>
Ancient Egypt developed along the Nile River, which provided predictable flooding cycles that enriched soil for agriculture. This allowed stable farming and long-term settlement.
</p>
</div>

<div class="block">
<h2>BLOCK 2: Understanding</h2>
<p>
The Nile’s predictability allowed Egyptians to build irrigation systems such as canals and basins, which maximised agricultural output and supported population growth.
</p>
</div>

<div class="block">
<h2>BLOCK 3: Application</h2>
<p>
Modern water management systems in Singapore, such as reservoirs and drainage canals, reflect similar principles of controlled water usage and environmental adaptation.
</p>
</div>

</section>

<footer>Egypt</footer>

</body>
</html>
EOF

# ================= GREECE =================
cat > pages/greece/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Ancient Greece</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>ANCIENT GREECE</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="../indus/index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="index.html">Greece</a>
<a href="../singapore/index.html">Singapore</a>
</nav>

<section>

<div class="block">
<iframe src="https://www.youtube.com/embed/5qap5aO4i9A"></iframe>
<h2>BLOCK 1: Knowledge</h2>
<p>
Ancient Greece developed water-powered technologies such as waterwheels to convert natural energy into mechanical power.
</p>
</div>

<div class="block">
<h2>BLOCK 2: Understanding</h2>
<p>
This innovation reduced manual labour and improved production efficiency, marking an early step toward mechanisation.
</p>
</div>

<div class="block">
<h2>BLOCK 3: Application</h2>
<p>
Modern renewable energy systems, such as hydropower plants, are based on the same principles of energy conversion.
</p>
</div>

</section>

<footer>Greece</footer>

</body>
</html>
EOF

# ================= SINGAPORE =================
cat > pages/singapore/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Singapore</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>SINGAPORE</h1></header>

<nav>
<a href="../../index.html">Home</a>
<a href="../indus/index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="../greece/index.html">Greece</a>
<a href="index.html">Singapore</a>
</nav>

<section>

<div class="block">
<iframe src="https://www.youtube.com/embed/9Jb0bZxQ"></iframe>
<h2>BLOCK 1: Knowledge</h2>
<p>
Singapore uses advanced water systems including NEWater recycling and desalination to ensure water security.
</p>
</div>

<div class="block">
<h2>BLOCK 2: Understanding</h2>
<p>
These systems are necessary because Singapore lacks natural freshwater resources, requiring technological solutions.
</p>
</div>

<div class="block">
<h2>BLOCK 3: Application</h2>
<p>
Like ancient civilisations, Singapore adapts to environmental limitations through innovation and long-term planning.
</p>
</div>

</section>

<footer>Singapore</footer>

</body>
</html>
EOF

echo "🏆 A* RUBRIC PROJECT COMPLETE"