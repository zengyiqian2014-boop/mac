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
a.external { color:#006400; text-decoration:underline; }
a.external:hover { color:#004d00; }
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
  <p>Urban planning, natural lighting, and ventilation for sustainable living.</p>
  <p>Learn more: <a class="external" href="http://www.history.alberta.ca/energyheritage/energy/hydro-power/hydro-power-in-ancient-times.aspx" target="_blank">Housing architecture using natural lighting and cooling</a></p>
</div>
<div class="box">
  <h2>Ancient Egypt</h2>
  <p>Basin irrigation from the Nile River to water crops efficiently.</p>
  <p>Learn more: <a class="external" href="https://ancientengrtech.wisc.edu/ancient-egypt-water-engineering/" target="_blank">Ancient Egyptian water engineering</a></p>
</div>
<div class="box">
  <h2>Ancient Greece</h2>
  <p>Hydropower used for laborious tasks and early mechanical innovations.</p>
  <p>Learn more: <a class="external" href="http://www.history.alberta.ca/energyheritage/energy/hydro-power/hydro-power-in-ancient-times.aspx" target="_blank">Ancient Greek hydropower</a></p>
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

# Civilisation pages (Indus, Egypt, Greece)
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
  <p>Insights on sustainability and practical lessons</p>
</div>
<div class="box">
  <h2>Background</h2>
  <p>Detailed history and sustainable practices of the ${civ^} civilization, including urban planning, water management, and energy efficiency.</p>
  <p>Reference: <a class="external" target="_blank" href="https://www.futurelearn.com/info/courses/sustainable-practices-in-food-service/0/steps/232799">A Brief History of Sustainability</a></p>
</div>
<div class="box">
  <h2>Lessons for Singapore</h2>
  <p>How Singapore can adapt ideas like efficient water use, natural cooling, and renewable energy inspired by ${civ^} practices.</p>
  <p>Video / Lecture reference: <a class="external" target="_blank" href="https://www.youtube.com/">Watch related content</a></p>
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
  <p>Adopt basin irrigation inspired by Ancient Egypt to optimize water usage in urban gardens and schools.</p>
  <p>More info: <a class="external" target="_blank" href="https://ancientengrtech.wisc.edu/ancient-egypt-water-engineering/">Ancient Egypt Water Engineering</a></p>
</div>
<div class="box">
  <h2>Energy Efficiency</h2>
  <p>Use hydropower and renewable energy methods inspired by Ancient Greece for sustainable school facilities.</p>
  <p>More info: <a class="external" target="_blank" href="http://www.history.alberta.ca/energyheritage/energy/hydro-power/hydro-power-in-ancient-times.aspx">Greek Hydropower</a></p>
</div>
<div class="box">
  <h2>Urban Cooling</h2>
  <p>Building designs with natural ventilation inspired by Indus Valley architecture for sustainable construction in Singapore.</p>
  <p>More info: <a class="external" target="_blank" href="http://www.history.alberta.ca/energyheritage/energy/hydro-power/hydro-power-in-ancient-times.aspx">Indus Valley Housing Techniques</a></p>
</div>
<footer>
© 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

echo "✅ Website generation complete!"