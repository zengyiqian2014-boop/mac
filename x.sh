#!/bin/bash
# x.sh: Generate full website directly in current directory, ready for GitHub Pages

echo "🌿 Deleting old website files..."
rm -rf civilisations pages css js

echo "🌿 Creating directories..."
mkdir -p civilisations/indus
mkdir -p civilisations/egypt
mkdir -p civilisations/greece
mkdir -p pages/solution
mkdir -p css
mkdir -p js

echo "🌿 Writing CSS..."
cat > css/style.css <<'EOF'
body { font-family: Arial, sans-serif; background-color: #e6f2e6; color: #003300; margin:0; padding:0;}
header { background-color: #339966; padding:20px; color: white; text-align:center;}
header nav a { color: white; margin: 0 15px; text-decoration:none; font-weight:bold;}
section { padding: 20px; margin:10px;}
h1,h2,h3 { color: #004d00;}
footer { background-color: #339966; color:white; text-align:center; padding:10px;}
article { background-color: #f0fff0; margin:10px 0; padding:15px; border-radius:10px; box-shadow:2px 2px 5px rgba(0,0,0,0.2);}
EOF

echo "🌿 Writing JS..."
cat > js/main.js <<'EOF'
// Placeholder for potential animations or interactivity
console.log("JS loaded: ready for animations.");
EOF

echo "🌿 Writing root index.html..."
cat > index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Learning From The Past: Sustainability of Ancient Civilisations</title>
<link rel="stylesheet" href="css/style.css">
<script src="js/main.js"></script>
</head>
<body>
<header>
    <h1>Learning From The Past: Sustainability of Ancient Civilisations</h1>
    <nav>
        <a href="civilisations/indus/index.html">Indus Valley</a>
        <a href="civilisations/egypt/index.html">Ancient Egypt</a>
        <a href="civilisations/greece/index.html">Ancient Greece</a>
        <a href="pages/solution/index.html">Solution</a>
    </nav>
</header>

<section>
    <h2>Introduction</h2>
    <p>This website explores how ancient civilizations implemented sustainable practices in architecture, agriculture, and energy management. By learning from their strategies, modern societies can develop innovative solutions to address current environmental challenges in urban contexts like Singapore, combining technology with environmental stewardship and resource efficiency.</p>
</section>

<footer>
    &copy; 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

# Function to create a civilisation page
generate_civilisation_page () {
local name=$1
local path=$2
local content="$3"
cat > "$path/index.html" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>$name</title>
<link rel="stylesheet" href="../../css/style.css">
<script src="../../js/main.js"></script>
</head>
<body>
<header>
<h1>$name</h1>
</header>
<section>
<p>$content</p>
</section>
<footer>
&copy; 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF
}

echo "🌿 Writing civilisation pages..."
generate_civilisation_page "Indus Valley Civilization" "civilisations/indus" "The Indus Valley Civilization implemented sustainable urban planning with multi-story houses using natural light and ventilation. Drainage systems and public baths reflect resource management expertise. By studying these methods, modern urban planners can integrate ancient sustainable practices into contemporary eco-friendly architecture, creating energy-efficient and resilient cities."
generate_civilisation_page "Ancient Egypt" "civilisations/egypt" "Ancient Egypt used sophisticated irrigation with canals, basins, and water-lifting devices like the shadoof. The Nilometer enabled flood prediction and water control. These innovations allowed consistent agriculture and water management. Modern cities can learn from these techniques to manage water sustainably and support urban agriculture effectively."
generate_civilisation_page "Ancient Greece" "civilisations/greece" "Greeks innovated in hydro-power, using waterwheels to mechanize milling and other tasks. Overshot waterwheels converted kinetic energy efficiently. Their technologies highlight renewable energy use and mechanization. These concepts inform modern hydroelectric solutions, emphasizing efficiency and sustainability for industrial and urban applications."

echo "🌿 Writing solution page..."
cat > pages/solution/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Solution</title>
<link rel="stylesheet" href="../../css/style.css">
<script src="../../js/main.js"></script>
</head>
<body>
<header>
<h1>Proposed Sustainability Solutions for Singapore</h1>
</header>
<section>
<p>Inspired by ancient civilizations, these solutions address Singapore's water management and energy sustainability challenges. Methods include advanced irrigation systems inspired by Egypt, efficient building designs inspired by the Indus Valley, and renewable energy techniques inspired by Greece. These strategies are feasible, scalable, and promote long-term environmental stewardship.</p>
</section>
<footer>
&copy; 2026 Made by Eric, All rights reserved
</footer>
</body>
</html>
EOF

echo "✅ Website files generated directly in current directory!"
echo "You can now push all files to your GitHub repository root or gh-pages branch for Pages deployment."