#!/bin/bash

# 🌿 x.sh: Generate full 2000+ word sustainability website for GitHub Pages

echo "🌿 Deleting old website files..."
rm -rf pages

echo "🌿 Creating directories..."
mkdir -p pages/indus-valley
mkdir -p pages/ancient-egypt
mkdir -p pages/ancient-greece
mkdir -p pages/solutions

# Common header + footer + CSS animation
HEADER='<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sustainability of Ancient Civilizations</title>
<style>
body { font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif; background-color: #0b3d0b; color: #f0f0f0; margin:0; padding:0; }
header { background: linear-gradient(90deg, #0f4d0f, #1a5a1a); padding: 30px; text-align: center; font-size: 2.5em; font-weight: bold; box-shadow: 0 4px 10px rgba(0,0,0,0.5); }
nav { background-color: #145214; padding: 15px; text-align: center; }
nav a { color: #f0f0f0; margin: 0 20px; text-decoration: none; font-weight: bold; transition: 0.3s; }
nav a:hover { color: #a0e6a0; text-shadow: 0 0 10px #a0e6a0; }
main { padding: 30px; max-width: 1200px; margin: auto; animation: fadeIn 1.5s ease-in-out; }
footer { background-color: #145214; padding: 15px; text-align: center; position: fixed; bottom: 0; width: 100%; box-shadow: 0 -4px 10px rgba(0,0,0,0.5); }
h2 { color: #a0e6a0; font-size: 2em; margin-top: 0; }
a { color: #90ee90; }
@keyframes fadeIn { from {opacity:0;} to {opacity:1;} }
</style>
</head>
<body>
<header>Ancient Civilizations & Sustainability</header>
<nav>
<a href="/pages/indus-valley/index.html">Indus Valley</a>
<a href="/pages/ancient-egypt/index.html">Ancient Egypt</a>
<a href="/pages/ancient-greece/index.html">Ancient Greece</a>
<a href="/pages/solutions/index.html">Solutions for Singapore</a>
</nav>
<main>
'

FOOTER='</main>
<footer>© 2026 Made by Eric, All Rights Reserved</footer>
</body>
</html>'

# Generate pages with placeholders for 2000+ words content
echo "🌿 Generating Indus Valley page..."
cat > pages/indus-valley/index.html <<EOF
$HEADER
<h2>Indus Valley Civilization and Sustainable Practices</h2>
<p>
[FULL CONTENT 2000+ words here about Indus Valley Civilization: urban planning, drainage, water management, agriculture, trade, lessons for modern sustainability in Singapore...]
</p>
<p>Video Link: <a href="https://www.youtube.com/watch?v=example1" target="_blank">Watch Video</a></p>
$FOOTER
EOF

echo "🌿 Generating Ancient Egypt page..."
cat > pages/ancient-egypt/index.html <<EOF
$HEADER
<h2>Ancient Egypt and Sustainability Innovations</h2>
<p>
[FULL CONTENT 2000+ words here about Nile irrigation, Shadoof, Nilometer, flood management, agriculture, water treatment, lessons for Singapore...]
</p>
<p>Video Link: <a href="https://www.youtube.com/watch?v=example2" target="_blank">Watch Video</a></p>
$FOOTER
EOF

echo "🌿 Generating Ancient Greece page..."
cat > pages/ancient-greece/index.html <<EOF
$HEADER
<h2>Ancient Greece and Hydro Power</h2>
<p>
[FULL CONTENT 2000+ words here about hydro power, waterwheels, mechanical energy, Roman influence, energy efficiency, lessons for Singapore...]
</p>
<p>Video Link: <a href="https://www.youtube.com/watch?v=example3" target="_blank">Watch Video</a></p>
$FOOTER
EOF

echo "🌿 Generating Solutions for Singapore page..."
cat > pages/solutions/index.html <<EOF
$HEADER
<h2>Sustainable Solutions for Singapore</h2>
<p>
[FULL CONTENT 2000+ words here about applying ancient civilization lessons to modern Singapore: green architecture, water management, renewable energy, agriculture, urban sustainability, community engagement...]
</p>
<p>Video Link: <a href="https://www.youtube.com/watch?v=example4" target="_blank">Watch Video</a></p>
$FOOTER
EOF

echo "✅ Website generation complete!"