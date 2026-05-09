#!/bin/bash
echo "🌿 Deleting old website files..."
rm -rf index.html css js civilisations pages

echo "🌿 Creating directories..."
mkdir -p css js civilisations/indus civilisations/egypt civilisations/greece pages

echo "🌿 Writing CSS..."
cat > css/style.css << 'EOF'
body { margin:0; font-family:Arial,sans-serif; background:#f9f9f9; color:#333; }
header { background:#006400; color:white; padding:10px 20px; }
header nav a { color:white; text-decoration:none; margin-right:20px; }
header nav a:hover { text-decoration:underline; }
.hero { background:linear-gradient(to right,#004d00,#008000); color:white; text-align:center; padding:80px 20px; background-size:cover; background-attachment:fixed; }
.box { background:white; margin:40px auto; padding:20px; width:90%; max-width:1200px; box-shadow:0 4px 6px rgba(0,0,0,0.1); border-radius:8px; opacity:0; animation:fadeIn 1s forwards; }
.box:nth-of-type(2) {animation-delay:1s;}
.box:nth-of-type(3) {animation-delay:1.5s;}
.box h2 { margin-top:0; }
footer { background:#222; color:#ccc; text-align:center; padding:10px 0; margin-top:40px; }
@keyframes fadeIn { to { opacity:1; } }
.carousel { width:100%; max-width:1000px; height:auto; display:block; margin:10px auto; }
.video { width:100%; max-width:1000px; height:500px; display:block; margin:10px auto; }
EOF

echo "🌿 Writing JS..."
cat > js/main.js << 'EOF'
// Placeholder for future interactivity
document.addEventListener('DOMContentLoaded', () => {});
EOF

echo "🌿 Writing Home page..."
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Home - Sustainability</title>
<link rel="stylesheet" href="css/style.css">
<script defer src="js/main.js"></script>
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
  <h1>Learning from the Past</h1>
  <p>Sustainability of Ancient Civilisations</p>
</div>
<div class="box">
  <h2>Indus Valley</h2>
  <p>Advanced city planning and natural ventilation for sustainable living.</p>
</div>
<div class="box">
  <h2>Ancient Egypt</h2>
  <p>Basin irrigation and flood control for sustainable agriculture.</p>
</div>
<div class="box">
  <h2>Ancient Greece</h2>
  <p>Hydropower and early renewable energy concepts.</p>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

echo "🌿 Writing Civilisations index..."
cat > civilisations/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Civilisations</title>
<link rel="stylesheet" href="../css/style.css">
<script defer src="../js/main.js"></script>
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
  <p>Discover sustainable ideas from the past</p>
</div>
<div class="box"><a href="indus/index.html">Indus Valley</a></div>
<div class="box"><a href="egypt/index.html">Ancient Egypt</a></div>
<div class="box"><a href="greece/index.html">Ancient Greece</a></div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

# Example for Indus Valley page
cat > civilisations/indus/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Indus Valley</title>
<link rel="stylesheet" href="../../css/style.css">
<script defer src="../../js/main.js"></script>
</head>
<body>
<header>
  <nav>
    <a href="../index.html">Civilisations</a>
    <a href="../../index.html">Home</a>
    <a href="../../pages/solution.html">Solution</a>
  </nav>
</header>
<div class="hero">
  <h1>Indus Valley Civilization</h1>
  <p>City planning and sustainability</p>
</div>
<div class="box">
  <h2>Urban Planning</h2>
  <p>Well-planned streets, drainage systems, and sustainable housing.</p>
  <img class="carousel" src="https://via.placeholder.com/1000x400?text=Indus+City+Planning">
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

# Similar structure for Egypt and Greece
cat > civilisations/egypt/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Ancient Egypt</title>
<link rel="stylesheet" href="../../css/style.css">
<script defer src="../../js/main.js"></script>
</head>
<body>
<header>
  <nav>
    <a href="../index.html">Civilisations</a>
    <a href="../../index.html">Home</a>
    <a href="../../pages/solution.html">Solution</a>
  </nav>
</header>
<div class="hero">
  <h1>Ancient Egypt</h1>
  <p>Irrigation and sustainability</p>
</div>
<div class="box">
  <h2>Nile Irrigation</h2>
  <p>Basin irrigation from the Nile River for sustainable agriculture.</p>
  <img class="carousel" src="https://via.placeholder.com/1000x400?text=Egypt+Irrigation">
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

cat > civilisations/greece/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Ancient Greece</title>
<link rel="stylesheet" href="../../css/style.css">
<script defer src="../../js/main.js"></script>
</head>
<body>
<header>
  <nav>
    <a href="../index.html">Civilisations</a>
    <a href="../../index.html">Home</a>
    <a href="../../pages/solution.html">Solution</a>
  </nav>
</header>
<div class="hero">
  <h1>Ancient Greece</h1>
  <p>Hydropower and early engineering</p>
</div>
<div class="box">
  <h2>Watermills</h2>
  <p>Using flowing water to perform laborious tasks efficiently.</p>
  <img class="carousel" src="https://via.placeholder.com/1000x400?text=Greek+Watermills">
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

# Solution page
cat > pages/solution.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Solution Ideas</title>
<link rel="stylesheet" href="../css/style.css">
<script defer src="../js/main.js"></script>
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
  <h1>Sustainability Solutions for Singapore</h1>
  <p>Inspired by ancient civilisations</p>
</div>
<div class="box">
  <h2>Problem: Urban Water Usage</h2>
  <p>We propose smart basin irrigation inspired by the Nile River.</p>
</div>
<div class="box">
  <h2>Problem: Energy Efficiency</h2>
  <p>Hydropower concepts adapted to small-scale renewable energy in schools.</p>
</div>
<div class="box">
  <h2>Problem: Urban Cooling</h2>
  <p>Building designs using natural ventilation inspired by Indus Valley architecture.</p>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

echo "✅ Website generation complete!"