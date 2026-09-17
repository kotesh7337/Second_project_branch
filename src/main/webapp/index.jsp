<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShirts - Premium Shirts</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@500;600;700;800&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", sans-serif;
            background: #f6f7fb;
            color: #111827;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input {
            font-family: inherit;
        }

        /* =========================
           HEADER
        ========================== */

        header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            height: 76px;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.07);
        }

        .nav-container {
            width: min(1200px, 92%);
            height: 100%;
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 25px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: "Poppins", sans-serif;
            font-weight: 800;
            font-size: 24px;
            color: #111827;
        }

        .logo-icon {
            width: 42px;
            height: 42px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #111827, #374151);
            color: white;
            font-size: 19px;
        }

        .logo span {
            color: #e11d48;
        }

        nav {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        nav a {
            font-size: 14px;
            font-weight: 600;
            color: #4b5563;
            transition: 0.3s;
        }

        nav a:hover,
        nav a.active {
            color: #e11d48;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon-btn {
            position: relative;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            border: 1px solid #e5e7eb;
            background: white;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #374151;
            transition: 0.3s;
        }

        .icon-btn:hover {
            background: #111827;
            color: white;
            transform: translateY(-2px);
        }

        .cart-count {
            position: absolute;
            right: -2px;
            top: -4px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            background: #e11d48;
            color: #fff;
            font-size: 10px;
            font-weight: 700;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .menu-btn {
            display: none;
        }

        /* =========================
           HERO
        ========================== */

        .hero {
            min-height: 100vh;
            padding-top: 76px;

            background:
                linear-gradient(
                    90deg,
                    rgba(10, 15, 25, 0.88) 0%,
                    rgba(10, 15, 25, 0.66) 45%,
                    rgba(10, 15, 25, 0.25) 100%
                ),
                url("https://images.unsplash.com/photo-1603252110481-7ba873bf42ab?auto=format&fit=crop&w=2000&q=90")
                center/cover no-repeat;

            display: flex;
            align-items: center;
        }

        .hero-content {
            width: min(1200px, 92%);
            margin: auto;
            color: white;
        }

        .hero-text {
            max-width: 680px;
            padding-bottom: 20px;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 9px 16px;
            border-radius: 30px;
            border: 1px solid rgba(255,255,255,0.25);
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(8px);
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 1px;
            margin-bottom: 24px;
        }

        .hero h1 {
            font-family: "Poppins", sans-serif;
            font-size: clamp(42px, 6vw, 78px);
            line-height: 1.03;
            margin-bottom: 22px;
            font-weight: 800;
        }

        .hero h1 span {
            color: #fb7185;
        }

        .hero p {
            font-size: 18px;
            line-height: 1.7;
            color: #e5e7eb;
            max-width: 600px;
            margin-bottom: 32px;
        }

        .hero-buttons {
            display: flex;
            align-items: center;
            gap: 14px;
            flex-wrap: wrap;
        }

        .btn {
            border: none;
            cursor: pointer;
            padding: 14px 22px;
            border-radius: 12px;
            font-size: 14px;
            font-weight: 700;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            transition: 0.3s;
        }

        .btn-primary {
            background: #e11d48;
            color: white;
            box-shadow: 0 12px 30px rgba(225, 29, 72, 0.3);
        }

        .btn-primary:hover {
            background: #be123c;
            transform: translateY(-3px);
        }

        .btn-outline {
            color: white;
            border: 1px solid rgba(255,255,255,0.35);
            background: rgba(255,255,255,0.08);
            backdrop-filter: blur(5px);
        }

        .btn-outline:hover {
            background: white;
            color: #111827;
        }

        /* =========================
           FEATURES
        ========================== */

        .features {
            margin-top: 45px;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            max-width: 700px;
            gap: 15px;
        }

        .feature-box {
            padding: 16px;
            border-radius: 14px;
            background: rgba(255,255,255,0.1);
            border: 1px solid rgba(255,255,255,0.15);
            backdrop-filter: blur(8px);
        }

        .feature-box i {
            font-size: 19px;
            margin-bottom: 10px;
            color: #fda4af;
        }

        .feature-box h4 {
            font-size: 13px;
            margin-bottom: 4px;
        }

        .feature-box p {
            font-size: 11px;
            color: #d1d5db;
            margin: 0;
        }

        /* =========================
           MAIN
        ========================== */

        .section {
            width: min(1200px, 92%);
            margin: auto;
            padding: 90px 0;
        }

        .section-heading {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 35px;
        }

        .section-label {
            color: #e11d48;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            margin-bottom: 8px;
        }

        .section-heading h2 {
            font-family: "Poppins", sans-serif;
            font-size: 36px;
            font-weight: 800;
        }

        .section-heading p {
            color: #6b7280;
            font-size: 14px;
            max-width: 480px;
            line-height: 1.6;
        }

        /* =========================
           SEARCH
        ========================== */

        .search-area {
            margin-bottom: 35px;
        }

        .search-box {
            position: relative;
            max-width: 500px;
        }

        .search-box i {
            position: absolute;
            left: 17px;
            top: 50%;
            transform: translateY(-50%);
            color: #9ca3af;
        }

        .search-box input {
            width: 100%;
            height: 50px;
            border: 1px solid #e5e7eb;
            border-radius: 14px;
            outline: none;
            padding: 0 20px 0 45px;
            background: white;
            font-size: 14px;
            transition: 0.3s;
        }

        .search-box input:focus {
            border-color: #e11d48;
            box-shadow: 0 0 0 4px rgba(225,29,72,0.08);
        }

        /* =========================
           CATEGORIES
        ========================== */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .category-card {
            padding: 24px 14px;
            text-align: center;
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

        .category-card:hover,
        .category-card.active {
            border-color: #e11d48;
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.08);
        }

        .category-icon {
            width: 58px;
            height: 58px;
            margin: 0 auto 13px;
            border-radius: 16px;
            background: #fff1f2;
            color: #e11d48;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
        }

        .category-card h4 {
            font-size: 13px;
            margin-bottom: 5px;
        }

        .category-card p {
            font-size: 11px;
            color: #9ca3af;
        }

        /* =========================
           PRODUCTS
        ========================== */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 20px;
            overflow: hidden;
            transition: 0.35s;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 45px rgba(0,0,0,0.10);
        }

        .product-image {
            position: relative;
            height: 300px;
            background: #f3f4f6;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.5s;
        }

        .product-card:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            left: 13px;
            top: 13px;
            padding: 6px 9px;
            border-radius: 8px;
            background: #111827;
            color: white;
            font-size: 10px;
            font-weight: 700;
            z-index: 2;
        }

        .favorite-btn {
            position: absolute;
            right: 13px;
            top: 13px;
            width: 37px;
            height: 37px;
            border-radius: 50%;
            border: none;
            background: rgba(255,255,255,0.9);
            color: #6b7280;
            cursor: pointer;
            z-index: 3;
        }

        .favorite-btn:hover {
            color: #e11d48;
        }

        .product-info {
            padding: 18px;
        }

        .rating {
            display: flex;
            gap: 2px;
            color: #f59e0b;
            font-size: 12px;
            margin-bottom: 8px;
        }

        .rating span {
            margin-left: 5px;
            color: #9ca3af;
        }

        .product-title {
            font-family: "Poppins", sans-serif;
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .product-subtitle {
            font-size: 12px;
            color: #9ca3af;
            margin-bottom: 13px;
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .price {
            display: flex;
            flex-direction: column;
        }

        .current-price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            font-size: 11px;
            color: #9ca3af;
            text-decoration: line-through;
        }

        .add-cart {
            width: 42px;
            height: 42px;
            border: none;
            border-radius: 12px;
            background: #111827;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

        .add-cart:hover {
            background: #e11d48;
            transform: scale(1.06);
        }

        /* =========================
           OFFER
        ========================== */

        .offer {
            width: min(1200px, 92%);
            margin: 0 auto 80px;
            border-radius: 28px;
            padding: 40px;
            background:
                linear-gradient(
                    90deg,
                    rgba(17,24,39,0.97),
                    rgba(17,24,39,0.84)
                ),
                url("https://images.unsplash.com/photo-1594938298603-c8148c4dae35?auto=format&fit=crop&w=1600&q=80")
                center/cover;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 30px;
        }

        .offer-content {
            max-width: 600px;
        }

        .offer-small {
            font-size: 11px;
            font-weight: 800;
            color: #fda4af;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            margin-bottom: 10px;
        }

        .offer h2 {
            font-family: "Poppins", sans-serif;
            font-size: 34px;
            margin-bottom: 10px;
        }

        .offer p {
            color: #d1d5db;
            line-height: 1.6;
            font-size: 14px;
        }

        .offer-price {
            margin-top: 16px;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .offer-price strong {
            font-size: 28px;
        }

        .offer-price del {
            color: #9ca3af;
        }

        /* =========================
           NEWSLETTER
        ========================== */

        .newsletter {
            background: white;
            border-top: 1px solid #e5e7eb;
            border-bottom: 1px solid #e5e7eb;
            padding: 60px 0;
        }

        .newsletter-inner {
            width: min(800px, 92%);
            margin: auto;
            text-align: center;
        }

        .newsletter h2 {
            font-family: "Poppins", sans-serif;
            font-size: 32px;
            margin-bottom: 10px;
        }

        .newsletter p {
            color: #6b7280;
            font-size: 14px;
            margin-bottom: 25px;
        }

        .newsletter-form {
            max-width: 550px;
            margin: auto;
            display: flex;
            gap: 10px;
        }

        .newsletter-form input {
            flex: 1;
            height: 48px;
            border: 1px solid #e5e7eb;
            border-radius: 11px;
            padding: 0 16px;
            outline: none;
        }

        /* =========================
           FOOTER
        ========================== */

        footer {
            background: #111827;
            color: white;
            padding: 65px 0 25px;
        }

        .footer-container {
            width: min(1200px, 92%);
            margin: auto;
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-logo {
            font-family: "Poppins", sans-serif;
            font-size: 24px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .footer-logo span {
            color: #fb7185;
        }

        .footer-col p {
            color: #9ca3af;
            font-size: 13px;
            line-height: 1.7;
            max-width: 340px;
        }

        .footer-col h4 {
            font-size: 13px;
            margin-bottom: 16px;
        }

        .footer-col a {
            display: block;
            color: #9ca3af;
            font-size: 12px;
            margin-bottom: 11px;
            transition: 0.3s;
        }

        .footer-col a:hover {
            color: white;
        }

        .footer-bottom {
            width: min(1200px, 92%);
            margin: 45px auto 0;
            padding-top: 20px;
            border-top: 1px solid rgba(255,255,255,0.1);
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            color: #6b7280;
            font-size: 11px;
        }

        /* =========================
           TOAST
        ========================== */

        .toast {
            position: fixed;
            right: 20px;
            bottom: 20px;
            background: #111827;
            color: white;
            padding: 14px 18px;
            border-radius: 12px;
            font-size: 13px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            opacity: 0;
            pointer-events: none;
            transform: translateY(20px);
            transition: 0.35s;
            z-index: 2000;
        }

        .toast.show {
            opacity: 1;
            transform: translateY(0);
        }

        /* =========================
           RESPONSIVE
        ========================== */

        @media (max-width: 1000px) {

            nav {
                display: none;
            }

            .menu-btn {
                display: flex;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-container {
                grid-template-columns: repeat(2, 1fr);
            }

            .offer {
                flex-direction: column;
                align-items: flex-start;
            }
        }

        @media (max-width: 650px) {

            header {
                height: 68px;
            }

            .hero {
                padding-top: 68px;
            }

            .logo {
                font-size: 19px;
            }

            .logo-icon {
                width: 37px;
                height: 37px;
            }

            .nav-actions .search-trigger,
            .nav-actions .heart-btn {
                display: none;
            }

            .hero h1 {
                font-size: 43px;
            }

            .hero p {
                font-size: 15px;
            }

            .features {
                grid-template-columns: 1fr;
                max-width: 320px;
            }

            .section {
                padding: 60px 0;
            }

            .section-heading {
                flex-direction: column;
                align-items: flex-start;
            }

            .section-heading h2 {
                font-size: 28px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 380px;
            }

            .offer {
                padding: 28px;
            }

            .offer h2 {
                font-size: 28px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .footer-container {
                grid-template-columns: 1fr;
            }

            .footer-bottom {
                flex-direction: column;
                align-items: flex-start;
            }
        }
    </style>
</head>

<body>

<!-- =========================
     HEADER
========================= -->

<header>

    <div class="nav-container">

        <a href="#" class="logo">
            <div class="logo-icon">
                <i class="fa-solid fa-shirt"></i>
            </div>

            Nexus<span>Shirts</span>
        </a>

        <nav>
            <a href="#home" class="active">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Shirts</a>
            <a href="#offer">Offers</a>
            <a href="#contact">Contact</a>
        </nav>

        <div class="nav-actions">

            <button class="icon-btn search-trigger"
                    onclick="focusSearch()">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

            <button class="icon-btn heart-btn">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="icon-btn">
                <i class="fa-solid fa-bag-shopping"></i>

                <span class="cart-count" id="cartCount">
                    0
                </span>
            </button>

            <button class="icon-btn menu-btn">
                <i class="fa-solid fa-bars"></i>
            </button>

        </div>

    </div>

</header>


<!-- =========================
     HERO
========================= -->

<section class="hero" id="home">

    <div class="hero-content">

        <div class="hero-text">

            <div class="hero-badge">
                <i class="fa-solid fa-sparkles"></i>
                PREMIUM SHIRT COLLECTION
            </div>

            <h1>
                Premium Shirts.
                <br>
                <span>Made for You.</span>
            </h1>

            <p>
                Discover premium formal, casual, linen and denim shirts
                designed for comfort, confidence and everyday style.
            </p>

            <div class="hero-buttons">

                <button class="btn btn-primary"
                        onclick="scrollToProducts()">

                    <i class="fa-solid fa-shirt"></i>

                    Shop Shirts
                </button>

                <button class="btn btn-outline"
                        onclick="scrollToCategories()">

                    Explore Collection
                    <i class="fa-solid fa-arrow-down"></i>

                </button>

            </div>

            <div class="features">

                <div class="feature-box">
                    <i class="fa-solid fa-truck"></i>

                    <h4>Free Delivery</h4>

                    <p>
                        On orders above $50
                    </p>
                </div>

                <div class="feature-box">
                    <i class="fa-solid fa-rotate-left"></i>

                    <h4>Easy Returns</h4>

                    <p>
                        30-day return policy
                    </p>
                </div>

                <div class="feature-box">
                    <i class="fa-solid fa-shield-halved"></i>

                    <h4>Secure Payment</h4>

                    <p>
                        100% secure checkout
                    </p>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     CATEGORIES
========================= -->

<section class="section" id="categories">

    <div class="section-heading">

        <div>
            <div class="section-label">
                Shop by Style
            </div>

            <h2>
                Shirt Collection
            </h2>
        </div>

        <p>
            Find the right shirt for work, weekends,
            special occasions and everyday wear.
        </p>

    </div>


    <div class="categories">

        <div class="category-card active"
             onclick="filterProducts('All', this)">

            <div class="category-icon">
                <i class="fa-solid fa-border-all"></i>
            </div>

            <h4>All Shirts</h4>

            <p>8 Products</p>

        </div>


        <div class="category-card"
             onclick="filterProducts('Formal', this)">

            <div class="category-icon">
                <i class="fa-solid fa-user-tie"></i>
            </div>

            <h4>Formal Shirts</h4>

            <p>2 Products</p>

        </div>


        <div class="category-card"
             onclick="filterProducts('Casual', this)">

            <div class="category-icon">
                <i class="fa-solid fa-shirt"></i>
            </div>

            <h4>Casual Shirts</h4>

            <p>2 Products</p>

        </div>


        <div class="category-card"
             onclick="filterProducts('Linen', this)">

            <div class="category-icon">
                <i class="fa-solid fa-sun"></i>
            </div>

            <h4>Linen Shirts</h4>

            <p>1 Product</p>

        </div>


        <div class="category-card"
             onclick="filterProducts('Denim', this)">

            <div class="category-icon">
                <i class="fa-solid fa-layer-group"></i>
            </div>

            <h4>Denim Shirts</h4>

            <p>1 Product</p>

        </div>


        <div class="category-card"
             onclick="filterProducts('New', this)">

            <div class="category-icon">
                <i class="fa-solid fa-star"></i>
            </div>

            <h4>New Arrivals</h4>

            <p>2 Products</p>

        </div>

    </div>

</section>


<!-- =========================
     PRODUCTS
========================= -->

<section class="section" id="products">

    <div class="section-heading">

        <div>
            <div class="section-label">
                Our Collection
            </div>

            <h2>
                Featured Shirts
            </h2>
        </div>

        <p>
            Premium shirts selected for quality,
            comfort and modern style.
        </p>

    </div>


    <!-- SEARCH -->

    <div class="search-area">

        <div class="search-box">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                type="text"
                id="searchInput"
                placeholder="Search shirts..."
                oninput="searchProducts()"
            >

        </div>

    </div>


    <!-- PRODUCT GRID -->

    <div class="products" id="productGrid"></div>

</section>


<!-- =========================
     OFFER
========================= -->

<section class="offer" id="offer">

    <div class="offer-content">

        <div class="offer-small">
            Limited Time Offer
        </div>

        <h2>
            Premium Shirt Combo
        </h2>

        <p>
            Get a stylish combination of premium shirts
            and save more on your order.
        </p>

        <div class="offer-price">

            <strong>
                $79
            </strong>

            <del>
                $99
            </del>

        </div>

        <br>

        <button class="btn btn-primary"
                onclick="showToast('Combo added to cart!')">

            Get the Deal

            <i class="fa-solid fa-arrow-right"></i>

        </button>

    </div>

</section>


<!-- =========================
     NEWSLETTER
========================= -->

<section class="newsletter">

    <div class="newsletter-inner">

        <div class="section-label">
            Stay Updated
        </div>

        <h2>
            Get New Shirt Drops
        </h2>

        <p>
            Subscribe to receive new arrivals,
            exclusive discounts and special offers.
        </p>

        <form class="newsletter-form"
              onsubmit="subscribeNewsletter(event)">

            <input
                type="email"
                id="emailInput"
                placeholder="Enter your email address"
                required
            >

            <button class="btn btn-primary">
                Subscribe
            </button>

        </form>

    </div>

</section>


<!-- =========================
     FOOTER
========================= -->

<footer id="contact">

    <div class="footer-container">

        <div class="footer-col">

            <div class="footer-logo">
                Nexus<span>Shirts</span>
            </div>

            <p>
                Premium shirts for modern lifestyles.
                Quality fabrics, comfortable fits and
                timeless designs.
            </p>

        </div>


        <div class="footer-col">

            <h4>Shop</h4>

            <a href="#products">
                Formal Shirts
            </a>

            <a href="#products">
                Casual Shirts
            </a>

            <a href="#products">
                Linen Shirts
            </a>

            <a href="#products">
                Denim Shirts
            </a>

        </div>


        <div class="footer-col">

            <h4>Support</h4>

            <a href="#">
                Contact Us
            </a>

            <a href="#">
                Shipping
            </a>

            <a href="#">
                Returns
            </a>

            <a href="#">
                FAQs
            </a>

        </div>


        <div class="footer-col">

            <h4>Follow Us</h4>

            <a href="#">
                <i class="fa-brands fa-instagram"></i>
                Instagram
            </a>

            <a href="#">
                <i class="fa-brands fa-facebook"></i>
                Facebook
            </a>

            <a href="#">
                <i class="fa-brands fa-x-twitter"></i>
                X / Twitter
            </a>

            <a href="#">
                <i class="fa-brands fa-linkedin"></i>
                LinkedIn
            </a>

        </div>

    </div>


    <div class="footer-bottom">

        <span>
            © 2026 NexusShirts. All rights reserved.
        </span>

        <span>
            Premium Shirts • Better Style • Better Value
        </span>

    </div>

</footer>


<!-- TOAST -->

<div class="toast" id="toast">
    Added to cart
</div>


<script>

    /* =========================
       PRODUCT DATA
    ========================== */

    const products = [

        {
            name: "Classic White Oxford Shirt",
            category: "Formal",
            price: 39,
            oldPrice: 49,
            rating: 5,
            reviews: 128,
            badge: "BESTSELLER",
            image:
            "https://images.unsplash.com/photo-1596755094514-f87e34085b2c?auto=format&fit=crop&w=900&q=85"
        },

        {
            name: "Premium Black Casual Shirt",
            category: "Casual",
            price: 45,
            oldPrice: 59,
            rating: 5,
            reviews: 96,
            badge: "NEW",
            image:
            "https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?auto=format&fit=crop&w=900&q=85"
        },

        {
            name: "Sky Blue Formal Shirt",
            category: "Formal",
            price: 42,
            oldPrice: null,
            rating: 4,
            reviews: 84,
            badge: "",
            image:
            "https://images.unsplash.com/photo-1598032895397-b9472444bf93?auto=format&fit=crop&w=900&q=85"
        },

        {
            name: "Linen Summer Shirt",
            category: "Linen",
            price: 49,
            oldPrice: 65,
            rating: 5,
            reviews: 112,
            badge: "-25%",
            image:
            "https://images.unsplash.com/photo-1621072156002-e2fccdc0b176?auto=format&fit=crop&w=900&q=85"
        },

        {
            name: "Olive Green Casual Shirt",
            category: "Casual",
            price: 44,
            oldPrice: null,
            rating: 4,
            reviews: 61,
            badge: "",
            image:
            "https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=900&q=85"
        },

        {
            name: "Premium Denim Shirt",
            category: "Denim",
            price: 52,
            oldPrice: 69,
            rating: 5,
            reviews: 143,
            badge: "POPULAR",
            image:
            "https://images.unsplash.com/photo-1603252109303-2751441dd157?auto=format&fit=crop&w=900&q=85"
        },

        {
            name: "Maroon Slim Fit Shirt",
            category: "New",
            price: 41,
            oldPrice: null,
            rating: 4,
            reviews: 55,
            badge: "NEW",
            image:
            "https://images.unsplash.com/photo-1588359348347-9bc6cbbb689e?auto=format&fit=crop&w=900&q=85"
        },

        {
            name: "White & Blue Check Shirt",
            category: "New",
            price: 47,
            oldPrice: null,
            rating: 5,
            reviews: 103,
            badge: "NEW",
            image:
            "https://images.unsplash.com/photo-1563630423918-b58f07336ac9?auto=format&fit=crop&w=900&q=85"
        }

    ];


    /* =========================
       CART
    ========================== */

    let cartCount = 0;


    /* =========================
       DISPLAY PRODUCTS
    ========================== */

    function displayProducts(items) {

        const grid =
            document.getElementById("productGrid");

        grid.innerHTML = "";


        if (items.length === 0) {

            grid.innerHTML = `
                <div style="
                    grid-column: 1 / -1;
                    text-align:center;
                    padding:60px 20px;
                    color:#6b7280;
                ">

                    <i class="fa-solid fa-shirt"
                       style="
                           font-size:45px;
                           margin-bottom:15px;
                           color:#e11d48;
                       ">
                    </i>

                    <h3 style="margin-bottom:8px;">
                        No shirts found
                    </h3>

                    <p>
                        Try another search term.
                    </p>

                </div>
            `;

            return;
        }


        items.forEach(product => {

            let stars = "";

            for (let i = 0; i < 5; i++) {

                if (i < product.rating) {
                    stars += `
                        <i class="fa-solid fa-star"></i>
                    `;
                } else {
                    stars += `
                        <i class="fa-regular fa-star"></i>
                    `;
                }

            }


            const card = document.createElement("div");

            card.className = "product-card";


            card.innerHTML = `

                <div class="product-image">

                    ${
                        product.badge
                        ?
                        `<div class="product-badge">
                            ${product.badge}
                         </div>`
                        :
                        ""
                    }

                    <button class="favorite-btn"
                            onclick="toggleFavorite(this)">

                        <i class="fa-regular fa-heart"></i>

                    </button>


                    <img
                        src="${product.image}"
                        alt="${product.name}"
                        loading="lazy"
                    >

                </div>


                <div class="product-info">

                    <div class="rating">

                        ${stars}

                        <span>
                            (${product.reviews})
                        </span>

                    </div>


                    <div class="product-title">
                        ${product.name}
                    </div>


                    <div class="product-subtitle">
                        Premium quality shirt
                    </div>


                    <div class="product-bottom">

                        <div class="price">

                            <span class="current-price">
                                $${product.price}
                            </span>

                            ${
                                product.oldPrice
                                ?
                                `<span class="old-price">
                                    $${product.oldPrice}
                                 </span>`
                                :
                                ""
                            }

                        </div>


                        <button class="add-cart"
                                onclick="addToCart('${product.name}')">

                            <i class="fa-solid fa-cart-plus"></i>

                        </button>

                    </div>

                </div>

            `;


            grid.appendChild(card);

        });

    }


    /* =========================
       FILTER PRODUCTS
    ========================== */

    function filterProducts(category, element) {

        document
            .querySelectorAll(".category-card")
            .forEach(card => {
                card.classList.remove("active");
            });


        if (element) {
            element.classList.add("active");
        }


        document.getElementById("searchInput").value = "";


        if (category === "All") {

            displayProducts(products);

        } else {

            const filtered =
                products.filter(
                    product =>
                    product.category === category
                );

            displayProducts(filtered);

        }

    }


    /* =========================
       SEARCH
    ========================== */

    function searchProducts() {

        const keyword =
            document
            .getElementById("searchInput")
            .value
            .toLowerCase()
            .trim();


        const filtered =
            products.filter(product =>
                product.name
                .toLowerCase()
                .includes(keyword)
            );


        displayProducts(filtered);

    }


    /* =========================
       CART
    ========================== */

    function addToCart(productName) {

        cartCount++;

        document.getElementById("cartCount")
            .textContent = cartCount;


        showToast(
            `${productName} added to cart`
        );

    }


    /* =========================
       FAVORITE
    ========================== */

    function toggleFavorite(button) {

        const icon =
            button.querySelector("i");


        if (
            icon.classList.contains(
                "fa-regular"
            )
        ) {

            icon.classList.remove(
                "fa-regular"
            );

            icon.classList.add(
                "fa-solid"
            );

            icon.style.color = "#e11d48";

            showToast(
                "Added to favorites"
            );

        } else {

            icon.classList.remove(
                "fa-solid"
            );

            icon.classList.add(
                "fa-regular"
            );

            icon.style.color = "";

            showToast(
                "Removed from favorites"
            );

        }

    }


    /* =========================
       TOAST
    ========================== */

    let toastTimer;


    function showToast(message) {

        const toast =
            document.getElementById("toast");


        toast.textContent = message;


        toast.classList.add("show");


        clearTimeout(toastTimer);


        toastTimer =
            setTimeout(() => {

                toast.classList.remove("show");

            }, 2500);

    }


    /* =========================
       SCROLL
    ========================== */

    function scrollToProducts() {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    function scrollToCategories() {

        document
            .getElementById("categories")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    /* =========================
       SEARCH FOCUS
    ========================== */

    function focusSearch() {

        scrollToProducts();


        setTimeout(() => {

            document
                .getElementById("searchInput")
                .focus();

        }, 700);

    }


    /* =========================
       NEWSLETTER
    ========================== */

    function subscribeNewsletter(event) {

        event.preventDefault();


        const email =
            document
            .getElementById("emailInput")
            .value;


        showToast(
            `Thanks! ${email} is subscribed.`
        );


        document
            .getElementById("emailInput")
            .value = "";

    }


    /* =========================
       INITIAL LOAD
    ========================== */

    displayProducts(products);

</script>

</body>
</html>
