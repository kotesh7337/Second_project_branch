<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Premium Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

:root {
    --primary: #111827;
    --secondary: #6366f1;
    --accent: #8b5cf6;
    --pink: #ec4899;
    --success: #10b981;
    --danger: #ef4444;
    --bg: #f8fafc;
    --card: #ffffff;
    --text: #111827;
    --muted: #64748b;
    --border: #e2e8f0;
    --radius: 18px;
    --container: 1250px;
}

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: Inter, sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
}

a {
    text-decoration: none;
    color: inherit;
}

button,
input {
    font-family: inherit;
}

.container {
    width: 100%;
    max-width: var(--container);
    margin: auto;
    padding: 0 24px;
}

/* ================= HEADER ================= */

header {
    position: sticky;
    top: 0;
    z-index: 100;
    background: rgba(255,255,255,.92);
    backdrop-filter: blur(18px);
    border-bottom: 1px solid rgba(226,232,240,.8);
}

.header-inner {
    min-height: 76px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 25px;
}

.brand {
    font-family: Poppins;
    font-size: 25px;
    font-weight: 800;
    letter-spacing: -1px;
}

.brand span {
    color: var(--secondary);
}

nav ul {
    list-style: none;
    display: flex;
    gap: 8px;
}

nav a {
    display: flex;
    align-items: center;
    gap: 7px;
    padding: 10px 14px;
    border-radius: 10px;
    font-size: 14px;
    font-weight: 600;
    color: #475569;
    transition: .25s;
}

nav a:hover {
    background: #eef2ff;
    color: var(--secondary);
}

.search {
    display: flex;
    align-items: center;
    gap: 10px;
    width: 270px;
    background: #f1f5f9;
    border: 1px solid transparent;
    padding: 10px 14px;
    border-radius: 12px;
    transition: .25s;
}

.search:focus-within {
    background: white;
    border-color: #c7d2fe;
    box-shadow: 0 0 0 4px #eef2ff;
}

.search input {
    width: 100%;
    border: 0;
    outline: 0;
    background: transparent;
}

.icon-btn {
    border: 0;
    background: transparent;
    cursor: pointer;
    color: #475569;
    font-size: 17px;
}

.header-actions {
    display: flex;
    align-items: center;
    gap: 15px;
}

.cart {
    position: relative;
    font-size: 18px;
}

.cart-count {
    position: absolute;
    top: -10px;
    right: -11px;
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background: var(--danger);
    color: white;
    font-size: 11px;
    font-weight: 700;
    display: grid;
    place-items: center;
}

.mobile-toggle {
    display: none;
    border: 0;
    background: transparent;
    font-size: 21px;
}

/* ================= HERO ================= */

.hero {
    min-height: 530px;
    display: flex;
    align-items: center;
    position: relative;
    overflow: hidden;

    background:
        linear-gradient(
            100deg,
            rgba(15,23,42,.95),
            rgba(79,70,229,.75),
            rgba(139,92,246,.55)
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
        center/cover;
}

.hero-content {
    max-width: 700px;
    color: white;
}

.hero-badge {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: rgba(255,255,255,.15);
    border: 1px solid rgba(255,255,255,.25);
    padding: 8px 14px;
    border-radius: 50px;
    font-size: 13px;
    font-weight: 600;
    margin-bottom: 20px;
    backdrop-filter: blur(10px);
}

.hero h1 {
    font-family: Poppins;
    font-size: clamp(42px,6vw,70px);
    line-height: 1.05;
    letter-spacing: -3px;
    margin-bottom: 20px;
}

.hero p {
    font-size: 17px;
    max-width: 620px;
    color: rgba(255,255,255,.85);
    margin-bottom: 30px;
}

.hero-buttons {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

.btn {
    border: 0;
    cursor: pointer;
    padding: 13px 22px;
    border-radius: 12px;
    font-weight: 700;
    display: inline-flex;
    align-items: center;
    gap: 9px;
    transition: .25s;
}

.btn-primary {
    background: white;
    color: #4f46e5;
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 15px 30px rgba(0,0,0,.2);
}

.btn-ghost {
    color: white;
    border: 1px solid rgba(255,255,255,.35);
    background: rgba(255,255,255,.08);
}

.btn-ghost:hover {
    background: rgba(255,255,255,.18);
}

/* ================= SECTIONS ================= */

.section {
    padding: 80px 0;
}

.section-heading {
    text-align: center;
    margin-bottom: 40px;
}

.section-heading h2 {
    font-family: Poppins;
    font-size: 32px;
    letter-spacing: -1px;
    margin-bottom: 8px;
}

.section-heading p {
    color: var(--muted);
}

/* ================= CATEGORIES ================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6,1fr);
    gap: 16px;
}

.cat-card {
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    padding: 25px 15px;
    text-align: center;
    cursor: pointer;
    transition: .3s;
}

.cat-card:hover {
    transform: translateY(-7px);
    border-color: #c7d2fe;
    box-shadow: 0 20px 40px rgba(15,23,42,.08);
}

.cat-icon {
    width: 58px;
    height: 58px;
    margin: auto;
    margin-bottom: 14px;
    border-radius: 16px;
    display: grid;
    place-items: center;
    background: linear-gradient(135deg,#eef2ff,#f5f3ff);
    color: var(--secondary);
    font-size: 23px;
}

.cat-card h4 {
    font-size: 14px;
}

.cat-card p {
    color: var(--muted);
    font-size: 12px;
    margin-top: 4px;
}

/* ================= PRODUCTS ================= */

.products {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 22px;
}

.product {
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    overflow: hidden;
    position: relative;
    transition: .3s;
}

.product:hover {
    transform: translateY(-7px);
    box-shadow: 0 20px 45px rgba(15,23,42,.10);
}

.product-image {
    position: relative;
    height: 240px;
    overflow: hidden;
    background: #f8fafc;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s;
}

.product:hover .product-image img {
    transform: scale(1.07);
}

.badge {
    position: absolute;
    top: 14px;
    left: 14px;
    z-index: 2;
    padding: 6px 10px;
    border-radius: 8px;
    background: var(--secondary);
    color: white;
    font-size: 11px;
    font-weight: 700;
}

.wishlist {
    position: absolute;
    top: 14px;
    right: 14px;
    width: 36px;
    height: 36px;
    border: 0;
    border-radius: 50%;
    background: rgba(255,255,255,.9);
    cursor: pointer;
    z-index: 3;
}

.product-body {
    padding: 18px;
}

.product-category {
    color: var(--muted);
    font-size: 12px;
    text-transform: uppercase;
    letter-spacing: .6px;
}

.product h3 {
    font-size: 16px;
    margin: 6px 0 10px;
}

.price-row {
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.price {
    font-size: 19px;
    font-weight: 800;
}

.old-price {
    color: #94a3b8;
    font-size: 12px;
    text-decoration: line-through;
    margin-left: 5px;
}

.rating {
    color: #f59e0b;
    font-size: 13px;
}

.rating span {
    color: #94a3b8;
    font-size: 11px;
}

.product-footer {
    padding: 0 18px 18px;
}

.add-btn {
    width: 100%;
    padding: 12px;
    border: 0;
    border-radius: 11px;
    background: var(--primary);
    color: white;
    font-weight: 700;
    cursor: pointer;
    transition: .25s;
}

.add-btn:hover {
    background: var(--secondary);
}

/* ================= FLASH SALE ================= */

.deal {
    display: grid;
    grid-template-columns: 1fr 1fr;
    overflow: hidden;
    border-radius: 24px;
    background: linear-gradient(135deg,#111827,#312e81);
    color: white;
    box-shadow: 0 25px 60px rgba(15,23,42,.15);
}

.deal-image {
    min-height: 400px;
}

.deal-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.deal-content {
    padding: 55px;
    display: flex;
    justify-content: center;
    flex-direction: column;
}

.sale-label {
    color: #c4b5fd;
    font-size: 13px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.deal h2 {
    font-family: Poppins;
    font-size: 38px;
    margin: 8px 0 12px;
}

.deal-description {
    color: #cbd5e1;
    margin-bottom: 25px;
}

.timer {
    display: flex;
    gap: 10px;
    margin-bottom: 25px;
}

.time-box {
    min-width: 70px;
    padding: 12px 8px;
    background: rgba(255,255,255,.1);
    border: 1px solid rgba(255,255,255,.12);
    border-radius: 12px;
    text-align: center;
}

.time-box strong {
    display: block;
    font-size: 22px;
}

.time-box small {
    color: #cbd5e1;
}

.deal-price {
    font-size: 30px;
    font-weight: 800;
    margin-bottom: 20px;
}

.deal-price del {
    font-size: 15px;
    color: #94a3b8;
    margin-left: 8px;
}

/* ================= TESTIMONIALS ================= */

.testimonials {
    display: grid;
    grid-template-columns: repeat(2,1fr);
    gap: 20px;
}

.testimonial {
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    padding: 28px;
}

.testimonial-stars {
    color: #f59e0b;
    margin-bottom: 15px;
}

.testimonial p {
    color: #475569;
    margin-bottom: 20px;
}

.user {
    display: flex;
    align-items: center;
    gap: 12px;
}

.user img {
    width: 44px;
    height: 44px;
    border-radius: 50%;
    object-fit: cover;
}

.user strong {
    display: block;
}

.user span {
    color: var(--muted);
    font-size: 12px;
}

/* ================= NEWSLETTER ================= */

.newsletter {
    position: relative;
    overflow: hidden;
    border-radius: 24px;
    padding: 60px 25px;
    text-align: center;
    color: white;
    background:
        linear-gradient(135deg,#4f46e5,#7c3aed,#db2777);
}

.newsletter h2 {
    font-family: Poppins;
    font-size: 34px;
    margin-bottom: 8px;
}

.newsletter p {
    opacity: .85;
    margin-bottom: 25px;
}

.newsletter-form {
    display: flex;
    justify-content: center;
    gap: 8px;
    flex-wrap: wrap;
}

.newsletter input {
    width: 320px;
    max-width: 100%;
    padding: 14px 17px;
    border: 0;
    border-radius: 11px;
    outline: 0;
}

.newsletter .btn {
    background: #111827;
    color: white;
}

/* ================= FOOTER ================= */

footer {
    background: #0f172a;
    color: #cbd5e1;
    padding: 60px 0 25px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr;
    gap: 60px;
}

.footer-brand {
    font-family: Poppins;
    color: white;
    font-size: 24px;
    font-weight: 800;
}

.footer-brand span {
    color: #818cf8;
}

footer h4 {
    color: white;
    margin-bottom: 15px;
}

footer p,
footer li {
    color: #94a3b8;
    font-size: 14px;
}

footer ul {
    list-style: none;
}

footer li {
    margin-bottom: 8px;
}

.socials {
    display: flex;
    gap: 10px;
    margin-top: 20px;
}

.socials a {
    width: 38px;
    height: 38px;
    border-radius: 10px;
    background: #1e293b;
    display: grid;
    place-items: center;
    transition: .25s;
}

.socials a:hover {
    background: var(--secondary);
    color: white;
}

.copyright {
    text-align: center;
    border-top: 1px solid #1e293b;
    margin-top: 40px;
    padding-top: 20px;
    color: #64748b;
    font-size: 13px;
}

/* ================= MOBILE ================= */

@media(max-width:1100px) {

    nav {
        display: none;
    }

    .mobile-toggle {
        display: block;
    }

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(3,1fr);
    }

}

@media(max-width:800px) {

    .header-inner {
        flex-wrap: wrap;
        padding: 15px 0;
    }

    .search {
        order: 5;
        width: 100%;
    }

    .hero {
        min-height: 520px;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal-image {
        min-height: 260px;
    }

    .deal-content {
        padding: 35px 25px;
    }

    .testimonials {
        grid-template-columns: 1fr;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }

}

@media(max-width:600px) {

    .container {
        padding: 0 16px;
    }

    .section {
        padding: 55px 0;
    }

    .hero h1 {
        font-size: 42px;
        letter-spacing: -2px;
    }

    .hero p {
        font-size: 15px;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
    }

    .products {
        grid-template-columns: 1fr;
    }

    .deal h2 {
        font-size: 30px;
    }

    .timer {
        flex-wrap: wrap;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }

}

</style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

<div class="container header-inner">

    <button class="mobile-toggle" id="mobileToggle">
        <i class="fas fa-bars"></i>
    </button>

    <a href="#" class="brand">
        Nexus<span>Shop</span>
    </a>

    <nav>
        <ul>
            <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
            <li><a href="#categories"><i class="fas fa-layer-group"></i> Categories</a></li>
            <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
            <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
            <li><a href="#about"><i class="fas fa-circle-info"></i> About</a></li>
        </ul>
    </nav>

    <div class="search">
        <i class="fas fa-search"></i>

        <input
            type="search"
            id="searchInput"
            placeholder="Search products..."
        >

        <button
            class="icon-btn"
            id="searchBtn"
        >
            <i class="fas fa-arrow-right"></i>
        </button>
    </div>

    <div class="header-actions">

        <button class="icon-btn">
            <i class="far fa-user"></i>
        </button>

        <button class="icon-btn">
            <i class="far fa-heart"></i>
        </button>

        <a href="#" class="cart">
            <i class="fas fa-shopping-bag"></i>
            <span class="cart-count" id="cartCount">0</span>
        </a>

    </div>

</div>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

<div class="container">

<div class="hero-content">

    <div class="hero-badge">
        <i class="fas fa-sparkles"></i>
        New Season Collection
    </div>

    <h1>
        Premium Picks.<br>
        Better Prices.
    </h1>

    <p>
        Discover the latest technology, fashion and accessories
        carefully selected for modern lifestyles.
    </p>

    <div class="hero-buttons">

        <button class="btn btn-primary" id="shopNow">
            Shop Now
            <i class="fas fa-arrow-right"></i>
        </button>

        <button class="btn btn-ghost" id="exploreDeals">
            <i class="fas fa-bolt"></i>
            Explore Deals
        </button>

    </div>

</div>

</div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="section" id="categories">

<div class="container">

<div class="section-heading">

    <h2>Shop by Category</h2>

    <p>
        Find exactly what you're looking for.
    </p>

</div>

<div class="categories" id="categoriesGrid"></div>

</div>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="section" id="products">

<div class="container">

<div class="section-heading">

    <h2>Trending Products</h2>

    <p>
        Popular products our customers love.
    </p>

</div>

<div class="products" id="productsGrid"></div>

</div>

</section>


<!-- ================= DEAL ================= -->

<section class="section" id="deals">

<div class="container">

<div class="section-heading">

    <h2>Flash Sale</h2>

    <p>Limited-time offer. Don't miss it.</p>

</div>

<div class="deal">

<div class="deal-image">

    <img
        src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
        alt="MacBook Air"
    >

</div>

<div class="deal-content">

    <span class="sale-label">
        Limited Time Offer
    </span>

    <h2>MacBook Air M2</h2>

    <p class="deal-description">
        Thin, light and powerful. Experience incredible
        performance with Apple's M2 chip.
    </p>

    <div class="timer">

        <div class="time-box">
            <strong id="dealDays">0</strong>
            <small>Days</small>
        </div>

        <div class="time-box">
            <strong id="dealHours">00</strong>
            <small>Hours</small>
        </div>

        <div class="time-box">
            <strong id="dealMinutes">00</strong>
            <small>Minutes</small>
        </div>

        <div class="time-box">
            <strong id="dealSeconds">00</strong>
            <small>Seconds</small>
        </div>

    </div>

    <div class="deal-price">
        $999
        <del>$1,199</del>
    </div>

    <button class="btn btn-primary" id="buyDeal">
        Buy Now
        <i class="fas fa-arrow-right"></i>
    </button>

</div>

</div>

</div>

</section>


<!-- ================= TESTIMONIALS ================= -->

<section class="section">

<div class="container">

<div class="section-heading">

    <h2>What Customers Say</h2>

    <p>Real feedback from our customers.</p>

</div>

<div class="testimonials">

<div class="testimonial">

    <div class="testimonial-stars">
        ★★★★★
    </div>

    <p>
        "Fast shipping and excellent customer support.
        The product exceeded my expectations!"
    </p>

    <div class="user">

        <img
            src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
        >

        <div>
            <strong>Ava Martin</strong>
            <span>Verified Buyer</span>
        </div>

    </div>

</div>


<div class="testimonial">

    <div class="testimonial-stars">
        ★★★★☆
    </div>

    <p>
        "Great selection and the checkout was smooth.
        Will definitely shop again."
    </p>

    <div class="user">

        <img
            src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80"
        >

        <div>
            <strong>Michael Lee</strong>
            <span>Frequent Buyer</span>
        </div>

    </div>

</div>

</div>

</div>

</section>


<!-- ================= NEWSLETTER ================= -->

<section class="section">

<div class="container">

<div class="newsletter">

    <h2>Stay in the Loop</h2>

    <p>
        Get exclusive offers and new product updates.
    </p>

    <form
        class="newsletter-form"
        id="newsletterForm"
    >

        <input
            type="email"
            id="newsletterEmail"
            placeholder="Enter your email"
            required
        >

        <button class="btn" type="submit">
            Subscribe
        </button>

    </form>

    <div id="newsletterMsg"></div>

</div>

</div>

</section>


<!-- ================= FOOTER ================= -->

<footer id="about">

<div class="container">

<div class="footer-grid">

<div>

    <div class="footer-brand">
        Nexus<span>Shop</span>
    </div>

    <p style="margin-top:12px;max-width:420px;">
        A modern e-commerce experience built for people
        who want quality products at great prices.
    </p>

    <div class="socials">

        <a href="#">
            <i class="fab fa-facebook-f"></i>
        </a>

        <a href="#">
            <i class="fab fa-instagram"></i>
        </a>

        <a href="#">
            <i class="fab fa-x-twitter"></i>
        </a>

        <a href="#">
            <i class="fab fa-linkedin-in"></i>
        </a>

    </div>

</div>


<div>

    <h4>Company</h4>

    <ul>
        <li>About Us</li>
        <li>Careers</li>
        <li>Press</li>
        <li>Blog</li>
    </ul>

</div>


<div>

    <h4>Support</h4>

    <ul>
        <li>Help Center</li>
        <li>Shipping & Returns</li>
        <li>Contact Us</li>
        <li>Privacy Policy</li>
    </ul>

</div>

</div>

<div class="copyright">
    © <span id="year"></span> NexusShop. All rights reserved.
</div>

</div>

</footer>


<script>

/* ================= DATA ================= */

const CATEGORIES = [

    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-screen"
    },

    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop"
    },

    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-shirt"
    },

    {
        id: "gadgets",
        name: "Gadgets",
        icon: "fa-headphones"
    },

    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints"
    },

    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-watch"
    }

];


const PRODUCTS = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
        category: "phones"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
        category: "laptops"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85",
        category: "accessories"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85",
        category: "footwear"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",
        category: "gadgets"
    },

    {
        id: 6,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",
        category: "accessories"
    },

    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85",
        category: "accessories"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85",
        category: "gadgets"
    }

];


/* ================= ELEMENTS ================= */

const categoriesGrid =
    document.getElementById("categoriesGrid");

const productsGrid =
    document.getElementById("productsGrid");

const searchInput =
    document.getElementById("searchInput");

const cartCountEl =
    document.getElementById("cartCount");

let cartCount = 0;


/* ================= CATEGORIES ================= */

function renderCategories() {

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(category => {

        const card = document.createElement("div");

        card.className = "cat-card";

        card.innerHTML = `

            <div class="cat-icon">
                <i class="fas ${category.icon}"></i>
            </div>

            <h4>${category.name}</h4>

            <p>Explore products</p>

        `;

        card.addEventListener("click", () => {

            searchInput.value = category.name;

            filterProducts(category.name);

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });

        categoriesGrid.appendChild(card);

    });

}


/* ================= PRODUCTS ================= */

function renderProducts(list) {

    productsGrid.innerHTML = "";

    if (list.length === 0) {

        productsGrid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:50px;
                color:#64748b;
            ">
                <i class="fas fa-box-open"
                   style="font-size:40px;margin-bottom:15px;">
                </i>

                <h3>No products found</h3>

                <p>Try another search.</p>
            </div>
        `;

        return;
    }


    list.forEach(product => {

        const card =
            document.createElement("article");

        card.className = "product";

        card.innerHTML = `

            <div class="product-image">

                ${
                    product.badge
                    ?
                    `<span class="badge">
                        ${product.badge}
                    </span>`
                    :
                    ""
                }

                <button
                    class="wishlist"
                    aria-label="Wishlist"
                >
                    <i class="far fa-heart"></i>
                </button>

                <img
                    src="${product.img}"
                    alt="${product.title}"
                >

            </div>


            <div class="product-body">

                <div class="product-category">
                    ${product.category}
                </div>

                <h3>
                    ${product.title}
                </h3>

                <div class="price-row">

                    <div>

                        <span class="price">
                            $${product.price.toLocaleString()}
                        </span>

                        ${
                            product.oldPrice
                            ?
                            `<span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>`
                            :
                            ""
                        }

                    </div>

                    <div class="rating">

                        ${"★".repeat(Math.round(product.rating))}

                        <span>
                            (${product.reviews})
                        </span>

                    </div>

                </div>

            </div>


            <div class="product-footer">

                <button
                    class="add-btn"
                    data-id="${product.id}"
                >

                    <i class="fas fa-cart-plus"></i>
                    Add to Cart

                </button>

            </div>
        `;

        productsGrid.appendChild(card);

    });


    document
        .querySelectorAll(".add-btn")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    const id =
                        Number(button.dataset.id);

                    addToCart(id);

                }
            );

        });

}


/* ================= CART ================= */

function addToCart(productId) {

    const product =
        PRODUCTS.find(
            item => item.id === productId
        );

    if (!product) return;

    cartCount++;

    cartCountEl.textContent =
        cartCount;

    const button =
        document.querySelector(
            `.add-btn[data-id="${productId}"]`
        );

    if (button) {

        const original =
            button.innerHTML;

        button.innerHTML =
            `<i class="fas fa-check"></i> Added`;

        button.style.background =
            "#10b981";

        setTimeout(() => {

            button.innerHTML =
                original;

            button.style.background =
                "";

        }, 1200);

    }

}


/* ================= SEARCH ================= */

function filterProducts(query) {

    const q =
        String(query)
        .trim()
        .toLowerCase();

    if (!q) {

        renderProducts(PRODUCTS);

        return;
    }

    const filtered =
        PRODUCTS.filter(product =>

            product.title
                .toLowerCase()
                .includes(q)

            ||

            product.category
                .toLowerCase()
                .includes(q)

        );

    renderProducts(filtered);

}


document
    .getElementById("searchBtn")
    .addEventListener("click", () => {

        filterProducts(searchInput.value);

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


searchInput.addEventListener(
    "keydown",
    event => {

        if (event.key === "Enter") {

            filterProducts(
                searchInput.value
            );

        }

    }
);


/* ================= SHOP NOW ================= */

document
    .getElementById("shopNow")
    .addEventListener("click", () => {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


document
    .getElementById("exploreDeals")
    .addEventListener("click", () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


/* ================= DEAL ================= */

document
    .getElementById("buyDeal")
    .addEventListener("click", () => {

        cartCount++;

        cartCountEl.textContent =
            cartCount;

        alert(
            "MacBook Air M2 added to cart!"
        );

    });


(function dealTimer() {

    const target =
        new Date(
            Date.now() +
            (24 * 60 + 36) *
            60 *
            1000
        );


    function updateTimer() {

        const diff =
            target - new Date();

        if (diff <= 0) return;


        const days =
            Math.floor(
                diff /
                (1000 * 60 * 60 * 24)
            );

        const hours =
            Math.floor(
                (diff %
                    (1000 * 60 * 60 * 24))
                /
                (1000 * 60 * 60)
            );

        const minutes =
            Math.floor(
                (diff %
                    (1000 * 60 * 60))
                /
                (1000 * 60)
            );

        const seconds =
            Math.floor(
                (diff %
                    (1000 * 60))
                /
                1000
            );


        document.getElementById(
            "dealDays"
        ).textContent = days;


        document.getElementById(
            "dealHours"
        ).textContent =
            String(hours).padStart(2,"0");


        document.getElementById(
            "dealMinutes"
        ).textContent =
            String(minutes).padStart(2,"0");


        document.getElementById(
            "dealSeconds"
        ).textContent =
            String(seconds).padStart(2,"0");

    }


    updateTimer();

    setInterval(updateTimer,1000);

})();


/* ================= NEWSLETTER ================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();

            const email =
                document
                .getElementById(
                    "newsletterEmail"
                )
                .value
                .trim();

            const message =
                document.getElementById(
                    "newsletterMsg"
                );


            if (!email.includes("@")) {

                message.textContent =
                    "Please enter a valid email.";

                message.style.marginTop =
                    "12px";

                return;

            }


            message.textContent =
                "✓ Thanks! You are subscribed.";

            message.style.marginTop =
                "12px";

            document
                .getElementById(
                    "newsletterEmail"
                )
                .value = "";

        }
    );


/* ================= MOBILE MENU ================= */

document
    .getElementById("mobileToggle")
    .addEventListener("click", () => {

        const nav =
            document.querySelector("nav");

        if (
            nav.style.display === "block"
        ) {

            nav.style.display = "";

        } else {

            nav.style.display = "block";

        }

    });


/* ================= INIT ================= */

renderCategories();

renderProducts(PRODUCTS);

document.getElementById(
    "year"
).textContent =
    new Date().getFullYear();

</script>

</body>
</html>
