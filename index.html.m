<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>GMM Cuts</title>

<style>

/* ==============================
   RESET
============================== */

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  background: #0b0b0b;
  color: #fff;
  line-height: 1.6;
}


/* ==============================
   GENERAL
============================== */

.container {
  width: 92%;
  max-width: 1100px;
  margin: auto;
}

.gold {
  color: #d4af37;
}

section {
  padding: 70px 0;
}

.section-title {
  text-align: center;
  margin-bottom: 40px;
}

.section-title h2 {
  font-size: 32px;
  color: #d4af37;
  margin-bottom: 10px;
}

.section-title p {
  color: #aaa;
}


/* ==============================
   HEADER
============================== */

header {
  position: sticky;
  top: 0;
  z-index: 1000;
  background: rgba(0,0,0,0.95);
  border-bottom: 1px solid #292929;
}

.navbar {
  min-height: 75px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.logo {
  font-size: 25px;
  font-weight: bold;
  color: #d4af37;
  text-decoration: none;
}

.nav-links {
  display: flex;
  gap: 25px;
  list-style: none;
}

.nav-links a {
  color: white;
  text-decoration: none;
  font-size: 14px;
}

.nav-links a:hover {
  color: #d4af37;
}

.menu-btn {
  display: none;
  background: none;
  border: none;
  color: #d4af37;
  font-size: 28px;
}


/* ==============================
   HERO
============================== */

.hero {
  min-height: 650px;
  display: flex;
  align-items: center;
  background:
    linear-gradient(
      rgba(0,0,0,0.70),
      rgba(0,0,0,0.85)
    ),
    url("https://images.unsplash.com/photo-1503951914875-452162b0f3f1?auto=format&fit=crop&w=1600&q=80")
    center/cover;
}

.hero-content {
  max-width: 650px;
}

.hero-tag {
  color: #d4af37;
  font-weight: bold;
  letter-spacing: 2px;
  margin-bottom: 15px;
}

.hero h1 {
  font-size: 55px;
  line-height: 1.1;
  margin-bottom: 20px;
}

.hero h1 span {
  color: #d4af37;
}

.hero p {
  color: #ddd;
  font-size: 18px;
  margin-bottom: 30px;
}

.hero-location {
  color: #aaa;
  margin-bottom: 25px;
}

.hero-buttons {
  display: flex;
  gap: 15px;
  flex-wrap: wrap;
}

.btn {
  display: inline-block;
  padding: 14px 25px;
  border-radius: 6px;
  text-decoration: none;
  font-weight: bold;
}

.btn-gold {
  background: #d4af37;
  color: #000;
}

.btn-dark {
  border: 1px solid #d4af37;
  color: #d4af37;
}

.btn:hover {
  opacity: 0.85;
}


/* ==============================
   SERVICES
============================== */

.services-section {
  background: #101010;
}

.services-grid {
  display: grid;
  grid-template-columns:
    repeat(3, 1fr);
  gap: 20px;
}

.service-card {
  background: #171717;
  border: 1px solid #292929;
  border-radius: 12px;
  padding: 30px 22px;
  text-align: center;
  transition: 0.3s;
}

.service-card:hover {
  transform: translateY(-5px);
  border-color: #d4af37;
}

.service-icon {
  font-size: 38px;
  margin-bottom: 15px;
}

.service-card h3 {
  font-size: 20px;
  margin-bottom: 10px;
}

.service-card p {
  color: #999;
  font-size: 14px;
  margin-bottom: 18px;
}

.service-price {
  color: #d4af37;
  font-size: 23px;
  font-weight: bold;
}


/* ==============================
   GALLERY
============================== */

.gallery-section {
  background: #0b0b0b;
}

.gallery-grid {
  display: grid;
  grid-template-columns:
    repeat(3, 1fr);
  gap: 15px;
}

.gallery-item {
  height: 240px;
  overflow: hidden;
  border-radius: 10px;
  background: #151515;
}

.gallery-item img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: 0.4s;
}

.gallery-item img:hover {
  transform: scale(1.08);
}


/* ==============================
   WHY CHOOSE US
============================== */

.features-section {
  background: #101010;
}

.features-grid {
  display: grid;
  grid-template-columns:
    repeat(3, 1fr);
  gap: 20px;
}

.feature {
  background: #171717;
  padding: 25px;
  border-radius: 10px;
  border: 1px solid #292929;
}

.feature-icon {
  font-size: 30px;
  margin-bottom: 10px;
}

.feature h3 {
  color: #d4af37;
  margin-bottom: 8px;
}

.feature p {
  color: #aaa;
  font-size: 14px;
}


/* ==============================
   RESPONSIVE
============================== */

@media (max-width: 768px) {

  .nav-links {
    display: none;
    position: absolute;
    top: 75px;
    left: 0;
    width: 100%;
    background: #0b0b0b;
    flex-direction: column;
    padding: 20px;
    gap: 18px;
    border-bottom: 1px solid #292929;
  }

  .nav-links.show {
    display: flex;
  }

  .menu-btn {
    display: block;
  }

  .hero {
    min-height: 600px;
  }

  .hero h1 {
    font-size: 40px;
  }

  .services-grid,
  .features-grid {
    grid-template-columns: 1fr;
  }

  .gallery-grid {
    grid-template-columns:
      repeat(2, 1fr);
  }

}

@media (max-width: 480px) {

  .hero h1 {
    font-size: 34px;
  }

  .hero p {
    font-size: 16px;
  }

  .gallery-grid {
    grid-template-columns: 1fr;
  }

}


/* ==============================
   ADMIN BUTTON
============================== */

.admin-button {
  position: fixed;
  bottom: 20px;
  right: 20px;
  z-index: 999;
  background: #d4af37;
  color: #000;
  padding: 12px 18px;
  border-radius: 30px;
  text-decoration: none;
  font-weight: bold;
  box-shadow: 0 5px 20px rgba(0,0,0,0.4);
}

</style>

</head>


<body>


<!-- ==============================
     HEADER
================================= -->

<header>

<div class="container navbar">

<a
href="#home"
class="logo"
id="logoBusinessName">

GMM Cuts

</a>


<ul class="nav-links" id="navLinks">

<li>
<a href="#home">
Home
</a>
</li>

<li>
<a href="#services">
Services
</a>
</li>

<li>
<a href="#gallery">
Gallery
</a>
</li>

<li>
<a href="#about">
About
</a>
</li>

<li>
<a href="#booking">
Book Now
</a>
</li>

</ul>


<button
class="menu-btn"
id="menuBtn">

☰

</button>

</div>

</header>



<!-- ==============================
     HERO
================================= -->

<section
class="hero"
id="home">

<div class="container">

<div class="hero-content">

<div class="hero-tag">
PREMIUM BARBER EXPERIENCE
</div>


<h1>

Look Sharp.
<br>

Feel <span>Confident.</span>

</h1>


<p>

Welcome to
<strong id="heroBusinessName">
GMM Cuts
</strong>.

Professional haircuts,
clean styles and quality
grooming for every occasion.

</p>


<div
class="hero-location"
id="heroLocation">

📍 Ifo, Ogun State

</div>


<div class="hero-buttons">

<a
href="#booking"
class="btn btn-gold">

Book Appointment

</a>


<a
href="#services"
class="btn btn-dark">

View Services

</a>

</div>

</div>

</div>

</section>



<!-- ==============================
     SERVICES
================================= -->

<section
class="services-section"
id="services">

<div class="container">

<div class="section-title">

<h2>
Our Services
</h2>

<p>
Professional grooming at your convenience
</p>

</div>


<div class="services-grid">


<div class="service-card">

<div class="service-icon">
✂️
</div>

<h3>
Classic Haircut
</h3>

<p>
Clean and stylish haircut
for your everyday look.
</p>

<div
class="service-price"
id="classicPriceDisplay">

₦5,000

</div>

</div>



<div class="service-card">

<div class="service-icon">
💈
</div>

<h3>
Haircut + Beard
</h3>

<p>
Complete haircut and
professional beard grooming.
</p>

<div
class="service-price"
id="beardPriceDisplay">

₦7,000

</div>

</div>



<div class="service-card">

<div class="service-icon">
👑
</div>

<h3>
Premium Package
</h3>

<p>
The complete premium
grooming experience.
</p>

<div
class="service-price"
id="premiumPriceDisplay">

₦10,000

</div>

</div>


</div>

</div>

</section>



<!-- ==============================
     GALLERY
================================= -->

<section
class="gallery-section"
id="gallery">

<div class="container">

<div class="section-title">

<h2>
Our Gallery
</h2>

<p>
Fresh styles. Clean cuts. Great results.
</p>

</div>


<div class="gallery-grid">


<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1621605815971-fbc98d665033?auto=format&fit=crop&w=800&q=80"
alt="Professional haircut">

</div>


<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1599351431202-1e0f0e0e8b6b?auto=format&fit=crop&w=800&q=80"
alt="Barber haircut">

</div>


<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1622288432450-277d0fef5ed7?auto=format&fit=crop&w=800&q=80"
alt="Modern haircut">

</div>


<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1585747860715-2ba37e788b70?auto=format&fit=crop&w=800&q=80"
alt="Barbershop">

</div>


<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1512690459411-b9245aed614b?auto=format&fit=crop&w=800&q=80"
alt="Hair styling">

</div>


<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1503951914875-452162b0f3f1?auto=format&fit=crop&w=800&q=80"
alt="Barber">

</div>


</div>

</div>

</section>



<!-- ==============================
     WHY CHOOSE US
================================= -->

<section
class="features-section"
id="about">

<div class="container">

<div class="section-title">

<h2>
Why Choose Us
</h2>

<p>
More than just a haircut.
</p>

</div>


<div class="features-grid">


<div class="feature">

<div class="feature-icon">
✂️
</div>

<h3>
Professional Cuts
</h3>

<p>
Every haircut is done with
attention to detail and style.
</p>

</div>



<div class="feature">

<div class="feature-icon">
⭐
</div>

<h3>
Quality Service
</h3>

<p>
We focus on giving every
customer a clean experience.
</p>

</div>



<div class="feature">

<div class="feature-icon">
⚡
</div>

<h3>
Easy Booking
</h3>

<p>
Choose your service, date
and time and book through
WhatsApp.
</p>

</div>


</div>

</div>

  </section>
  <!-- ==============================
     SERVICES
================================= -->

<section
class="services-section"
id="services">

<div class="container">

<div class="section-title">

<h2>
Our Services
</h2>

<p>
Professional grooming at your convenience
</p>

</div>

<div class="services-grid">

<div class="service-card">

<div class="service-icon">
✂️
</div>

<h3>
Classic Haircut
</h3>

<p>
  Clean and stylish haircut
for your everyday look.
</p>

<div
class="service-price"
id="classicPriceDisplay">

₦5,000

</div>

</div>

<div class="service-card">

<div class="service-icon">
💈
</div>

<h3>
Haircut + Beard
</h3>

<p>
Complete haircut and
professional beard grooming.
</p>

<div
class="service-price"
id="beardPriceDisplay">

₦7,000
  </div>

<div class="service-card">

<div class="service-icon">
👑
</div>

<h3>
Premium Package
</h3>

<p>
The complete premium
grooming experience.
</p>

<div
class="service-price"
id="premiumPriceDisplay">

₦10,000

</div>

</div>

</div>

</div>

</section>
  <!-- =============================
     GALLERY
============================= -->

<section
class="gallery-section"
id="gallery">

<div class="container">

<div class="section-title">

<h2>
Our Gallery
</h2>

<p>
Fresh styles. Clean cuts. Great results.
</p>

</div>

<div class="gallery-grid">

<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1621605815971-fbc98d665033?auto=format&fit=crop&w=800&q=80"
alt="Professional haircut">

</div>
<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1599351431202-1e0f0e0e8b6b?auto=format&fit=crop&w=800&q=80"
alt="Barber haircut">

</div>

<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1622288432450-277d0fef5ed7?auto=format&fit=crop&w=800&q=80"
alt="Modern haircut">

</div>

<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1585747860715-2ba37e788b70?auto=format&fit=crop&w=800&q=80"
alt="Barbershop">

</div>

<div class="gallery-item">

<img
src="https://images.unsplash.com/photo
  =crop&w=800&q=80"
alt="Hair styling">

</div>

<div class="gallery-item">

<img
src="https://images.unsplash.com/photo-1503951914875-452162b0f3f1?auto=format&fit=crop&w=800&q=80"
alt="Barber">

</div>

</div>

</div>

</section>

<!-- =============================
     WHY CHOOSE US
============================= -->

<section
class="features-section"
id="about">

<div class="container">

<div class="section-title">
  Why Choose Us
</h2>

<p>
More than just a haircut.
</p>

</div>

<div class="features-grid">

<div class="feature">

<div class="feature-icon">
✂️
</div>

<h3>
Professional Cuts
</h3>

<p>
Every haircut is done with
attention to detail and style.
</p>

</div>

<div class="feature">

<div class="feature-icon">
⭐
</div>
  <h3>
Quality Service
</h3>

<p>
We focus on giving every
customer a clean experience.
</p>

</div>

<div class="feature">

<div class="feature-icon">
⚡
</div>

<h3>
Easy Booking
</h3>

<p>
Choose your service, date
and time and book through
WhatsApp.
</p>

</div>

</div>

</div>

</section>
  
  
