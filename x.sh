#!/bin/bash

echo "🏛️ Building NATIONAL MUSEUM 3D EXHIBITION SYSTEM..."

rm -rf pages css index.html

mkdir -p pages/indus pages/egypt pages/greece pages/solutions css

# ================= MUSEUM 3D CSS =================
cat > css/style.css <<'EOF'
body{
  margin:0;
  font-family: "Georgia", serif;
  background: radial-gradient(circle at top,#0d2a1f,#000);
  color:#f2f2f2;
  overflow-x:hidden;
}

header{
  background:linear-gradient(90deg,#012d1c,#000);
  padding:35px;
  text-align:center;
  position:sticky;
  top:0;
  z-index:100;
  box-shadow:0 0 30px rgba(0,255,180,0.2);
}

header h1{
  margin:0;
  font-size:2.6em;
  letter-spacing:2px;
}

nav{
  background:#061c13;
  text-align:center;
  padding:12px;
}

nav a{
  color:#bfffe0;
  margin:0 18px;
  text-decoration:none;
  font-family:sans-serif;
}

nav a:hover{
  color:#00ffcc;
}

section{
  max-width:1100px;
  margin:60px auto;
  padding:20px;
}

.panel{
  background:linear-gradient(145deg,rgba(10,60,40,0.6),rgba(0,0,0,0.4));
  border-left:4px solid #00ffcc;
  padding:30px;
  margin:60px 0;
  border-radius:12px;

  transform: perspective(900px) translateZ(0);
  transition:0.6s;
  box-shadow:0 0 40px rgba(0,255,180,0.08);
}

.panel:hover{
  transform: perspective(900px) translateZ(20px) scale(1.01);
}

.panel img{
  width:28%;
  border-radius:10px;
  margin-bottom:15px;
  opacity:0.9;
}

.panel iframe{
  width:100%;
  height:520px;
  border-radius:12px;
  margin:20px 0;
}

footer{
  position:fixed;
  bottom:0;
  width:100%;
  background:#000;
  text-align:center;
  padding:12px;
  font-size:12px;
  color:#aaa;
}
EOF

# ================= HOME =================
cat > index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Museum 3D Exhibition</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<h1>NATIONAL MUSEUM OF SUSTAINABILITY</h1>
</header>

<nav>
<a href="index.html">Entrance</a>
<a href="pages/indus/index.html">Indus Hall</a>
<a href="pages/egypt/index.html">Hydrology Hall</a>
<a href="pages/greece/index.html">Energy Hall</a>
<a href="pages/solutions/index.html">Future Wing</a>
</nav>

<section>

<div class="panel">
<h2>Curatorial Statement</h2>
<p>
This exhibition is structured as a spatial museum journey rather than a conventional web presentation. Visitors are guided through successive environmental civilizations that collectively represent humanity’s evolving relationship with water, energy, and urban sustainability. Each gallery functions as a thematic chamber, designed to simulate the experience of walking through a physical museum space. The Indus Hall introduces early urban planning intelligence, the Egyptian Hall explores hydrological adaptation systems, the Greek Hall demonstrates mechanical energy conversion, and the Singapore Pavilion concludes with modern sustainability integration. Together, these galleries form a continuous narrative of environmental engineering evolution.
</p>
</div>

</section>

<footer>Museum 3D System</footer>

</body>
</html>
EOF

# ================= INDUS =================
cat > pages/indus/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Indus Hall</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>INDUS VALLEY – URBAN INTELLIGENCE HALL</h1></header>

<nav>
<a href="../../index.html">Entrance</a>
<a href="index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="../greece/index.html">Energy</a>
<a href="../solutions/index.html">Future</a>
</nav>

<section>

<div class="panel">
<img src="https://images.unsplash.com/photo-1524492412937-b28074a5d7da?w=800">
<iframe src="https://www.youtube.com/embed/VbYc8-b8S5o"></iframe>

<h2>Urban Systems as Early Environmental Computing</h2>
<p>
The Indus Valley Civilization represents a foundational moment in human urban development where city planning was executed with remarkable precision and systemic coherence. Rather than evolving organically, cities such as Mohenjo-daro were constructed using pre-defined spatial grids that regulated movement, sanitation, and resource distribution. This indicates the presence of administrative foresight and standardized engineering principles that governed construction at scale.
<br><br>
Drainage infrastructure was fully integrated into residential architecture, forming a city-wide sanitation network that functioned continuously beneath urban surfaces. This system not only minimized environmental contamination but also demonstrates early understanding of fluid dynamics and public health correlation. Additionally, decentralized water access via wells ensured equitable distribution of essential resources, reducing dependency on centralized supply points.
<br><br>
Such characteristics reveal that the Indus Valley Civilization operated as an early form of environmental system engineering, where urban space was treated as a managed ecological interface rather than a purely residential environment.
</p>
</div>

</section>

<footer>Indus Hall</footer>

</body>
</html>
EOF

# ================= EGYPT =================
cat > pages/egypt/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Hydrology Hall</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>ANCIENT EGYPT – HYDROLOGY SYSTEMS</h1></header>

<nav>
<a href="../../index.html">Entrance</a>
<a href="../indus/index.html">Indus</a>
<a href="index.html">Egypt</a>
<a href="../greece/index.html">Energy</a>
<a href="../solutions/index.html">Future</a>
</nav>

<section>

<div class="panel">
<img src="https://images.unsplash.com/photo-1500375592092-40eb2168fd21?w=800">
<iframe src="https://www.youtube.com/embed/6D4g5PQ2Oi8"></iframe>

<h2>Nile-Based Environmental Governance</h2>
<p>
Ancient Egyptian civilization demonstrates one of the earliest large-scale integrations of environmental rhythm into societal organization. The Nile River’s predictable flood cycle served as a natural calibration system for agriculture, settlement planning, and resource allocation. Egyptian engineers developed basin irrigation systems that transformed seasonal inundation into controlled agricultural productivity.
<br><br>
The shadoof mechanism introduced a mechanical advantage system that optimized human labor in water lifting operations, effectively increasing irrigation reach without additional energy consumption. Complementing this, nilometers functioned as hydrological measurement instruments, enabling predictive responses to environmental fluctuations. These systems collectively illustrate an early form of environmental data interpretation and adaptive resource management.
<br><br>
Egyptian hydrological engineering thus represents a civilization-scale integration of natural cycles into structured governance systems.
</p>
</div>

</section>

<footer>Hydrology Hall</footer>

</body>
</html>
EOF

# ================= GREECE =================
cat > pages/greece/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Energy Hall</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>GREECE – MECHANICAL ENERGY HALL</h1></header>

<nav>
<a href="../../index.html">Entrance</a>
<a href="../indus/index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="index.html">Energy</a>
<a href="../solutions/index.html">Future</a>
</nav>

<section>

<div class="panel">
<img src="https://images.unsplash.com/photo-1469474968028-56623f02e42e?w=800">
<iframe src="https://www.youtube.com/embed/5qap5aO4i9A"></iframe>

<h2>Hydropower and Early Mechanical Systems</h2>
<p>
Greek and Roman civilizations advanced mechanical energy systems through the implementation of waterwheel technology. These systems converted hydrodynamic energy into mechanical motion, primarily used in grain milling operations and early industrial processing. The overshot waterwheel represented a significant advancement by incorporating gravitational force into energy conversion, thereby increasing efficiency compared to earlier designs.
<br><br>
This innovation reflects an early understanding of energy transformation principles and mechanical optimization. Watermills became essential infrastructure in agricultural economies, reducing manual labor dependency and increasing production scalability. These systems mark a critical transition from human-powered labor to mechanized industrial processes.
</p>
</div>

</section>

<footer>Energy Hall</footer>

</body>
</html>
EOF

# ================= SOLUTIONS =================
cat > pages/solutions/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>Future Wing</title>
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><h1>SINGAPORE – FUTURE SUSTAINABILITY WING</h1></header>

<nav>
<a href="../../index.html">Entrance</a>
<a href="../indus/index.html">Indus</a>
<a href="../egypt/index.html">Egypt</a>
<a href="../greece/index.html">Energy</a>
<a href="index.html">Future</a>
</nav>

<section>

<div class="panel">
<img src="https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=800">
<iframe src="https://www.youtube.com/embed/9Jb0bZxQ"></iframe>

<h2>Modern Urban Sustainability Integration</h2>
<p>
Singapore represents a contemporary synthesis of ancient environmental intelligence and modern technological infrastructure. Faced with extreme spatial and resource limitations, the city-state has developed integrated systems that mirror historical sustainability principles while incorporating advanced computational control. Rainwater harvesting networks, vertical agricultural systems, and sensor-based drainage infrastructure collectively form a closed-loop environmental management system.
<br><br>
These systems extend ancient principles of adaptive water management into digital governance frameworks, enabling real-time environmental response and optimization. Vertical farming replicates ancient irrigation efficiency within a multi-layered architectural context, while smart drainage systems emulate predictive hydrological monitoring analogous to ancient nilometer systems.
<br><br>
This convergence of historical principles and modern engineering represents a new phase of urban sustainability evolution.
</p>
</div>

</section>

<footer>Future Wing</footer>

</body>
</html>
EOF

echo "🏛️ NATIONAL MUSEUM 3D SYSTEM COMPLETE (FULL IMMERSIVE EDITION)"