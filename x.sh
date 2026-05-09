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
.hero { background:linear-gradient(to right,#004d00,#008000); color:white; text-align:center; padding:80px 20px; background-size:cover; }
.box { background:white; margin:40px auto; padding:20px; width:90%; max-width:1200px; box-shadow:0 4px 6px rgba(0,0,0,0.1); border-radius:8px; opacity:0; animation:fadeIn 1s forwards; }
.box:nth-of-type(2) {animation-delay:1s;}
.box:nth-of-type(3) {animation-delay:1.5s;}
.box h2 { margin-top:0; }
footer { background:#222; color:#ccc; text-align:center; padding:10px 0; margin-top:40px; }
@keyframes fadeIn { to { opacity:1; } }
EOF

echo "🌿 Writing JS..."
cat > js/main.js << 'EOF'
// Fade-in animation placeholder
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
  <p>The Indus Valley civilisation (c. 3300–1300 BCE) focused on urban planning, drainage systems, and natural ventilation to live sustainably.</p>
</div>
<div class="box">
  <h2>Ancient Egypt</h2>
  <p>Ancient Egyptians used basin irrigation from the Nile to water crops efficiently and store water for dry periods.</p>
</div>
<div class="box">
  <h2>Ancient Greece</h2>
  <p>Greeks harnessed hydropower for laborious tasks and early mechanical innovations.</p>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

# Civilisations index
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

# Civilisation pages (Indus, Egypt, Greece) with rich text content
for civ in indus egypt greece; do
cat > civilisations/$civ/index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${civ^}</title>
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
  <h1>${civ^} Civilization</h1>
  <p>Insights on sustainability</p>
</div>
<div class="box">
  <h2>Background</h2>
  <p>Detailed history and sustainable practices used by ${civ^} civilization. Example: long-term water management, urban planning, energy efficiency, and community organization.</p>
</div>
<div class="box">
  <h2>Lessons for Singapore</h2>
  <p>How modern Singapore can learn from these ancient methods for sustainability in urban planning, energy use, and agriculture.</p>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF
done

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
  <h2>Water Management</h2>
  <p>Implement basin irrigation inspired by Ancient Egypt to optimize water usage in urban gardens and schools.</p>
</div>
<div class="box">
  <h2>Energy Efficiency</h2>
  <p>Adopt hydropower and renewable energy methods inspired by Ancient Greece for sustainable school facilities.</p>
</div>
<div class="box">
  <h2>Urban Cooling</h2>
  <p>Use natural ventilation and building designs inspired by Indus Valley architecture for sustainable construction in Singapore.</p>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

echo "✅ Website generation complete!"