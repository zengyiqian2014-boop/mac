#!/bin/bash

echo "🌿 Deleting old website files..."
rm -rf index.html css js civilisations pages

echo "🌿 Creating directories..."
mkdir -p css js civilisations/indus civilisations/egypt civilisations/greece pages/solution

# =========================
# CSS
# =========================
cat > css/style.css << 'EOF'
body { margin:0; font-family: Arial, sans-serif; background: #eaf4ea; color: #222; }
header { background: #0f3d2e url('https://upload.wikimedia.org/wikipedia/en/thumb/8/83/St_Stephen%27s_crest.png/60px-St_Stephen%27s_crest.png') no-repeat 20px center; background-size:50px 50px; padding: 15px 20px 15px 80px;}
header nav a { color:white; margin-right:20px; text-decoration:none; font-weight:bold;}
header nav a:hover { text-decoration:underline;}
.hero { background: linear-gradient(135deg,#0f3d2e,#1b5e20); color:white; text-align:center; padding:80px 20px;}
.box { max-width:1000px; margin:30px auto; background:white; padding:20px; border-radius:12px; box-shadow:0 5px 15px rgba(0,0,0,0.1); opacity:0; transform: translateY(20px); transition: opacity 0.6s ease, transform 0.6s ease; }
.box.visible { opacity:1; transform: translateY(0);}
.section { border-left:5px solid #0f3d2e; padding:12px; margin:12px 0; background:#f9fbf9;}
img.carousel { width:100%; border-radius:10px; max-height:400px;}
iframe.video { width:100%; height:400px; border:none; border-radius:10px;}
footer { text-align:center; padding:10px; margin-top:20px; background:#0f3d2e; color:white;}
EOF

# =========================
# JS
# =========================
cat > js/main.js << 'EOF'
let slideIndex=0;
function showSlides(){ 
  let slides=document.getElementsByClassName("carousel"); 
  for(let i=0;i<slides.length;i++) slides[i].style.display="none"; 
  slideIndex++; 
  if(slideIndex>slides.length) slideIndex=1; 
  if(slides.length>0) slides[slideIndex-1].style.display="block"; 
  setTimeout(showSlides,3000);
}
window.onload=function(){ 
  showSlides(); 
  let boxes=document.getElementsByClassName("box"); 
  for(let b of boxes) b.classList.add("visible");
};
EOF

# =========================
# 主页面
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
<a href="pages/solution/index.html">Solution</a>
</nav>
</header>
<div class="hero">
<h1>Learning From Ancient Civilisations</h1>
<p>Building a Sustainable Future for Singapore</p>
<img src="https://upload.wikimedia.org/wikipedia/en/thumb/8/83/St_Stephen%27s_crest.png/150px-St_Stephen%27s_crest.png" alt="St Stephen Crest">
</div>
<div class="box">
<h2>Image Carousel</h2>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Indus+Valley">
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Ancient+Egypt">
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Ancient+Greece">
</div>
<div class="box">
<h2>Introduction</h2>
<p>Explore ancient ideas to achieve sustainability in Singapore today. Learn from architecture, irrigation, and renewable energy of the past.</p>
</div>
<div class="box">
<h2>Video Inspiration</h2>
<iframe class="video" src="https://www.youtube.com/embed/3E3cF6gq1vE" allowfullscreen></iframe>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

# =========================
# Civilisations总页
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
<a href="../pages/solution/index.html">Solution</a>
</nav>
</header>
<div class="hero">
<h1>Ancient Civilisations</h1>
<p>Learn sustainable practices from the past</p>
</div>
<div class="box">
<h2>Indus Valley</h2>
<p>Natural ventilation, passive cooling architecture, water management, and city planning.</p>
<a href="indus/index.html">Read More</a>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Indus+Valley+Architecture">
</div>
<div class="box">
<h2>Ancient Egypt</h2>
<p>Nile River irrigation to water crops efficiently, crop rotation, and flood management.</p>
<a href="egypt/index.html">Read More</a>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Egypt+Irrigation">
</div>
<div class="box">
<h2>Ancient Greece</h2>
<p>Hydro power used for laborious tasks, watermills, and renewable energy concepts.</p>
<a href="greece/index.html">Read More</a>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Greek+Hydro+Power">
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

# =========================
# Indus 子页面
# =========================
cat > civilisations/indus/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Indus Valley</title>
<link rel="stylesheet" href="../../css/style.css">
<script src="../../js/main.js"></script>
</head>
<body>
<header>
<nav>
<a href="../index.html">Civilisations</a>
<a href="../../index.html">Home</a>
<a href="../../pages/solution/index.html">Solution</a>
</nav>
</header>
<div class="hero">
<h1>Indus Valley Civilization</h1>
<p>Architecture and sustainability practices</p>
</div>
<div class="box">
<h2>Urban Planning</h2>
<p>Grid streets, advanced drainage, and natural cooling in buildings.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Indus+City+Planning">
</div>
<div class="box">
<h2>Water Management</h2>
<p>Efficient water collection and distribution systems for agriculture and hygiene.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Indus+Water+Management">
</div>
<div class="box">
<h2>Video Example</h2>
<iframe class="video" src="https://www.youtube.com/embed/3E3cF6gq1vE" allowfullscreen></iframe>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

# =========================
# Ancient Egypt 子页面
# =========================
cat > civilisations/egypt/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ancient Egypt</title>
<link rel="stylesheet" href="../../css/style.css">
<script src="../../js/main.js"></script>
</head>
<body>
<header>
<nav>
<a href="../index.html">Civilisations</a>
<a href="../../index.html">Home</a>
<a href="../../pages/solution/index.html">Solution</a>
</nav>
</header>
<div class="hero">
<h1>Ancient Egypt</h1>
<p>Water management and irrigation</p>
</div>
<div class="box">
<h2>Nile Irrigation</h2>
<p>Using basin irrigation to water crops efficiently and sustain communities.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Egypt+Irrigation">
</div>
<div class="box">
<h2>Flood Management</h2>
<p>Seasonal flood control techniques for sustainable agriculture.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Egypt+Flood+Management">
</div>
<div class="box">
<h2>Video Example</h2>
<iframe class="video" src="https://www.youtube.com/embed/3E3cF6gq1vE" allowfullscreen></iframe>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

# =========================
# Ancient Greece 子页面
# =========================
cat > civilisations/greece/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ancient Greece</title>
<link rel="stylesheet" href="../../css/style.css">
<script src="../../js/main.js"></script>
</head>
<body>
<header>
<nav>
<a href="../index.html">Civilisations</a>
<a href="../../index.html">Home</a>
<a href="../../pages/solution/index.html">Solution</a>
</nav>
</header>
<div class="hero">
<h1>Ancient Greece</h1>
<p>Hydro power and sustainability</p>
</div>
<div class="box">
<h2>Watermills</h2>
<p>Using flowing water to perform laborious tasks efficiently.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Greek+Watermills">
</div>
<div class="box">
<h2>Renewable Energy Concepts</h2>
<p>Early adoption of hydro energy ideas for sustainable practices.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Greek+Hydro+Power">
</div>
<div class="box">
<h2>Video Example</h2>
<iframe class="video" src="https://www.youtube.com/embed/3E3cF6gq1vE" allowfullscreen></iframe>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

# =========================
# Solution 页
# =========================
cat > pages/solution/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Solution Ideas</title>
<link rel="stylesheet" href="../../css/style.css">
<script src="../../js/main.js"></script>
</head>
<body>
<header>
<nav>
<a href="../../index.html">Home</a>
<a href="../../civilisations/index.html">Civilisations</a>
<a href="index.html">Solution</a>
</nav>
</header>
<div class="hero">
<h1>Our Sustainability Solutions for Singapore</h1>
<p>Inspired by ancient civilisations</p>
</div>
<div class="box">
<h2>Urban Water Recycling</h2>
<p>Inspired by Ancient Egypt’s irrigation, implement basin water recycling in Singapore housing estates.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Urban+Water+Recycling">
</div>
<div class="box">
<h2>Passive Cooling Buildings</h2>
<p>Inspired by Indus Valley architecture, design buildings with natural airflow and lighting.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Passive+Cooling">
</div>
<div class="box">
<h2>Renewable Energy Labs</h2>
<p>Inspired by Ancient Greece hydro power, encourage schools to create small-scale water or solar energy labs.</p>
<img class="carousel" src="https://via.placeholder.com/1000x400?text=Renewable+Energy+Labs">
</div>
<div class="box">
<h2>Video Explanation</h2>
<iframe class="video" src="https://www.youtube.com/embed/3E3cF6gq1vE" allowfullscreen></iframe>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

echo "✅ Website build complete! All files generated with three-level structure, carousel, videos, and copyright."