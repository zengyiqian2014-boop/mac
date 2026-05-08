#!/bin/bash

echo "🌿 Generating A+ Sustainability Exhibition Website..."

# =========================
# 清理旧文件
# =========================
rm -rf css js pages civilisations
rm -f index.html

mkdir css js pages civilisations

# =========================
# CSS 文件
# =========================
cat > css/style.css << 'EOF'
body {
  margin:0;
  font-family: Arial, sans-serif;
  background: #eaf4ea;
  color: #222;
}
header {
  background: #0f3d2e;
  padding: 15px;
}
header nav a {
  color: white;
  margin-right: 20px;
  text-decoration: none;
  font-weight: bold;
}
.hero {
  background: linear-gradient(135deg,#0f3d2e,#1b5e20);
  color:white;
  text-align:center;
  padding:80px 20px;
}
.box {
  max-width:1000px;
  margin:30px auto;
  background:white;
  padding:20px;
  border-radius:12px;
  box-shadow:0 5px 15px rgba(0,0,0,0.1);
}
.section {
  border-left:5px solid #0f3d2e;
  padding:12px;
  margin:12px 0;
  background:#f9fbf9;
}
img.carousel {
  width:100%;
  border-radius:10px;
  max-height:400px;
}
iframe.video {
  width:100%;
  height:400px;
  border:none;
  border-radius:10px;
}
footer {
  text-align:center;
  padding:10px;
  margin-top:20px;
  background:#0f3d2e;
  color:white;
}
EOF

# =========================
# JS 文件（轮播）
# =========================
cat > js/main.js << 'EOF'
let slideIndex = 0;
function showSlides() {
  let slides = document.getElementsByClassName("carousel");
  for (let i = 0; i < slides.length; i++) slides[i].style.display = "none";
  slideIndex++;
  if(slideIndex > slides.length) slideIndex = 1;
  slides[slideIndex-1].style.display = "block";
  setTimeout(showSlides,3000);
}
window.onload = showSlides;
EOF

# =========================
# 首页
# =========================
cat > index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sustainability Exhibition</title>
<link rel="stylesheet" href="css/style.css">
<script src="js/main.js"></script>
</head>
<body>
<header>
<nav>
<a href="index.html">Home</a>
<a href="civilisations/index.html">Civilisations</a>
<a href="pages/solution.html">Solution</a>
</nav>
</header>

<div class="hero">
<h1>Learning From Ancient Civilisations</h1>
<p>Building a Sustainable Future for Singapore</p>
</div>

<div class="box">
<h2>Image Carousel</h2>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Indus+Valley">
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Ancient+Egypt">
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Ancient+Greece">

<div class="section">
<h2>Introduction</h2>
<p>Explore ancient ideas to achieve sustainability in Singapore today.</p>
</div>

<div class="section">
<h2>Video Inspiration</h2>
<iframe class="video" src="https://www.youtube.com/embed/3E3cF6gq1vE" allowfullscreen></iframe>
</div>
</div>

<footer>
Back to top | &copy; Sustainability Exhibition
</footer>
</body>
</html>
EOF

# =========================
# Civilisations
# =========================
cat > civilisations/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ancient Civilisations</title>
<link rel="stylesheet" href="../css/style.css">
<script src="../js/main.js"></script>
</head>
<body>
<header>
<nav>
<a href="../index.html">Home</a>
<a href="index.html">Civilisations</a>
<a href="../pages/solution.html">Solution</a>
</nav>
</header>

<div class="hero">
<h1>Ancient Civilisations</h1>
</div>

<div class="box">
<div class="section">
<h2>Indus Valley</h2>
<p>Natural ventilation and passive cooling architecture.</p>
</div>
<div class="section">
<h2>Ancient Egypt</h2>
<p>Nile River irrigation to water crops efficiently.</p>
</div>
<div class="section">
<h2>Ancient Greece</h2>
<p>Hydro power used for laborious tasks.</p>
</div>
</div>

<footer>
Back to top | &copy; Sustainability Exhibition
</footer>
</body>
</html>
EOF

# =========================
# Solution
# =========================
cat > pages/solution.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sustainable Solutions</title>
<link rel="stylesheet" href="../css/style.css">
<script src="../js/main.js"></script>
</head>
<body>
<header>
<nav>
<a href="../index.html">Home</a>
<a href="../civilisations/index.html">Civilisations</a>
<a href="solution.html">Solution</a>
</nav>
</header>

<div class="hero">
<h1>Our Sustainable Solutions</h1>
</div>

<div class="box">
<div class="section">
<h2>Problem</h2>
<p>Energy efficiency, water scarcity, and urban heat in Singapore.</p>
</div>
<div class="section">
<h2>Solution</h2>
<p>Green housing inspired by ancient civilisations with solar panels, passive cooling, and water recycling.</p>
</div>
<div class="section">
<h2>Video Demo</h2>
<iframe class="video" src="https://www.youtube.com/embed/3E3cF6gq1vE" allowfullscreen></iframe>
</div>
</div>

<footer>
Back to top | &copy; Sustainability Exhibition
</footer>
</body>
</html>
EOF

echo "🌟 A+ Sustainability Exhibition Website Generated!"