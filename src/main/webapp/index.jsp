<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop — Modern E‑Commerce</title>

  <!-- Fonts & Icons -->
  https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap
  https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css

  <style>
    :root {
      --bg: #f8fafc;
      --primary: #0f172a;
      --accent: #6366f1;
      --muted: #64748b;
      --card: #ffffff;
      --border: #e5e7eb;
      --radius: 14px;
      --container: 1200px;
    }

    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    .container {
      max-width: var(--container);
      margin: auto;
      padding: 0 20px;
    }

    /* HEADER */
    header {
      position: sticky;
      top: 0;
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(10px);
      border-bottom: 1px solid var(--border);
      z-index: 50;
    }

    .header-inner {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 16px 0;
    }

    .brand {
      font-size: 22px;
      font-weight: 700;
    }

    .brand span {
      color: var(--accent);
    }

    nav ul {
      list-style: none;
      display: flex;
      gap: 14px;
      padding: 0;
      margin: 0;
    }

    nav a {
      padding: 10px 14px;
      border-radius: 10px;
      font-weight: 500;
    }

    nav a:hover {
      background: var(--border);
    }

    .search {
      display: flex;
      align-items: center;
      background: white;
      border: 1px solid var(--border);
      padding: 6px 12px;
      border-radius: 999px;
      gap: 8px;
    }

    .search input {
      border: none;
      outline: none;
      width: 200px;
    }

    .cart {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--accent);
      color: white;
      width: 18px;
      height: 18px;
      font-size: 11px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      font-weight: 700;
    }

    /* HERO */
    .hero {
      padding: 90px 20px;
      text-align: center;
      background: linear-gradient(135deg, #6366f1, #818cf8);
      color: white;
      border-radius: 0 0 var(--radius) var(--radius);
    }

    .hero h1 {
      font-size: 42px;
      margin-bottom: 12px;
    }

    .hero p {
      max-width: 700px;
      margin: auto;
      opacity: .95;
    }

    .btn {
      padding: 14px 30px;
      border-radius: 999px;
      border: none;
      font-weight: 600;
      cursor: pointer;
    }

    .btn-primary {
      background: white;
      color: #4338ca;
      margin-right: 8px;
    }

    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(255, 255, 255, .4);
      color: white;
    }

    /* SECTIONS */
    .section {
      padding: 64px 0;
    }

    .title {
      text-align: center;
      margin-bottom: 34px;
    }

    .grid {
      display: grid;
      gap: 24px;
    }

    /* CATEGORIES */
    .categories {
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    }

    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 24px;
      text-align: center;
      border: 1px solid var(--border);
      transition: .3s;
      cursor: pointer;
    }

    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
    }

    /* PRODUCTS */
    .products {
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    }

    .product {
      background: white;
      border-radius: var(--radius);
      border: 1px solid var(--border);
      overflow: hidden;
      transition: .3s;
    }

    .product:hover {
      transform: translateY(-6px);
      box-shadow: 0 18px 30px rgba(0,0,0,.08);
    }

    .product img {
      width: 100%;
      height: 220px;
      object-fit: cover;
    }

    .product-body {
      padding: 16px;
    }

    .price {
      font-weight: 700;
      font-size: 18px;
    }

    .add-btn {
      width: 100%;
      padding: 14px;
      background: var(--accent);
      color: white;
      border: none;
      border-radius: 10px;
      font-weight: 600;
      cursor: pointer;
    }

    /* NEWSLETTER */
    .newsletter {
      background: linear-gradient(135deg, #0f172a, #1e293b);
      color: white;
      padding: 48px;
      border-radius: var(--radius);
      text-align: center;
    }

    footer {
      border-top: 1px solid var(--border);
      padding: 32px 0;
      text-align: center;
      color: var(--muted);
    }

    @media(max-width:600px) {
      .hero h1 { font-size: 30px; }
      .search input { width: 120px; }
    }
  </style>
</head>

<body>

<header>
  <div class="container header-inner">
    <div class="brand">Nexus<span>Shop</span></div>

    <nav>
      <ul>
        <li>#Home</a></li>
        <li>#Categories</a></li>
        <li>#deals></li>
        <li>#About</a></li>
      </ul>
    </nav>

    <div style="display:flex; gap:12px; align-items:center;">
      <div class="search">
        <input id="searchInput" placeholder="Search products..." />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>

      <div class="cart">
        <i class="fas fa-shopping-cart"></i>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>
</header>

<section class="hero">
  <h1>Summer Collections — Premium Picks</h1>
  <p>Discover modern products, trending electronics and fashion curated for you.</p>
  <br>
  <button class="btn btn-primary" id="shopNow">Shop Now</button>
  <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
</section>

<section class="section container">
  <div class="title">
    <h2>Shop by Category</h2>
    <p class="muted">Browse top categories</p>
  </div>
  <div class="grid categories" id="categoriesGrid"></div>
</section>

<section class="section container">
  <div class="title" id="prod-title">
    <h2>Trending Products</h2>
  </div>
  <div class="grid products" id="productsGrid"></div>
</section>

<section class="section container">
  <div class="newsletter">
    <h3>Stay in the loop</h3>
    <p>Subscribe for offers & updates</p>
    <input id="newsletterEmail" placeholder="Email address">
    <button class="btn btn-primary">Subscribe</button>
  </div>
</section>

<footer>
  © <span id="year"></span> NexusShop. All rights reserved.
</footer>

<script>
/* Your JS logic preserved */

const CATEGORIES = [
  {id:'phones',name:'Smartphones',icon:'fa-mobile-alt'},
  {id:'laptops',name:'Laptops',icon:'fa-laptop'},
  {id:'gadgets',name:'Gadgets',icon:'fa-headphones'},
  {id:'footwear',name:'Footwear',icon:'fa-shoe-prints'},
  {id:'accessories',name:'Accessories',icon:'fa-watch'}
];

const PRODUCTS = [
  {id:1,title:'iPhone 14 Pro',price:1099,img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',category:'phones'},
  {id:2,title:'MacBook Pro',price:1999,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',category:'laptops'},
  {id:3,title:'Sony Headphones',price:399,img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',category:'gadgets'}
];

const categoriesGrid = document.getElementById('categoriesGrid');
const productsGrid = document.getElementById('productsGrid');
const cartCountEl = document.getElementById('cartCount');
let cartCount = 0;

function renderCategories(){
  categoriesGrid.innerHTML='';
  CATEGORIES.forEach(c=>{
    const d=document.createElement('div');
    d.className='cat-card';
    d.innerHTML=`<i class="fas ${c.icon}"></i><h4>${c.name}</h4>`;
    d.onclick=()=>filterProducts(c.name);
    categoriesGrid.appendChild(d);
  });
}

function renderProducts(list){
  productsGrid.innerHTML='';
  list.forEach(p=>{
    const d=document.createElement('div');
    d.className='product';
    d.innerHTML=`
      ${p.img}
      <div class="product-body">
        <h5>${p.title}</h5>
        <div class="price">$${p.price}</div>
        <button class="add-btn">Add to Cart</button>
      </div>`;
    d.querySelector('button').onclick=()=>{cartCount++;cartCountEl.textContent=cartCount;}
    productsGrid.appendChild(d);
  });
}

function filterProducts(q){
  renderProducts(PRODUCTS.filter(p=>p.title.toLowerCase().includes(q.toLowerCase()) || p.category.includes(q)));
}

document.getElementById('searchBtn').onclick=()=>filterProducts(searchInput.value);
document.getElementById('year').textContent=new Date().getFullYear();

renderCategories();
renderProducts(PRODUCTS);
</script>

</body>
</html>
