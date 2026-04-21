<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop — Modern E‑Commerce Experience</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Plus+Jakarta+Sans:wght@500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-light: #fefefe;
            --bg-surface: #f8fafd;
            --primary-deep: #0b2b40;
            --primary-soft: #1a4b6e;
            --accent-electric: #2dd4bf;
            --accent-glow: #14b8a6;
            --gold-star: #fbbf24;
            --text-dark: #0f172a;
            --text-muted: #5b6e8c;
            --border-light: #eef2f8;
            --shadow-sm: 0 10px 25px -5px rgba(0, 0, 0, 0.02), 0 8px 10px -6px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 20px 30px -12px rgba(0, 0, 0, 0.05);
            --radius-2xl: 28px;
            --radius-xl: 20px;
            --radius-lg: 16px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
            background: var(--bg-light);
            color: var(--text-dark);
            scroll-behavior: smooth;
            line-height: 1.5;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* enhanced header + glassmorphism */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-light);
            transition: var(--transition);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 800;
            font-size: 1.7rem;
            background: linear-gradient(135deg, #0b2b40 0%, #1f6e6a 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.3px;
        }

        .brand span {
            background: linear-gradient(135deg, #2dd4bf, #0e7c76);
            background-clip: text;
            -webkit-background-clip: text;
        }

        /* search bar modern */
        .search-wrapper {
            flex: 1;
            max-width: 380px;
        }

        .search-modern {
            display: flex;
            align-items: center;
            background: white;
            border: 1px solid var(--border-light);
            border-radius: 60px;
            padding: 6px 12px 6px 18px;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
        }
        .search-modern:focus-within {
            border-color: var(--accent-electric);
            box-shadow: 0 0 0 3px rgba(45, 212, 191, 0.2);
        }
        .search-modern input {
            flex: 1;
            border: none;
            background: transparent;
            padding: 10px 0;
            font-size: 0.9rem;
            outline: none;
        }
        .search-modern button {
            background: transparent;
            border: none;
            color: var(--text-muted);
            cursor: pointer;
            padding: 8px 10px;
            font-size: 1rem;
            transition: color 0.2s;
        }
        .search-modern button:hover {
            color: var(--accent-electric);
        }

        /* nav + actions */
        .nav-links {
            display: flex;
            align-items: center;
            gap: 12px;
            list-style: none;
        }
        .nav-links li a {
            text-decoration: none;
            font-weight: 500;
            padding: 8px 14px;
            border-radius: 40px;
            color: var(--text-dark);
            transition: var(--transition);
            font-size: 0.9rem;
        }
        .nav-links li a:hover {
            background: var(--bg-surface);
            color: var(--accent-electric);
        }
        .action-icons {
            display: flex;
            align-items: center;
            gap: 18px;
        }
        .icon-circle {
            background: var(--bg-surface);
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: var(--transition);
            color: var(--text-dark);
            font-size: 1.2rem;
            position: relative;
        }
        .icon-circle:hover {
            background: #eef3fc;
            transform: translateY(-2px);
        }
        .cart-count-badge {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent-electric);
            color: #0a2a2f;
            font-size: 0.7rem;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
            color: var(--primary-deep);
        }

        /* hero + modern */
        .hero-modern {
            background: linear-gradient(112deg, #eefaff 0%, #e3f3f0 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 32px;
            padding: 64px 0;
        }
        .hero-content {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
        }
        .hero-text h1 {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 3.2rem;
            font-weight: 800;
            line-height: 1.2;
            background: linear-gradient(to right, #0b2b40, #166d67);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .hero-badge {
            background: rgba(45,212,191,0.2);
            backdrop-filter: blur(2px);
            display: inline-block;
            padding: 6px 16px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.8rem;
            color: #146b64;
            margin-bottom: 20px;
        }
        .btn-group {
            display: flex;
            gap: 14px;
            margin-top: 28px;
            flex-wrap: wrap;
        }
        .btn-primary-glow {
            background: #0f2c35;
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        }
        .btn-primary-glow:hover {
            background: #1d4f5c;
            transform: translateY(-2px);
        }
        .btn-outline {
            background: transparent;
            border: 1.5px solid #1e5f68;
            color: #1e5f68;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
        }
        .btn-outline:hover {
            background: #ddf4f1;
        }
        .hero-image {
            background: url('https://images.unsplash.com/photo-1556741533-6e6a3bd8e0d6?auto=format&fit=crop&w=600&q=80') center/contain no-repeat;
            min-height: 240px;
            width: 280px;
            background-size: contain;
        }

        /* section titles */
        .section-header {
            text-align: center;
            margin-bottom: 36px;
        }
        .section-header h2 {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 2rem;
            font-weight: 700;
        }
        .section-header p {
            color: var(--text-muted);
        }

        /* category grid cards - animated */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin-bottom: 40px;
        }
        .category-card {
            background: white;
            border-radius: 32px;
            padding: 20px 12px;
            text-align: center;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
            transition: all 0.2s ease;
            cursor: pointer;
        }
        .category-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-md);
            border-color: #cbf3ef;
        }
        .category-icon {
            font-size: 2.4rem;
            color: var(--accent-electric);
            margin-bottom: 10px;
        }

        /* product grid - modern */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            transition: all 0.25s;
            box-shadow: 0 4px 14px rgba(0, 0, 0, 0.02);
            border: 1px solid var(--border-light);
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 25px 35px -12px rgba(0, 0, 0, 0.1);
            border-color: #e2f0ed;
        }
        .product-img {
            height: 210px;
            background-size: cover;
            background-position: center;
            position: relative;
        }
        .badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: #ff7e5e;
            color: white;
            border-radius: 40px;
            padding: 4px 12px;
            font-size: 0.7rem;
            font-weight: 700;
        }
        .product-info {
            padding: 18px 16px 20px;
        }
        .price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary-deep);
        }
        .old-price {
            text-decoration: line-through;
            font-size: 0.8rem;
            color: var(--text-muted);
            margin-left: 8px;
        }
        .rating {
            color: var(--gold-star);
            letter-spacing: 1px;
        }
        .add-cart-btn {
            width: 100%;
            background: #eef3fc;
            border: none;
            border-radius: 40px;
            padding: 12px;
            font-weight: 600;
            margin-top: 12px;
            cursor: pointer;
            transition: all 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            color: #0e3b40;
        }
        .add-cart-btn:hover {
            background: #0f2c35;
            color: white;
        }

        /* flash sale card modern */
        .flash-card {
            background: linear-gradient(125deg, #fef9f0 0%, #fff4e6 100%);
            border-radius: 40px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 20px;
            padding: 20px;
            margin-top: 20px;
            border: 1px solid #ffe5c8;
        }
        .timer-modern {
            display: flex;
            gap: 15px;
            margin: 15px 0;
        }
        .time-unit {
            background: #1f2e3a;
            color: white;
            padding: 10px 18px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
        }

        /* testimonial smooth */
        .testimonial-slider {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 10px 2px 20px;
            scrollbar-width: thin;
        }
        .testimonial-card {
            background: white;
            border-radius: 28px;
            min-width: 300px;
            padding: 24px;
            box-shadow: var(--shadow-sm);
            border: 1px solid #eef2f8;
        }

        /* newsletter */
        .newsletter-modern {
            background: #0f2c35;
            border-radius: 48px;
            padding: 52px 32px;
            text-align: center;
            color: white;
        }
        .newsletter-group {
            display: flex;
            gap: 12px;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .newsletter-group input {
            padding: 14px 22px;
            border-radius: 60px;
            border: none;
            width: 280px;
            font-size: 0.9rem;
        }

        /* footer */
        footer {
            margin-top: 60px;
            background: #fafcff;
            border-top: 1px solid #eef2f8;
            padding: 48px 0 32px;
        }

        /* responsive */
        @media (max-width: 1024px) {
            .nav-links {
                display: none;
            }
            .mobile-menu-btn {
                display: block;
            }
            .search-wrapper {
                order: 3;
                width: 100%;
                max-width: 100%;
                margin-top: 12px;
            }
            .hero-text h1 {
                font-size: 2.3rem;
            }
        }
        @media (max-width: 720px) {
            .container {
                padding: 0 20px;
            }
            .products-grid {
                grid-template-columns: 1fr;
            }
        }
        .mobile-nav-drawer {
            display: none;
            background: white;
            padding: 24px;
            border-top: 1px solid var(--border-light);
        }
        .mobile-nav-drawer.show {
            display: block;
        }
        button:active {
            transform: scale(0.97);
        }
        .toast-message {
            position: fixed;
            bottom: 24px;
            left: 50%;
            transform: translateX(-50%);
            background: #1a2e38;
            color: white;
            padding: 12px 24px;
            border-radius: 60px;
            font-weight: 500;
            z-index: 200;
            backdrop-filter: blur(8px);
            font-size: 0.9rem;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 16px;">
            <button class="mobile-menu-btn" id="mobileMenuToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
            <div class="brand">Nexus<span>Shop</span></div>
        </div>
        
        <ul class="nav-links">
            <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="#" id="catTriggerBtn"><i class="fas fa-compass"></i> Explore</a></li>
            <li><a href="#trending"><i class="fas fa-chart-line"></i> Trending</a></li>
            <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
        </ul>

        <div class="search-wrapper">
            <div class="search-modern">
                <input type="text" id="searchInput" placeholder="Search for products, brands..." aria-label="Search">
                <button id="searchButton"><i class="fas fa-search"></i></button>
            </div>
        </div>

        <div class="action-icons">
            <a href="#" class="icon-circle"><i class="far fa-heart"></i></a>
            <a href="#" class="icon-circle" id="cartIconBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count-badge" id="cartCountDisplay">0</span>
            </a>
        </div>
    </div>
    <div class="mobile-nav-drawer" id="mobileDrawer">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 20px; font-weight: 500;">
            <li><a href="#">🏠 Home</a></li>
            <li><a href="#" id="mobileCatLink">📂 Categories</a></li>
            <li><a href="#trending">🔥 Trending</a></li>
            <li><a href="#deals">⚡ Flash Sale</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero section -->
    <div class="hero-modern">
        <div class="container hero-content">
            <div class="hero-text">
                <div class="hero-badge"><i class="fas fa-gem"></i> Summer drop 2025</div>
                <h1>Style meets<br>innovation</h1>
                <p style="font-size: 1.1rem; color: #2c4b55; margin-top: 14px;">Discover curated tech, fashion & lifestyle — up to 30% off</p>
                <div class="btn-group">
                    <button class="btn-primary-glow" id="shopNowBtn"><i class="fas fa-store"></i> Shop now</button>
                    <button class="btn-outline" id="dealsBtn"><i class="fas fa-tag"></i> Flash deals</button>
                </div>
            </div>
            <div class="hero-image"></div>
        </div>
    </div>

    <!-- Categories -->
    <div class="container" style="margin-top: 20px;">
        <div class="section-header">
            <h2><i class="fas fa-th-large"></i> Shop by vibe</h2>
            <p>Find exactly what you love</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>
    </div>

    <!-- Products section (Trending) -->
    <div class="container" id="trending">
        <div class="section-header">
            <h2><i class="fas fa-fire"></i> Trending now</h2>
            <p>Most loved by our community</p>
        </div>
        <div class="products-grid" id="productsGridContainer"></div>
    </div>

    <!-- Flash sale deals -->
    <div class="container" id="deals">
        <div class="section-header">
            <h2><i class="fas fa-stopwatch"></i> Flash sale</h2>
            <p>Limited time — grab before it's gone</p>
        </div>
        <div class="flash-card">
            <div style="flex: 1; min-width: 200px;">
                <h3 style="font-size: 1.8rem;">✨ MacBook Air M2</h3>
                <p>Lightning performance, all‑day battery life</p>
                <div class="timer-modern">
                    <div class="time-unit"><span id="dealDays">0</span><br>Days</div>
                    <div class="time-unit"><span id="dealHours">00</span><br>Hrs</div>
                    <div class="time-unit"><span id="dealMinutes">00</span><br>Min</div>
                    <div class="time-unit"><span id="dealSeconds">00</span><br>Sec</div>
                </div>
                <div><span class="price" style="font-size: 2rem;">$999</span> <span class="old-price">$1,299</span> <span style="background: #ff7e5e; border-radius: 60px; padding: 4px 12px; margin-left: 8px;">-23%</span></div>
                <button class="btn-primary-glow" id="flashDealBtn" style="margin-top: 18px;"><i class="fas fa-bolt"></i> Add to cart</button>
            </div>
            <div style="flex: 1; background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=500&q=80') center/cover no-repeat; min-height: 220px; border-radius: 32px;"></div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container" style="margin-top: 56px;">
        <div class="section-header">
            <h2>❤️ Customer love</h2>
        </div>
        <div class="testimonial-slider" id="testimonialList"></div>
    </div>

    <!-- Newsletter -->
    <div class="container" style="margin: 48px auto;">
        <div class="newsletter-modern">
            <h3 style="font-size: 1.8rem;">Don't miss out</h3>
            <p>Subscribe for secret sales & early access</p>
            <div class="newsletter-group">
                <input type="email" id="newsEmail" placeholder="Your email address">
                <button class="btn-primary-glow" id="subscribeNewsBtn" style="background: #2dd4bf; color: #0a2a2f;">Subscribe →</button>
            </div>
            <div id="newsMsg" style="margin-top: 14px; font-size: 0.85rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container">
        <div style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 30px;">
            <div><h3 style="font-weight:800;">NexusShop</h3><p style="color: var(--text-muted); max-width: 260px;">Elevating everyday shopping with curated selections and seamless experience.</p></div>
            <div><strong>Support</strong><br>Help center<br>Returns<br>Contact</div>
            <div><strong>Legal</strong><br>Privacy<br>Terms</div>
        </div>
        <div style="text-align: center; margin-top: 48px; color: var(--text-muted);">© <span id="year"></span> NexusShop — modern e‑commerce</div>
    </div>
</footer>

<script>
    // ==================== DATA ====================
    const CATEGORIES = [
        { id: "tech", name: "Tech & Gadgets", icon: "fa-microchip" },
        { id: "fashion", name: "Streetwear", icon: "fa-shirt" },
        { id: "access", name: "Accessories", icon: "fa-gem" },
        { id: "audio", name: "Audio", icon: "fa-headphones" },
        { id: "lifestyle", name: "Lifestyle", icon: "fa-couch" }
    ];

    const PRODUCTS = [
        { id: 101, title: "iPhone 15 Pro", price: 1099, oldPrice: 1199, rating: 5, reviews: 203, img: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=500&q=80", category: "tech", badge: "Hot" },
        { id: 102, title: "Noise Cancelling Headphones", price: 299, oldPrice: 399, rating: 4.5, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=500&q=80", category: "audio", badge: "-25%" },
        { id: 103, title: "Retro Sneakers", price: 89, oldPrice: 129, rating: 4, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80", category: "fashion", badge: "Sale" },
        { id: 104, title: "Smart Watch Ultra", price: 349, rating: 4.8, img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80", category: "tech" },
        { id: 105, title: "Minimalist Backpack", price: 59, oldPrice: 89, rating: 4.2, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=500&q=80", category: "access" },
        { id: 106, title: "Wireless Earbuds", price: 129, rating: 4.7, img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=500&q=80", category: "audio" }
    ];

    const TESTIMONIALS = [
        { name: "Sophia Chen", text: "The UI is incredibly smooth and products arrived faster than expected!", rating: 5 },
        { name: "Marcus V.", text: "Best shopping experience in years. Love the modern design.", rating: 5 },
        { name: "Elena K.", text: "Flash sale section is addictive! Got amazing deals.", rating: 4 }
    ];

    let cartItemsCount = 0;
    const cartCountSpan = document.getElementById('cartCountDisplay');

    function updateCartUI() {
        cartCountSpan.innerText = cartItemsCount;
        showToast(`Cart: ${cartItemsCount} item${cartItemsCount !== 1 ? 's' : ''}`);
    }

    function addToCart(productId, productTitle) {
        cartItemsCount++;
        updateCartUI();
        showToast(`✓ ${productTitle} added`);
    }

    function showToast(msg) {
        let existing = document.querySelector('.toast-message');
        if(existing) existing.remove();
        let toast = document.createElement('div');
        toast.className = 'toast-message';
        toast.innerHTML = `<i class="fas fa-check-circle"></i> ${msg}`;
        document.body.appendChild(toast);
        setTimeout(() => toast.remove(), 2000);
    }

    // Render categories
    function renderCategories() {
        const container = document.getElementById('categoriesContainer');
        container.innerHTML = CATEGORIES.map(cat => `
            <div class="category-card" data-cat="${cat.name.toLowerCase()}">
                <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <p style="font-size:12px; color:#5b6e8c;">shop now →</p>
            </div>
        `).join('');
        document.querySelectorAll('.category-card').forEach(card => {
            card.addEventListener('click', () => {
                const catName = card.getAttribute('data-cat');
                if(catName) filterProductsByQuery(catName);
                document.getElementById('trending').scrollIntoView({ behavior: 'smooth' });
            });
        });
    }

    function filterProductsByQuery(query) {
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query));
        renderProducts(filtered);
        if(filtered.length === 0) showToast("No products found, showing all");
    }

    function renderProducts(productsArray) {
        const container = document.getElementById('productsGridContainer');
        if(!productsArray.length) productsArray = PRODUCTS;
        container.innerHTML = productsArray.map(p => {
            const starRating = '★'.repeat(Math.floor(p.rating)) + '☆'.repeat(5 - Math.floor(p.rating));
            return `
                <div class="product-card">
                    <div class="product-img" style="background-image: url('${p.img}');">
                        ${p.badge ? `<span class="badge">${p.badge}</span>` : ''}
                    </div>
                    <div class="product-info">
                        <h4 style="font-weight:600;">${p.title}</h4>
                        <div class="rating">${starRating} <span style="color:#8f9bb3;">(${p.reviews || 24})</span></div>
                        <div><span class="price">$${p.price}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                        <button class="add-cart-btn" data-id="${p.id}" data-name="${p.title.replace(/'/g, "\\'")}"><i class="fas fa-shopping-cart"></i> Add to bag</button>
                    </div>
                </div>
            `;
        }).join('');
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const id = btn.getAttribute('data-id');
                const name = btn.getAttribute('data-name');
                addToCart(id, name);
            });
        });
    }

    // timer for flash deal
    function initCountdown() {
        const target = new Date();
        target.setHours(target.getHours() + 27);
        target.setMinutes(target.getMinutes() + 30);
        function update() {
            const diff = target - new Date();
            if(diff <= 0) { 
                document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00'; 
                document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00'; 
                return; 
            }
            const days = Math.floor(diff / (1000*60*60*24));
            const hrs = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hrs).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        update();
        setInterval(update, 1000);
    }

    function renderTestimonials() {
        const container = document.getElementById('testimonialList');
        container.innerHTML = TESTIMONIALS.map(t => `
            <div class="testimonial-card">
                <div class="rating">${'★'.repeat(t.rating)}${'☆'.repeat(5-t.rating)}</div>
                <p style="margin:10px 0">“${t.text}”</p>
                <strong>— ${t.name}</strong>
            </div>
        `).join('');
    }

    // Event Listeners & Search
    document.getElementById('searchButton').addEventListener('click', () => {
        const query = document.getElementById('searchInput').value.trim().toLowerCase();
        if(query) filterProductsByQuery(query);
        else renderProducts(PRODUCTS);
    });
    document.getElementById('searchInput').addEventListener('keypress', (e) => {
        if(e.key === 'Enter') document.getElementById('searchButton').click();
    });

    document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('dealsBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('flashDealBtn').addEventListener('click', () => { addToCart('deal_macbook', 'MacBook Air M2'); });
    document.getElementById('subscribeNewsBtn').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if(!email || !email.includes('@')) { msgDiv.innerHTML = '<span style="color:#ffb9b9;">Valid email required</span>'; return; }
        msgDiv.innerHTML = '<span>🎉 You\'re in! Check your inbox.</span>';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => msgDiv.innerHTML = '', 2500);
    });

    // Mobile drawer
    const mobileToggle = document.getElementById('mobileMenuToggle');
    const drawer = document.getElementById('mobileDrawer');
    mobileToggle.addEventListener('click', () => {
        drawer.classList.toggle('show');
    });
    document.getElementById('mobileCatLink')?.addEventListener('click', (e) => { e.preventDefault(); alert("✨ Browse categories below"); drawer.classList.remove('show'); });
    document.getElementById('catTriggerBtn')?.addEventListener('click', (e) => { e.preventDefault(); alert("Explore categories right below this section ✨"); });
    
    // Cart Icon feedback
    document.getElementById('cartIconBtn')?.addEventListener('click', (e) => { e.preventDefault(); showToast(`Cart has ${cartItemsCount} items`); });

    // Initial load
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    initCountdown();
    document.getElementById('year').innerText = new Date().getFullYear();
</script>
</body>
</html>
