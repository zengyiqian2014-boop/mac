#!/bin/bash

echo "🌿 Rebuilding full website..."

rm -rf pages css index.html

mkdir -p pages/solutions css

# ================= CSS =================
cat > css/style.css <<'EOF'
body{
  font-family:Arial;
  margin:0;
  background:#012b1a;
  color:#fff;
}

header{
  background:linear-gradient(90deg,#026440,#013d24);
  padding:25px;
  text-align:center;
  position:sticky;
  top:0;
}

header h1{
  margin:0;
  font-size:2.3em;
}

nav{
  background:#0a3a22;
  text-align:center;
  padding:10px;
}

nav a{
  color:#fff;
  margin:0 15px;
  text-decoration:none;
  font-weight:bold;
}

nav a:hover{
  color:#00ffcc;
}

section{
  max-width:1100px;
  margin:20px auto;
  padding:20px;
}

.card{
  background:#1b5a32;
  padding:18px;
  margin:18px 0;
  border-radius:14px;
  animation:fade 1s ease-in;
}

.card img{
  width:35%;
  border-radius:10px;
  margin-bottom:10px;
}

.card iframe{
  width:100%;
  height:420px;
  border-radius:12px;
  margin:15px 0;
}

footer{
  position:fixed;
  bottom:0;
  width:100%;
  background:#013d24;
  text-align:center;
  padding:10px;
}

@keyframes fade{
  from{opacity:0;transform:translateY(10px);}
  to{opacity:1;transform:translateY(0);}
}
EOF

# ================= HOME =================
cat > index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Solutions</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<h1>Modern Sustainability Solutions</h1>
</header>

<nav>
<a href="index.html">Home</a>
<a href="pages/solutions/index.html">Solutions</a>
</nav>

<section>
<div class="card">
<h2>Overview</h2>
<p>
Ancient civilizations such as the Indus Valley, Ancient Egypt, and Ancient Greece developed highly efficient sustainability systems based on water control, agriculture, and energy use. Modern Singapore adopts these principles and upgrades them with technology such as AI, sensors, and renewable energy integration.
</p>
</div>
</section>

<footer>Project</footer>

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

<header>
<h1>Modern Sustainability Solutions</h1>
</header>

<nav>
<a href="../../index.html">Home</a>
<a href="index.html">Solutions</a>
</nav>

<section>

<!-- 1 -->
<div class="card">
<img src="https://images.unsplash.com/photo-1500375592092-40eb2168fd21?w=800">

<h2>1. Rainwater Harvesting Systems</h2>

<iframe src="https://www.youtube.com/embed/9Jb0bZxQ"></iframe>

<p>
Rainwater harvesting is one of the most important sustainability systems in modern Singapore. Inspired by ancient civilizations such as the Indus Valley and early Egyptian water management systems, this method collects rainfall from rooftops, drains, and reservoirs. The collected water is stored, treated, and reused for non-drinking purposes. This reduces dependency on imported water and strengthens national resilience. In modern urban planning, decentralized water systems are essential because they reduce risk concentration. Singapore integrates advanced filtration and monitoring technologies to ensure safety and efficiency, making this system a core pillar of national sustainability strategy.
</p>
</div>

<!-- 2 -->
<div class="card">
<img src="https://images.unsplash.com/photo-1523413651479-597eb2da0ad6?w=800">

<h2>2. Vertical Farming Systems</h2>

<iframe src="https://www.youtube.com/embed/5qap5aO4i9A"></iframe>

<p>
Vertical farming is a modern agricultural innovation that addresses land scarcity in Singapore. Inspired by ancient irrigation-based agriculture such as the Nile basin system, vertical farms use stacked layers and hydroponic systems to grow crops without soil. Controlled LED lighting, nutrient solutions, and climate regulation allow continuous food production throughout the year. This system reduces water usage by up to 90% compared to traditional farming. It also reduces transportation emissions since farms are located within urban environments. Vertical farming is a key solution for food security and sustainable urban development.
</p>
</div>

<!-- 3 -->
<div class="card">
<img src="https://images.unsplash.com/photo-1469474968028-56623f02e42e?w=800">

<h2>3. Renewable Energy Integration</h2>

<iframe src="https://www.youtube.com/embed/2p8X5F1"></iframe>

<p>
Singapore integrates renewable energy sources such as solar panels into urban infrastructure. Inspired by ancient hydropower systems used in Greece and Rome, modern renewable systems convert natural energy into usable electricity. Solar panels are installed on rooftops, buildings, and floating platforms. These systems reduce reliance on fossil fuels and support long-term energy sustainability. Although Singapore has limited land, innovative engineering solutions maximize surface usage. Renewable integration plays a critical role in achieving national carbon reduction goals.
</p>
</div>

<!-- 4 -->
<div class="card">
<img src="https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=800">

<h2>4. Smart Drainage Systems</h2>

<iframe src="https://www.youtube.com/embed/6D4g5PQ2Oi8"></iframe>

<p>
Smart drainage systems in Singapore are inspired by ancient flood control techniques such as Egyptian basin irrigation and Indus urban planning. Modern systems use sensors, underground tunnels, and AI-based prediction models to control water flow during heavy rainfall. This prevents flooding in densely populated areas. Water is redirected into reservoirs for later use. The integration of real-time monitoring improves efficiency and reduces environmental risk. This represents a major advancement in urban water management systems.
</p>
</div>

<!-- 5 -->
<div class="card">
<img src="https://images.unsplash.com/photo-1501004318641-b39e6451bec6?w=800">

<h2>5. Waste-to-Energy Systems</h2>

<p>
Waste-to-energy systems convert municipal waste into electricity through controlled incineration. This reduces landfill usage and generates renewable energy. Inspired by ancient resource efficiency principles, modern Singapore ensures that waste is not simply discarded but reused as a resource. Advanced filtration systems reduce emissions and ensure environmental safety. This system supports circular economy goals by recovering energy from materials that would otherwise be wasted.
</p>
</div>

<!-- 6 -->
<div class="card">
<img src="https://images.unsplash.com/photo-1482192596544-9eb780fc7f66?w=800">

<h2>6. Circular Economy Systems</h2>

<p>
A circular economy ensures continuous reuse of materials instead of disposal. Singapore applies this model through water recycling (NEWater), electronic waste recovery, and construction material reuse. This reflects ancient civilizations’ resource efficiency practices, where waste minimization was essential for survival. Modern technology enhances this system through automation and data tracking, allowing efficient material lifecycle management.
</p>
</div>

</section>

<footer>Solutions Page</footer>

</body>
</html>
EOF

echo "✅ DONE - Fully structured, elegant, stable solution website generated"