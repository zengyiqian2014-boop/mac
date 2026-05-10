#!/bin/bash

echo "🏛 Building Interactive Museum Version..."

rm -rf pages css js assets index.html
mkdir -p pages/indus pages/egypt pages/greece pages/singapore css js assets

# ================= CSS =================
cat > css/style.css <<'EOF'
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  scroll-behavior:smooth;
}

body{
  font-family: "Georgia", serif;
  background:#03150f;
  color:#f5f5f5;
  overflow-x:hidden;
  line-height:1.9;
}

/* animated background */
body::before{
  content:"";
  position:fixed;
  inset:0;
  background:
    radial-gradient(circle at 20% 20%, rgba(0,255,170,0.07), transparent 25%),
    radial-gradient(circle at 80% 30%, rgba(0,180,255,0.06), transparent 25%),
    radial-gradient(circle at 50% 80%, rgba(0,255,170,0.05), transparent 25%);
  animation:bgMove 12s infinite alternate ease-in-out;
  z-index:-1;
}

@keyframes bgMove{
  from{transform:translateY(0px);}
  to{transform:translateY(-40px);}
}

header{
  position:sticky;
  top:0;
  z-index:999;
  backdrop-filter:blur(10px);
  background:rgba(1,20,14,0.88);
  border-bottom:1px solid rgba(0,255,200,0.15);
  padding:20px;
  text-align:center;
}

header h1{
  font-size:2.2em;
  letter-spacing:2px;
  color:#dffff4;
}

nav{
  margin-top:12px;
}

nav a{
  color:#b8ffe7;
  margin:0 14px;
  text-decoration:none;
  font-size:0.95em;
  transition:0.3s;
}

nav a:hover{
  color:#00ffd0;
}

.hero{
  height:75vh;
  display:flex;
  align-items:center;
  justify-content:center;
  text-align:center;
  padding:40px;
  background:
    linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.7)),
    url('https://upload.wikimedia.org/wikipedia/commons/c/c3/Mohenjo-daro_Sindh.jpeg');
  background-size:cover;
  background-position:center;
}

.hero-content{
  max-width:850px;
  animation:fadeUp 1.4s ease;
}

.hero h2{
  font-size:3em;
  margin-bottom:20px;
}

.hero p{
  font-size:1.15em;
  color:#d6fff2;
}

@keyframes fadeUp{
  from{
    opacity:0;
    transform:translateY(40px);
  }
  to{
    opacity:1;
    transform:translateY(0);
  }
}

section{
  max-width:1200px;
  margin:auto;
  padding:60px 25px;
}

.card{
  background:linear-gradient(145deg,#103427,#0a2119);
  border:1px solid rgba(0,255,200,0.12);
  border-radius:18px;
  padding:30px;
  margin-bottom:45px;
  transition:0.4s;
  box-shadow:0 0 20px rgba(0,0,0,0.35);
}

.card:hover{
  transform:translateY(-6px);
  box-shadow:0 0 30px rgba(0,255,200,0.12);
}

.card h2{
  color:#9effdf;
  margin-bottom:18px;
  font-size:1.5em;
}

.card img{
  width:100%;
  max-height:420px;
  object-fit:cover;
  border-radius:12px;
  margin-bottom:20px;
}

.card p{
  color:#f1f1f1;
  font-size:1.02em;
}

.grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(320px,1fr));
  gap:25px;
}

.highlight{
  padding:25px;
  border-radius:14px;
  background:#0d2a20;
  border:1px solid rgba(0,255,200,0.08);
}

.highlight h3{
  color:#7effd8;
  margin-bottom:10px;
}

footer{
  text-align:center;
  padding:30px;
  background:#02110c;
  color:#8fcfb7;
  margin-top:50px;
}

.fade{
  opacity:0;
  transform:translateY(40px);
  transition:1s;
}

.fade.show{
  opacity:1;
  transform:translateY(0);
}
EOF

# ================= JS =================
cat > js/script.js <<'EOF'
const fades = document.querySelectorAll('.fade');

window.addEventListener('scroll', () => {
  fades.forEach(fade => {
    const top = fade.getBoundingClientRect().top;
    if(top < window.innerHeight - 80){
      fade.classList.add('show');
    }
  });
});
EOF

# ================= HOME =================
cat > index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
<title>P6 Social Studies Project</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<header>
<h1>P6 SOCIAL STUDIES PROJECT</h1>

<nav>
<a href="index.html">Home</a>
<a href="pages/indus/index.html">Indus Valley</a>
<a href="pages/egypt/index.html">Ancient Egypt</a>
<a href="pages/greece/index.html">Ancient Greece</a>
<a href="pages/singapore/index.html">Singapore</a>
</nav>
</header>

<div class="hero">
<div class="hero-content">
<h2>Ancient Civilisations & Sustainability</h2>

<p>
Explore how ancient societies developed water systems, urban planning,
engineering, and environmental strategies that continue to influence modern cities today.
</p>
</div>
</div>

<section>

<div class="card fade">
<h2>Introduction</h2>

<p>
Human civilisation developed alongside rivers, fertile land, and trade routes.
Ancient societies such as the Indus Valley Civilization, Ancient Egypt, and Ancient Greece
created systems that allowed large populations to survive in difficult environments.
These societies developed drainage systems, irrigation networks, agricultural planning,
and engineering innovations that shaped urban life for thousands of years.

Modern Singapore also depends heavily on planning and sustainability.
Although separated by thousands of years, many principles remain similar:
efficient land use, water security, organised infrastructure, and adaptation to environmental challenges.
This project examines how ancient systems continue to influence modern urban development.
</p>
</div>

<div class="grid fade">

<div class="highlight">
<h3>Urban Planning</h3>
<p>
Ancient cities used organised layouts to improve hygiene, movement, and safety.
</p>
</div>

<div class="highlight">
<h3>Water Management</h3>
<p>
Civilisations depended on rivers and irrigation systems for survival and agriculture.
</p>
</div>

<div class="highlight">
<h3>Modern Relevance</h3>
<p>
Many ancient ideas still influence sustainability systems used in Singapore today.
</p>
</div>

</div>

</section>

<footer>
P6 Social Studies Project
</footer>

<script src="js/script.js"></script>

</body>
</html>
EOF

echo "✅ Interactive Museum Version Complete"