<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#111827">
<title>NexusShop — Modern Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
  --bg:#f7f7f5;
  --card:#fff;
  --text:#171923;
  --muted:#70727d;
  --line:#e9e9e5;
  --soft:#f1f1ed;
  --accent:#e4775c;
  --accent-dark:#c95d43;
  --accent-soft:#fce8e1;
  --green:#20a47e;
  --danger:#e05252;
  --shadow:0 8px 30px rgba(20,25,40,.06);
  --shadow-lg:0 20px 60px rgba(20,25,40,.13);
  --radius:20px;
  --container:1240px;
}

*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
  font-family:Inter,system-ui,sans-serif;
  background:var(--bg);
  color:var(--text);
  line-height:1.5;
  -webkit-font-smoothing:antialiased;
}
body.lock{overflow:hidden}
button,input{font:inherit}
button{border:0;cursor:pointer}
a{text-decoration:none;color:inherit}
img{display:block;max-width:100%}
.container{max-width:var(--container);margin:auto;padding:0 24px}

.topbar{
  background:#171923;
  color:#fff;
  text-align:center;
  font-size:12px;
  padding:8px 16px;
}
.topbar strong{color:#ffad96}

header{
  position:sticky;
  top:0;
  z-index:100;
  background:rgba(255,255,255,.92);
  backdrop-filter:blur(18px);
  border-bottom:1px solid var(--line);
}

.header{
  height:76px;
  display:flex;
  align-items:center;
  gap:28px;
}

.logo{
  display:flex;
  align-items:center;
  gap:10px;
  font-size:21px;
  font-weight:800;
  white-space:nowrap;
}
.logo-mark{
  width:40px;
  height:40px;
  border-radius:13px;
  background:var(--accent);
  color:#fff;
  display:grid;
  place-items:center;
}
.logo span span{color:var(--accent)}

.desktop-nav{
  display:flex;
  gap:4px;
  margin-right:auto;
}
.desktop-nav a{
  padding:9px 13px;
  border-radius:10px;
  color:var(--muted);
  font-size:13px;
  font-weight:600;
}
.desktop-nav a:hover,
.desktop-nav a.active{
  background:var(--soft);
  color:var(--text);
}

.search{
  width:250px;
  height:42px;
  display:flex;
  align-items:center;
  gap:10px;
  padding:0 14px;
  border:1px solid var(--line);
  background:var(--soft);
  border-radius:12px;
  transition:.2s;
}
.search:focus-within{
  background:#fff;
  border-color:var(--accent);
  box-shadow:0 0 0 4px rgba(228,119,92,.1);
}
.search i{color:var(--muted);font-size:14px}
.search input{
  width:100%;
  border:0;
  outline:0;
  background:transparent;
  font-size:13px;
}
.search button{color:var(--muted);background:none}

.header-actions{
  display:flex;
  align-items:center;
  gap:5px;
}
.icon{
  width:42px;
  height:42px;
  border-radius:12px;
  display:grid;
  place-items:center;
  color:var(--muted);
  background:transparent;
  position:relative;
}
.icon:hover{background:var(--soft);color:var(--text)}
.count{
  position:absolute;
  top:1px;
  right:0;
  min-width:18px;
  height:18px;
  padding:0 5px;
  border-radius:20px;
  background:var(--accent);
  color:#fff;
  border:2px solid #fff;
  font-size:9px;
  font-weight:800;
  display:grid;
  place-items:center;
}

.menu-btn{display:none}

/* HERO */
.hero{
  margin:22px auto 0;
  max-width:1192px;
  min-height:500px;
  border-radius:28px;
  overflow:hidden;
  position:relative;
  background:#181925;
}
.hero-bg{
  position:absolute;
  inset:0;
  background:
    linear-gradient(90deg,rgba(18,19,32,.96) 0%,rgba(18,19,32,.75) 48%,rgba(18,19,32,.2)),
    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85") center/cover;
}
.hero-content{
  position:relative;
  z-index:1;
  padding:75px 70px;
  max-width:690px;
}
.pill{
  display:inline-flex;
  align-items:center;
  gap:7px;
  background:rgba(228,119,92,.16);
  color:#ffad96;
  border:1px solid rgba(255,255,255,.08);
  padding:7px 13px;
  border-radius:30px;
  font-size:12px;
  font-weight:700;
  margin-bottom:20px;
}
.hero h1{
  color:#fff;
  font-family:"Playfair Display",serif;
  font-size:58px;
  line-height:1.05;
  letter-spacing:-1.5px;
  margin-bottom:20px;
}
.hero p{
  color:rgba(255,255,255,.72);
  font-size:16px;
  max-width:510px;
  margin-bottom:28px;
}
.hero-actions{display:flex;gap:10px;flex-wrap:wrap}

.btn{
  min-height:46px;
  border-radius:12px;
  padding:0 20px;
  display:inline-flex;
  align-items:center;
  justify-content:center;
  gap:8px;
  font-weight:700;
  font-size:13px;
  transition:.2s;
}
.btn-primary{background:var(--accent);color:#fff}
.btn-primary:hover{background:var(--accent-dark);transform:translateY(-2px)}
.btn-light{background:#fff;color:var(--text)}
.btn-light:hover{transform:translateY(-2px);background:#f5f5f5}
.btn-dark{background:var(--text);color:#fff}
.btn-dark:hover{background:#292b38}
.btn-outline{background:#fff;border:1px solid var(--line);color:var(--text)}
.btn-outline:hover{border-color:var(--accent);color:var(--accent)}

.hero-trust{
  margin-top:42px;
  display:flex;
  gap:25px;
  color:rgba(255,255,255,.72);
  font-size:11px;
}
.hero-trust span{display:flex;align-items:center;gap:6px}
.hero-trust i{color:#8ee0c2}

/* SECTIONS */
.section{padding:60px 0}
.section-head{
  display:flex;
  align-items:end;
  justify-content:space-between;
  gap:20px;
  margin-bottom:25px;
}
.eyebrow{
  color:var(--accent);
  text-transform:uppercase;
  letter-spacing:1px;
  font-size:10px;
  font-weight:800;
  margin-bottom:5px;
}
.section-head h2{
  font-size:28px;
  letter-spacing:-.7px;
}
.section-head p{
  color:var(--muted);
  font-size:13px;
  margin-top:3px;
}
.link{
  color:var(--accent);
  font-weight:700;
  font-size:13px;
  white-space:nowrap;
}

/* CATEGORIES */
.categories{
  display:grid;
  grid-template-columns:repeat(6,1fr);
  gap:12px;
}
.category{
  border:1px solid var(--line);
  background:#fff;
  border-radius:16px;
  padding:18px 10px;
  text-align:center;
  transition:.2s;
  cursor:pointer;
}
.category:hover,
.category.active{
  border-color:var(--accent);
  background:var(--accent-soft);
  transform:translateY(-3px);
}
.category-icon{
  width:46px;
  height:46px;
  margin:auto auto 10px;
  border-radius:14px;
  background:var(--soft);
  display:grid;
  place-items:center;
  color:var(--accent);
  font-size:18px;
}
.category h4{font-size:12px}
.category small{color:var(--muted);font-size:10px}

/* FILTERS */
.filterbar{
  display:flex;
  align-items:center;
  gap:8px;
  margin-bottom:20px;
  flex-wrap:wrap;
}
.filter{
  background:#fff;
  border:1px solid var(--line);
  border-radius:30px;
  padding:8px 14px;
  color:var(--muted);
  font-size:11px;
  font-weight:700;
}
.filter.active{
  background:var(--text);
  color:#fff;
  border-color:var(--text);
}
.result-count{margin-left:auto;color:var(--muted);font-size:12px}

/* PRODUCTS */
.products{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:18px;
}
.product{
  background:#fff;
  border:1px solid var(--line);
  border-radius:18px;
  overflow:hidden;
  transition:.25s;
}
.product:hover{
  transform:translateY(-5px);
  box-shadow:var(--shadow-lg);
  border-color:#ddd;
}
.product-img{
  height:255px;
  background:#f1f1ef;
  position:relative;
  overflow:hidden;
}
.product-img img{
  width:100%;
  height:100%;
  object-fit:cover;
  transition:.4s;
}
.product:hover .product-img img{transform:scale(1.05)}

.badge{
  position:absolute;
  top:12px;
  left:12px;
  background:#fff;
  padding:5px 9px;
  border-radius:7px;
  font-size:9px;
  font-weight:800;
}
.badge.new{color:var(--accent)}
.badge.sale{background:#f5c96b;color:#28231b}

.wish{
  position:absolute;
  right:12px;
  top:12px;
  width:34px;
  height:34px;
  background:rgba(255,255,255,.94);
  border-radius:50%;
  display:grid;
  place-items:center;
  color:var(--muted);
}
.wish.active{color:var(--accent)}

.quick{
  position:absolute;
  left:12px;
  right:12px;
  bottom:12px;
  height:38px;
  background:#fff;
  border-radius:10px;
  display:flex;
  align-items:center;
  justify-content:center;
  gap:7px;
  font-size:11px;
  font-weight:800;
  transform:translateY(60px);
  transition:.25s;
  box-shadow:var(--shadow);
}
.product:hover .quick{transform:translateY(0)}

.product-body{padding:15px}
.category-name{
  color:#a0a0a8;
  text-transform:uppercase;
  font-size:9px;
  font-weight:800;
  letter-spacing:.7px;
}
.product h3{
  font-size:14px;
  margin:5px 0 9px;
  line-height:1.3;
}
.rating{
  display:flex;
  align-items:center;
  gap:5px;
  color:#f2a735;
  font-size:11px;
}
.rating span{color:var(--muted)}
.price{
  display:flex;
  align-items:center;
  gap:8px;
  margin-top:10px;
}
.price strong{font-size:17px}
.old{text-decoration:line-through;color:#aaa;font-size:11px}

.add{
  width:100%;
  height:39px;
  margin-top:13px;
  border-radius:10px;
  background:var(--text);
  color:#fff;
  font-size:11px;
  font-weight:800;
  transition:.2s;
}
.add:hover{background:var(--accent)}
.add.added{background:var(--green)}

/* DEAL */
.deal{
  display:grid;
  grid-template-columns:1fr 1fr;
  background:#171923;
  border-radius:22px;
  overflow:hidden;
}
.deal-image{min-height:390px}
.deal-image img{width:100%;height:100%;object-fit:cover}
.deal-content{
  color:#fff;
  padding:45px;
  display:flex;
  flex-direction:column;
  justify-content:center;
}
.deal-content .pill{margin-bottom:15px}
.deal-content h2{
  font-family:"Playfair Display",serif;
  font-size:36px;
  line-height:1.1;
}
.deal-content p{color:#aaa;font-size:13px;margin:12px 0 18px}
.deal-price{font-size:30px;font-weight:800}
.deal-price del{font-size:14px;color:#777;margin-left:8px}
.timer{display:flex;gap:8px;margin:22px 0}
.time{
  background:#262834;
  min-width:62px;
  padding:9px;
  border-radius:10px;
  text-align:center;
}
.time strong{display:block;font-size:20px}
.time small{color:#858792;font-size:8px;text-transform:uppercase}
.stock{font-size:11px!important;color:#aaa!important}
.stock b{color:#ff9277}

/* BENEFITS */
.benefits{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  border:1px solid var(--line);
  border-radius:18px;
  overflow:hidden;
  background:#fff;
}
.benefit{
  padding:22px;
  display:flex;
  align-items:center;
  gap:13px;
  border-right:1px solid var(--line);
}
.benefit:last-child{border:0}
.benefit-icon{
  width:40px;height:40px;
  flex:none;
  border-radius:11px;
  background:var(--accent-soft);
  color:var(--accent);
  display:grid;
  place-items:center;
}
.benefit strong{font-size:11px;display:block}
.benefit span{font-size:10px;color:var(--muted)}

/* REVIEWS */
.reviews{
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:16px;
}
.review{
  background:#fff;
  border:1px solid var(--line);
  border-radius:18px;
  padding:22px;
}
.review-stars{color:#f2a735;font-size:12px;margin-bottom:10px}
.review p{font-size:12px;line-height:1.7;margin-bottom:17px}
.reviewer{display:flex;align-items:center;gap:10px}
.avatar{width:36px;height:36px;border-radius:50%;object-fit:cover}
.reviewer strong{font-size:11px;display:block}
.reviewer span{font-size:9px;color:var(--muted)}

/* NEWSLETTER */
.newsletter{
  background:var(--accent-soft);
  border-radius:22px;
  padding:40px;
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:25px;
}
.newsletter h2{font-size:24px}
.newsletter p{color:var(--muted);font-size:12px;margin-top:4px}
.news-form{display:flex;gap:8px;max-width:430px;width:100%}
.news-form input{
  flex:1;
  height:44px;
  border:1px solid #ead4ce;
  background:#fff;
  border-radius:10px;
  padding:0 14px;
  outline:0;
  font-size:12px;
}
.news-form input:focus{border-color:var(--accent)}

/* FOOTER */
footer{
  background:#171923;
  color:#fff;
  padding:50px 0 25px;
}
.footer-grid{
  display:grid;
  grid-template-columns:2fr 1fr 1fr 1fr;
  gap:35px;
}
.footer-brand p{
  color:#92949e;
  font-size:11px;
  max-width:280px;
  margin-top:10px;
}
footer h4{font-size:11px;margin-bottom:12px}
footer ul{list-style:none}
footer li{margin:7px 0}
footer li a{color:#92949e;font-size:10px}
footer li a:hover{color:#fff}
.socials{display:flex;gap:7px;margin-top:17px}
.socials a{
  width:32px;height:32px;border-radius:9px;
  background:#242632;display:grid;place-items:center;color:#aaa;
}
.footer-bottom{
  border-top:1px solid #292b35;
  margin-top:35px;
  padding-top:18px;
  color:#686a74;
  text-align:center;
  font-size:9px;
}

/* CART DRAWER */
.overlay{
  position:fixed;
  inset:0;
  background:rgba(10,10,15,.48);
  z-index:200;
  opacity:0;
  pointer-events:none;
  transition:.25s;
}
.overlay.open{opacity:1;pointer-events:auto}
.cart{
  position:fixed;
  z-index:201;
  top:0;
  right:0;
  width:min(420px,100%);
  height:100%;
  background:#fff;
  transform:translateX(100%);
  transition:.3s ease;
  display:flex;
  flex-direction:column;
}
.cart.open{transform:translateX(0)}
.cart-head{
  height:70px;
  padding:0 22px;
  border-bottom:1px solid var(--line);
  display:flex;
  align-items:center;
  justify-content:space-between;
}
.cart-head h3{font-size:16px}
.close{width:36px;height:36px;border-radius:10px;background:var(--soft)}
.cart-items{flex:1;overflow:auto;padding:15px 20px}
.cart-item{
  display:grid;
  grid-template-columns:65px 1fr auto;
  gap:12px;
  padding:13px 0;
  border-bottom:1px solid var(--line);
}
.cart-item img{
  width:65px;height:65px;border-radius:10px;object-fit:cover;background:var(--soft)
}
.cart-item h4{font-size:11px;margin-bottom:5px}
.cart-item .item-price{font-size:11px;font-weight:800}
.qty{
  display:flex;
  align-items:center;
  gap:7px;
  margin-top:8px;
}
.qty button{
  width:22px;height:22px;border-radius:6px;background:var(--soft);font-size:10px
}
.qty span{font-size:10px;font-weight:700}
.remove{color:#aaa;font-size:11px}
.cart-empty{text-align:center;padding:70px 20px;color:var(--muted)}
.cart-empty i{font-size:42px;color:#ddd;margin-bottom:15px}
.cart-foot{
  padding:18px 20px;
  border-top:1px solid var(--line);
}
.summary{
  display:flex;
  justify-content:space-between;
  font-size:13px;
  margin-bottom:14px;
}
.checkout{width:100%;height:46px}

/* TOAST */
.toast{
  position:fixed;
  z-index:300;
  bottom:25px;
  left:50%;
  transform:translate(-50%,30px);
  background:#171923;
  color:#fff;
  border-radius:12px;
  padding:12px 17px;
  font-size:11px;
  font-weight:600;
  opacity:0;
  pointer-events:none;
  transition:.25s;
  box-shadow:var(--shadow-lg);
}
.toast.show{
  opacity:1;
  transform:translate(-50%,0);
}

/* MOBILE NAV */
.mobile-nav{
  display:none;
}

/* EMPTY */
.empty{
  grid-column:1/-1;
  background:#fff;
  border:1px dashed #ddd;
  border-radius:18px;
  padding:55px 20px;
  text-align:center;
  color:var(--muted);
}
.empty i{font-size:30px;color:#ddd;margin-bottom:10px}
.empty h3{font-size:15px;color:var(--text);margin-bottom:5px}
.empty p{font-size:11px}

/* RESPONSIVE */
@media(max-width:1100px){
  .desktop-nav{display:none}
  .menu-btn{display:grid}
  .header{gap:10px}
  .search{margin-left:auto}
  .categories{grid-template-columns:repeat(3,1fr)}
  .products{grid-template-columns:repeat(3,1fr)}
}

@media(max-width:800px){
  .container{padding:0 15px}
  .topbar{font-size:10px}
  .header{height:64px}
  .logo{font-size:17px}
  .logo-mark{width:35px;height:35px}
  .header .search{width:auto;flex:1;max-width:220px}
  .header-actions .account{display:none}
  .icon{width:36px;height:36px}
  .hero{margin:12px 10px 0;min-height:460px;border-radius:20px}
  .hero-content{padding:45px 28px}
  .hero h1{font-size:40px}
  .hero-trust{gap:12px;flex-direction:column;margin-top:28px}
  .section{padding:42px 0}
  .products{grid-template-columns:repeat(2,1fr);gap:11px}
  .product-img{height:210px}
  .quick{display:none}
  .deal{grid-template-columns:1fr}
  .deal-image{min-height:250px}
  .deal-content{padding:30px}
  .benefits{grid-template-columns:1fr 1fr}
  .benefit{border-bottom:1px solid var(--line)}
  .benefit:nth-child(2){border-right:0}
  .reviews{grid-template-columns:1fr}
  .newsletter{padding:28px;display:block}
  .news-form{margin-top:20px}
  .footer-grid{grid-template-columns:1fr 1fr}
  .mobile-nav{
    position:fixed;
    display:flex;
    bottom:0;
    left:0;
    right:0;
    height:62px;
    background:rgba(255,255,255,.96);
    backdrop-filter:blur(15px);
    border-top:1px solid var(--line);
    z-index:150;
    justify-content:space-around;
    padding-bottom:env(safe-area-inset-bottom);
  }
  .mobile-nav button{
    flex:1;
    background:none;
    color:#8b8c95;
    font-size:9px;
    font-weight:700;
    display:flex;
    flex-direction:column;
    align-items:center;
    justify-content:center;
    gap:4px;
  }
  .mobile-nav button i{font-size:16px}
  .mobile-nav button.active{color:var(--accent)}
  body{padding-bottom:62px}
}

@media(max-width:480px){
  .header .search{display:none}
  .hero h1{font-size:34px}
  .hero p{font-size:13px}
  .categories{grid-template-columns:repeat(2,1fr)}
  .product-img{height:175px}
  .product-body{padding:12px}
  .product h3{font-size:12px}
  .price strong{font-size:15px}
  .add{height:36px}
  .section-head h2{font-size:23px}
  .deal-content h2{font-size:29px}
  .newsletter h2{font-size:20px}
  .news-form{display:block}
  .news-form .btn{width:100%;margin-top:8px}
}
</style>
</head>

<body>

<div class="topbar">
  <i class="fa-solid fa-truck-fast"></i>
  Free shipping on orders over $50 · <strong>Today only: 20% off selected items</strong>
</div>

<header>
  <div class="container header">
    <button class="icon menu-btn" id="menuBtn" aria-label="Menu">
      <i class="fa-solid fa-bars"></i>
    </button>

    <a href="#" class="logo">
      <span class="logo-mark"><i class="fa-solid fa-bag-shopping"></i></span>
      <span>Nexus<span>Shop</span></span>
    </a>

    <nav class="desktop-nav">
      <a href="#home" class="active">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Shop</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>
    </nav>

    <div class="search">
      <i class="fa-solid fa-magnifying-glass"></i>
      <input id="search" type="search" placeholder="Search products...">
      <button id="clearSearch" style="display:none">
        <i class="fa-solid fa-xmark"></i>
      </button>
    </div>

    <div class="header-actions">
      <button class="icon account" title="Account">
        <i class="fa-regular fa-user"></i>
      </button>

      <button class="icon" id="wishBtn" title="Wishlist">
        <i class="fa-regular fa-heart"></i>
        <span class="count" id="wishCount">0</span>
      </button>

      <button class="icon" id="cartBtn" title="Cart">
        <i class="fa-solid fa-bag-shopping"></i>
        <span class="count" id="cartCount">0</span>
      </button>
    </div>
  </div>
</header>

<main id="home">

<section class="hero">
  <div class="hero-bg"></div>

  <div class="hero-content">
    <div class="pill">
      <i class="fa-solid fa-sparkles"></i>
      NEW COLLECTION 2026
    </div>

    <h1>Everything you want, all in one place.</h1>

    <p>
      Discover carefully selected fashion, technology and everyday essentials
      at prices you'll love.
    </p>

    <div class="hero-actions">
      <button class="btn btn-primary" id="shopBtn">
        Shop collection <i class="fa-solid fa-arrow-right"></i>
      </button>

      <button class="btn btn-light" id="dealBtn">
        <i class="fa-solid fa-bolt"></i> Today's deals
      </button>
    </div>

    <div class="hero-trust">
      <span><i class="fa-solid fa-circle-check"></i> Easy returns</span>
      <span><i class="fa-solid fa-circle-check"></i> Secure checkout</span>
      <span><i class="fa-solid fa-circle-check"></i> Fast delivery</span>
    </div>
  </div>
</section>

<section class="section" id="categories">
<div class="container">

  <div class="section-head">
    <div>
      <div class="eyebrow">Shop by interest</div>
      <h2>What are you looking for?</h2>
      <p>Start with a category and find your next favorite.</p>
    </div>
    <a href="#products" class="link">View all →</a>
  </div>

  <div class="categories" id="categoriesGrid"></div>

</div>
</section>

<section class="section" id="products">
<div class="container">

  <div class="section-head">
    <div>
      <div class="eyebrow">Popular right now</div>
      <h2>Trending products</h2>
      <p>Products customers are loving this week.</p>
    </div>
    <span class="result-count" id="resultCount"></span>
  </div>

  <div class="filterbar">
    <button class="filter active" data-filter="all">All</button>
    <button class="filter" data-filter="Smartphones">Phones</button>
    <button class="filter" data-filter="Laptops">Laptops</button>
    <button class="filter" data-filter="Clothing">Clothing</button>
    <button class="filter" data-filter="Gadgets">Gadgets</button>
    <button class="filter" data-filter="Footwear">Footwear</button>
    <button class="filter" data-filter="Accessories">Accessories</button>
  </div>

  <div class="products" id="productsGrid"></div>

</div>
</section>

<section class="section" id="deals">
<div class="container">

  <div class="section-head">
    <div>
      <div class="eyebrow">Don't miss it</div>
      <h2>Limited-time deal</h2>
      <p>One of our most popular products at a special price.</p>
    </div>
  </div>

  <div class="deal">
    <div class="deal-image">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="MacBook">
    </div>

    <div class="deal-content">
      <div class="pill"><i class="fa-solid fa-bolt"></i> FLASH DEAL</div>
      <h2>MacBook Air M2</h2>
      <p>
        Thin, powerful and beautifully designed. Perfect for work,
        creativity and everyday productivity.
      </p>

      <div class="deal-price">$999 <del>$1,199</del></div>

      <div class="timer">
        <div class="time"><strong id="days">01</strong><small>Days</small></div>
        <div class="time"><strong id="hours">00</strong><small>Hours</small></div>
        <div class="time"><strong id="mins">00</strong><small>Mins</small></div>
        <div class="time"><strong id="secs">00</strong><small>Secs</small></div>
      </div>

      <p class="stock">
        <i class="fa-solid fa-fire"></i>
        Only <b>12 units</b> left at this price
      </p>

      <button class="btn btn-primary" id="dealCart">
        Add deal to cart <i class="fa-solid fa-bag-shopping"></i>
      </button>
    </div>
  </div>

</div>
</section>

<section class="section">
<div class="container">

  <div class="benefits">
    <div class="benefit">
      <div class="benefit-icon"><i class="fa-solid fa-truck-fast"></i></div>
      <div><strong>Free delivery</strong><span>On orders over $50</span></div>
    </div>
    <div class="benefit">
      <div class="benefit-icon"><i class="fa-solid fa-rotate-left"></i></div>
      <div><strong>Easy returns</strong><span>30-day return policy</span></div>
    </div>
    <div class="benefit">
      <div class="benefit-icon"><i class="fa-solid fa-shield-halved"></i></div>
      <div><strong>Secure payment</strong><span>100% protected checkout</span></div>
    </div>
    <div class="benefit">
      <div class="benefit-icon"><i class="fa-solid fa-headset"></i></div>
      <div><strong>Friendly support</strong><span>We're here to help</span></div>
    </div>
  </div>

</div>
</section>

<section class="section" id="reviews">
<div class="container">

  <div class="section-head">
    <div>
      <div class="eyebrow">Customer love</div>
      <h2>What shoppers say</h2>
      <p>Real feedback from our community.</p>
    </div>
  </div>

  <div class="reviews" id="reviewsGrid"></div>

</div>
</section>

<section class="section">
<div class="container">

  <div class="newsletter">
    <div>
      <h2>Get the good stuff.</h2>
      <p>New arrivals, private offers and useful shopping updates.</p>
    </div>

    <form class="news-form" id="newsletter">
      <input type="email" id="email" placeholder="Your email address" required>
      <button class="btn btn-primary">Subscribe</button>
    </form>
  </div>

</div>
</section>

</main>

<footer>
<div class="container">

  <div class="footer-grid">
    <div class="footer-brand">
      <a href="#" class="logo">
        <span class="logo-mark"><i class="fa-solid fa-bag-shopping"></i></span>
        <span>Nexus<span>Shop</span
