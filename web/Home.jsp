<%-- 
    Document   : Home
    Created on : Jan 4, 2025, 5:20:52 PM
    Author     : daoho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>FoodMart - Free eCommerce Grocery Store HTML Website Template</title>
        <jsp:include page="inc/config-header.jsp" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>
    <body>

        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <defs>
    <symbol xmlns="http://www.w3.org/2000/svg" id="link" viewBox="0 0 24 24">
        <path fill="currentColor" d="M12 19a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0-4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm-5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm7-12h-1V2a1 1 0 0 0-2 0v1H8V2a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v14a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V6a3 3 0 0 0-3-3Zm1 17a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-9h16Zm0-11H4V6a1 1 0 0 1 1-1h1v1a1 1 0 0 0 2 0V5h8v1a1 1 0 0 0 2 0V5h1a1 1 0 0 1 1 1ZM7 15a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0 4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right" viewBox="0 0 24 24">
        <path fill="currentColor" d="M17.92 11.62a1 1 0 0 0-.21-.33l-5-5a1 1 0 0 0-1.42 1.42l3.3 3.29H7a1 1 0 0 0 0 2h7.59l-3.3 3.29a1 1 0 0 0 0 1.42a1 1 0 0 0 1.42 0l5-5a1 1 0 0 0 .21-.33a1 1 0 0 0 0-.76Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="category" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 5.5h-6.28l-.32-1a3 3 0 0 0-2.84-2H5a3 3 0 0 0-3 3v13a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3v-10a3 3 0 0 0-3-3Zm1 13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-13a1 1 0 0 1 1-1h4.56a1 1 0 0 1 .95.68l.54 1.64a1 1 0 0 0 .95.68h7a1 1 0 0 1 1 1Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="calendar" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 4h-2V3a1 1 0 0 0-2 0v1H9V3a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V7a3 3 0 0 0-3-3Zm1 15a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-7h16Zm0-9H4V7a1 1 0 0 1 1-1h2v1a1 1 0 0 0 2 0V6h6v1a1 1 0 0 0 2 0V6h2a1 1 0 0 1 1 1Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="heart" viewBox="0 0 24 24">
        <path fill="currentColor" d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="plus" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 11h-6V5a1 1 0 0 0-2 0v6H5a1 1 0 0 0 0 2h6v6a1 1 0 0 0 2 0v-6h6a1 1 0 0 0 0-2Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="minus" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 11H5a1 1 0 0 0 0 2h14a1 1 0 0 0 0-2Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewBox="0 0 24 24">
        <path fill="currentColor" d="M8.5 19a1.5 1.5 0 1 0 1.5 1.5A1.5 1.5 0 0 0 8.5 19ZM19 16H7a1 1 0 0 1 0-2h8.491a3.013 3.013 0 0 0 2.885-2.176l1.585-5.55A1 1 0 0 0 19 5H6.74a3.007 3.007 0 0 0-2.82-2H3a1 1 0 0 0 0 2h.921a1.005 1.005 0 0 1 .962.725l.155.545v.005l1.641 5.742A3 3 0 0 0 7 18h12a1 1 0 0 0 0-2Zm-1.326-9l-1.22 4.274a1.005 1.005 0 0 1-.963.726H8.754l-.255-.892L7.326 7ZM16.5 19a1.5 1.5 0 1 0 1.5 1.5a1.5 1.5 0 0 0-1.5-1.5Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="check" viewBox="0 0 24 24">
        <path fill="currentColor" d="M18.71 7.21a1 1 0 0 0-1.42 0l-7.45 7.46l-3.13-3.14A1 1 0 1 0 5.29 13l3.84 3.84a1 1 0 0 0 1.42 0l8.16-8.16a1 1 0 0 0 0-1.47Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="trash" viewBox="0 0 24 24">
        <path fill="currentColor" d="M10 18a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1ZM20 6h-4V5a3 3 0 0 0-3-3h-2a3 3 0 0 0-3 3v1H4a1 1 0 0 0 0 2h1v11a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8h1a1 1 0 0 0 0-2ZM10 5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1h-4Zm7 14a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1V8h10Zm-3-1a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="star-outline" viewBox="0 0 15 15">
        <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" d="M7.5 9.804L5.337 11l.413-2.533L4 6.674l2.418-.37L7.5 4l1.082 2.304l2.418.37l-1.75 1.793L9.663 11L7.5 9.804Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="star-solid" viewBox="0 0 15 15">
        <path fill="currentColor" d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="search" viewBox="0 0 24 24">
        <path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 24 24">
        <path fill="currentColor" d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 15 15">
        <path fill="currentColor" d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z"/>
    </symbol>
    </defs>
    </svg>

    <div class="preloader-wrapper">
        <div class="preloader">
        </div>
    </div>

    <div class="offcanvas offcanvas-end" id="offcanvasCart">
    <div class="offcanvas-header">
        <h4>Your Cart</h4>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
    </div>
    <div class="offcanvas-body">
        <ul class="list-group mb-3" id="cart-items">
            <li class="list-group-item text-center">Your cart is empty.</li>
        </ul>
        <li class="list-group-item d-flex justify-content-between">
            <span>Total (USD)</span>
            <strong id="cart-total">$0</strong>
        </li>
        <a href="check-out" class="w-100 btn btn-primary">Checkout</a>
    </div>
</div>


    <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasSearch" aria-labelledby="Search">
        <div class="offcanvas-header justify-content-center">
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div class="order-md-last">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-primary">Search</span>
                </h4>
                <form role="search" action="index.html" method="get" class="d-flex mt-3 gap-0">
                    <input class="form-control rounded-start rounded-0 bg-light" type="email" placeholder="What are you looking for?" aria-label="What are you looking for?">
                    <button class="btn btn-dark rounded-end rounded-0" type="submit">Search</button>
                </form>
            </div>
        </div>
    </div>

    <header>
        <jsp:include page="inc/header.jsp" />
    </header>

    <section class="py-3" style="background-image: url('images/background-pattern.jpg');background-repeat: no-repeat;background-size: cover;">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">

                    <div class="banner-blocks">

                        <div class="banner-ad large bg-info block-1">

                            <div class="swiper main-swiper">
                                <div class="swiper-wrapper">

                                    <div class="swiper-slide">
                                        <div class="row banner-content p-5">
                                            <div class="content-wrapper col-md-7">
                                                <div class="categories my-3">100% natural</div>
                                                <h3 class="display-4">Fresh Smoothie & Summer Juice</h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim massa diam elementum.</p>
                                                <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 px-4 py-3 mt-3">Shop Now</a>
                                            </div>
                                            <div class="img-wrapper col-md-5">
                                                <img src="images/product-thumb-1.png" class="img-fluid">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="swiper-slide">
                                        <div class="row banner-content p-5">
                                            <div class="content-wrapper col-md-7">
                                                <div class="categories mb-3 pb-3">100% natural</div>
                                                <h3 class="banner-title">Fresh Smoothie & Summer Juice</h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim massa diam elementum.</p>
                                                <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">Shop Collection</a>
                                            </div>
                                            <div class="img-wrapper col-md-5">
                                                <img src="images/product-thumb-1.png" class="img-fluid">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="swiper-slide">
                                        <div class="row banner-content p-5">
                                            <div class="content-wrapper col-md-7">
                                                <div class="categories mb-3 pb-3">100% natural</div>
                                                <h3 class="banner-title">Heinz Tomato Ketchup</h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim massa diam elementum.</p>
                                                <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">Shop Collection</a>
                                            </div>
                                            <div class="img-wrapper col-md-5">
                                                <img src="images/product-thumb-2.png" class="img-fluid">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="swiper-pagination"></div>

                            </div>
                        </div>

                        <div class="banner-ad bg-success-subtle block-2" style="background:url('images/ad-image-1.png') no-repeat;background-position: right bottom">
                            <div class="row banner-content p-5">

                                <div class="content-wrapper col-md-7">
                                    <div class="categories sale mb-3 pb-3">20% off</div>
                                    <h3 class="banner-title">Fruits & Vegetables</h3>
                                    <a href="#" class="d-flex align-items-center nav-link">Shop Collection <svg width="24" height="24"><use xlink:href="#arrow-right"></use></svg></a>
                                </div>

                            </div>
                        </div>

                        <div class="banner-ad bg-danger block-3" style="background:url('images/ad-image-2.png') no-repeat;background-position: right bottom">
                            <div class="row banner-content p-5">

                                <div class="content-wrapper col-md-7">
                                    <div class="categories sale mb-3 pb-3">15% off</div>
                                    <h3 class="item-title">Baked Products</h3>
                                    <a href="#" class="d-flex align-items-center nav-link">Shop Collection <svg width="24" height="24"><use xlink:href="#arrow-right"></use></svg></a>
                                </div>

                            </div>
                        </div>

                    </div>
                    <!-- / Banner Blocks -->

                </div>
            </div>
        </div>
    </section>

    <section class="py-5 overflow-hidden">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">

                    <div class="section-header d-flex flex-wrap justify-content-between mb-5">
                        <h2 class="section-title">Category</h2>

                        <div class="d-flex align-items-center">
                            <a href="#" class="btn-link text-decoration-none">View All Categories →</a>
                            <div class="swiper-buttons">
                                <button class="swiper-prev category-carousel-prev btn btn-yellow">❮</button>
                                <button class="swiper-next category-carousel-next btn btn-yellow">❯</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <div class="category-carousel swiper">
                        <div class="swiper-wrapper">
                            <c:set var="counter" value="0" />
                            <c:forEach items = "${listC}" var="o">
                                <c:if test="${counter < 10}">
                                    <a href="category?cid= ${o.id}" class="nav-link category-item swiper-slide">
                                        <img src="${o.categoryimg}" alt="Category Thumbnail">
                                        <h3 class="category-title">${o.name}</h3>
                                        <c:set var="counter" value="${counter + 1}" />
                                    </a>
                                </c:if>    
                            </c:forEach>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>


    <section class="py-5 overflow-hidden">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">

                    <div class="section-header d-flex flex-wrap flex-wrap justify-content-between mb-5">

                        <h2 class="section-title">Newly Arrived Brands</h2>

                        <div class="d-flex align-items-center">
                            <a href="#" class="btn-link text-decoration-none">View All Categories →</a>
                            <div class="swiper-buttons">
                                <button class="swiper-prev brand-carousel-prev btn btn-yellow">❮</button>
                                <button class="swiper-next brand-carousel-next btn btn-yellow">❯</button>
                            </div>  
                        </div>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <div class="brand-carousel swiper">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="card mb-3 p-3 rounded-4 shadow border-0">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="images/product-thumb-11.jpg" class="img-fluid rounded" alt="Card title">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body py-0">
                                                <p class="text-muted mb-0">Amber Jar</p>
                                                <h5 class="card-title">Honey best nectar you wish to get</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="card mb-3 p-3 rounded-4 shadow border-0">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="images/product-thumb-12.jpg" class="img-fluid rounded" alt="Card title">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body py-0">
                                                <p class="text-muted mb-0">Amber Jar</p>
                                                <h5 class="card-title">Honey best nectar you wish to get</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="card mb-3 p-3 rounded-4 shadow border-0">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="images/product-thumb-13.jpg" class="img-fluid rounded" alt="Card title">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body py-0">
                                                <p class="text-muted mb-0">Amber Jar</p>
                                                <h5 class="card-title">Honey best nectar you wish to get</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="card mb-3 p-3 rounded-4 shadow border-0">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="images/product-thumb-14.jpg" class="img-fluid rounded" alt="Card title">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body py-0">
                                                <p class="text-muted mb-0">Amber Jar</p>
                                                <h5 class="card-title">Honey best nectar you wish to get</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="card mb-3 p-3 rounded-4 shadow border-0">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="images/product-thumb-11.jpg" class="img-fluid rounded" alt="Card title">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body py-0">
                                                <p class="text-muted mb-0">Amber Jar</p>
                                                <h5 class="card-title">Honey best nectar you wish to get</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="card mb-3 p-3 rounded-4 shadow border-0">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="images/product-thumb-12.jpg" class="img-fluid rounded" alt="Card title">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body py-0">
                                                <p class="text-muted mb-0">Amber Jar</p>
                                                <h5 class="card-title">Honey best nectar you wish to get</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>


    <section class="py-5">
        <div class="container-fluid">

            <div class="row">
                <div class="col-md-12">

                    <div class="bootstrap-tabs product-tabs">
                        <div class="tabs-header d-flex justify-content-between border-bottom my-5">
                            <h3>Trending Products</h3>
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a href="#" class="nav-link text-uppercase fs-6 active" id="nav-all-tab" data-bs-toggle="tab" data-bs-target="#nav-all">All</a>
                                    <a href="#" class="nav-link text-uppercase fs-6" id="nav-fruits-tab" data-bs-toggle="tab" data-bs-target="#nav-fruits">Fruits & Veges</a>
                                    <a href="#" class="nav-link text-uppercase fs-6" id="nav-juices-tab" data-bs-toggle="tab" data-bs-target="#nav-juices">Juices</a>
                                </div>
                            </nav>
                        </div>
                        <div class="tab-content" id="nav-tabContent">

                            <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">

                                <div class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                                    <c:set var="counter" value="0" />
                                    <c:forEach items="${listP}" var="p">
                                        <c:if test="${counter < 10}">
                                            <div class="col">
                                                <div class="product-item">
                                                    <span class="badge bg-success position-absolute m-3">-30%</span>
                                                    <figure>
                                                        <a href="detail-product?dpid=${p.id}" title="Product Title">
                                                            <img src="${p.img}" class="tab-image">
                                                        </a>
                                                    </figure>
                                                    <h3>${p.name}</h3>
                                                    <span class="qty">${p.quanity} Unit</span>
                                                    <span class="price">$${p.price}</span>

                                                    <div class="d-flex align-items-center justify-content-between">
                                                        <div class="input-group product-qty">
                                                            <span class="input-group-btn">
                                                                <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                                </button>
                                                            </span>
                                                            <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                            <span class="input-group-btn">
                                                                <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                                    <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                                </button>
                                                            </span> 
                                                        </div>
                                                        <button id="addToCartLink" class="nav-link btn-add-to-cart">
                                                            Add to Cart <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <c:set var="counter" value="${counter + 1}" />
                                        </c:if>
                                    </c:forEach>

                                </div>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", function () {
                                        const quantityInput = document.getElementById("quantity");
                                        const addToCartLink = document.getElementById("addToCartLink");

                                        addToCartLink.addEventListener("click", function (event) {
                                            event.preventDefault(); // Ngăn chặn điều hướng mặc định

                                            const productId = addToCartLink.getAttribute("data-id");
                                            const quantity = quantityInput.value;

                                            // Cập nhật URL với số lượng sản phẩm
                                            const url = `add-to-cart?id=${productId}&quantity=${quantity}`;
                                            window.location.href = url; // Điều hướng đến URL mới
                                        });
                                    });
                                    </script>
                                <!-- / product-grid -->
                            </div>                             
                            <div class="tab-pane fade" id="nav-fruits" role="tabpanel" aria-labelledby="nav-fruits-tab">

                                <div class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">

                                    <div class="col">
                                        <div class="product-item">
                                            <span class="badge bg-success position-absolute m-3">-30%</span>
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-cucumber.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <span class="badge bg-success position-absolute m-3">-30%</span>
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-milk.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <span class="badge bg-success position-absolute m-3">-30%</span>
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-orange-juice.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-raspberries.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-bananas.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-bananas.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- / product-grid -->

                            </div>
                            <div class="tab-pane fade" id="nav-juices" role="tabpanel" aria-labelledby="nav-juices-tab">

                                <div class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-cucumber.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-milk.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-tomatoes.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-tomatoketchup.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-bananas.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <div class="product-item">
                                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                                            <figure>
                                                <a href="index.html" title="Product Title">
                                                    <img src="images/thumb-bananas.png"  class="tab-image">
                                                </a>
                                            </figure>
                                            <h3>Sunstar Fresh Melon Juice</h3>
                                            <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                                            <span class="price">$18.00</span>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="input-group product-qty">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                                            <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                                        </button>
                                                    </span>
                                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                                            <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                                        </button>
                                                    </span>
                                                </div>
                                                <a href="#" class="nav-link">Add to Cart <iconify-icon icon="uil:shopping-cart"></a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- / product-grid -->

                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section class="py-5">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-6">
                    <div class="banner-ad bg-danger mb-3" style="background: url('images/ad-image-3.png');background-repeat: no-repeat;background-position: right bottom;">
                        <div class="banner-content p-5">

                            <div class="categories text-primary fs-3 fw-bold">Upto 25% Off</div>
                            <h3 class="banner-title">Luxa Dark Chocolate</h3>
                            <p>Very tasty & creamy vanilla flavour creamy muffins.</p>
                            <a href="#" class="btn btn-dark text-uppercase">Show Now</a>

                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="banner-ad bg-info" style="background: url('images/ad-image-4.png');background-repeat: no-repeat;background-position: right bottom;">
                        <div class="banner-content p-5">

                            <div class="categories text-primary fs-3 fw-bold">Upto 25% Off</div>
                            <h3 class="banner-title">Creamy Muffins</h3>
                            <p>Very tasty & creamy vanilla flavour creamy muffins.</p>
                            <a href="#" class="btn btn-dark text-uppercase">Show Now</a>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>

    <jsp:include page="inc/best-selling-product.jsp" />
    
    <section class="py-5">
        <div class="container-fluid">

            <div class="bg-secondary py-5 my-5 rounded-5" style="background: url('images/bg-leaves-img-pattern.png') no-repeat;">
                <div class="container my-5">
                    <div class="row">
                        <div class="col-md-6 p-5">
                            <div class="section-header">
                                <h2 class="section-title display-4">Get <span class="text-primary">25% Discount</span> on your first purchase</h2>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst amet, metus, sit massa posuere maecenas. At tellus ut nunc amet vel egestas.</p>
                        </div>
                        <div class="col-md-6 p-5">
                            <form>
                                <div class="mb-3">
                                    <label for="name" class="form-label">Name</label>
                                    <input type="text"
                                           class="form-control form-control-lg" name="name" id="name" placeholder="Name">
                                </div>
                                <div class="mb-3">
                                    <label for="" class="form-label">Email</label>
                                    <input type="email" class="form-control form-control-lg" name="email" id="email" placeholder="abc@mail.com">
                                </div>
                                <div class="form-check form-check-inline mb-3">
                                    <label class="form-check-label" for="subscribe">
                                        <input class="form-check-input" type="checkbox" id="subscribe" value="subscribe">
                                        Subscribe to the newsletter</label>
                                </div>
                                <div class="d-grid gap-2">
                                    <button type="submit" class="btn btn-dark btn-lg">Submit</button>
                                </div>
                            </form>

                        </div>

                    </div>

                </div>
            </div>

        </div>
    </section>

    <jsp:include page="inc/most-popular-product.jsp" />

    <section id="latest-blog" class="py-5">
        <div class="container-fluid">
            <div class="row">
                <div class="section-header d-flex align-items-center justify-content-between my-5">
                    <h2 class="section-title">Our Recent Blog</h2>
                    <div class="btn-wrap align-right">
                        <a href="#" class="d-flex align-items-center nav-link">Read All Articles <svg width="24" height="24"><use xlink:href="#arrow-right"></use></svg></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <article class="post-item card border-0 shadow-sm p-3">
                        <div class="image-holder zoom-effect">
                            <a href="#">
                                <img src="images/post-thumb-1.jpg" alt="post" class="card-img-top">
                            </a>
                        </div>
                        <div class="card-body">
                            <div class="post-meta d-flex text-uppercase gap-3 my-2 align-items-center">
                                <div class="meta-date"><svg width="16" height="16"><use xlink:href="#calendar"></use></svg>22 Aug 2021</div>
                                <div class="meta-categories"><svg width="16" height="16"><use xlink:href="#category"></use></svg>tips & tricks</div>
                            </div>
                            <div class="post-header">
                                <h3 class="post-title">
                                    <a href="#" class="text-decoration-none">Top 10 casual look ideas to dress up your kids</a>
                                </h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipi elit. Aliquet eleifend viverra enim tincidunt donec quam. A in arcu, hendrerit neque dolor morbi...</p>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="post-item card border-0 shadow-sm p-3">
                        <div class="image-holder zoom-effect">
                            <a href="#">
                                <img src="images/post-thumb-2.jpg" alt="post" class="card-img-top">
                            </a>
                        </div>
                        <div class="card-body">
                            <div class="post-meta d-flex text-uppercase gap-3 my-2 align-items-center">
                                <div class="meta-date"><svg width="16" height="16"><use xlink:href="#calendar"></use></svg>25 Aug 2021</div>
                                <div class="meta-categories"><svg width="16" height="16"><use xlink:href="#category"></use></svg>trending</div>
                            </div>
                            <div class="post-header">
                                <h3 class="post-title">
                                    <a href="#" class="text-decoration-none">Latest trends of wearing street wears supremely</a>
                                </h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipi elit. Aliquet eleifend viverra enim tincidunt donec quam. A in arcu, hendrerit neque dolor morbi...</p>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-md-4">
                    <article class="post-item card border-0 shadow-sm p-3">
                        <div class="image-holder zoom-effect">
                            <a href="#">
                                <img src="images/post-thumb-3.jpg" alt="post" class="card-img-top">
                            </a>
                        </div>
                        <div class="card-body">
                            <div class="post-meta d-flex text-uppercase gap-3 my-2 align-items-center">
                                <div class="meta-date"><svg width="16" height="16"><use xlink:href="#calendar"></use></svg>28 Aug 2021</div>
                                <div class="meta-categories"><svg width="16" height="16"><use xlink:href="#category"></use></svg>inspiration</div>
                            </div>
                            <div class="post-header">
                                <h3 class="post-title">
                                    <a href="#" class="text-decoration-none">10 Different Types of comfortable clothes ideas for women</a>
                                </h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipi elit. Aliquet eleifend viverra enim tincidunt donec quam. A in arcu, hendrerit neque dolor morbi...</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 my-5">
        <div class="container-fluid">

            <div class="bg-warning py-5 rounded-5" style="background-image: url('images/bg-pattern-2.png') no-repeat;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <img src="images/phone.png" alt="phone" class="image-float img-fluid">
                        </div>
                        <div class="col-md-8">
                            <h2 class="my-5">Shop faster with foodmart App</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis sed ptibus liberolectus nonet psryroin. Amet sed lorem posuere sit iaculis amet, ac urna. Adipiscing fames semper erat ac in suspendisse iaculis. Amet blandit tortor praesent ante vitae. A, enim pretiummi senectus magna. Sagittis sed ptibus liberolectus non et psryroin.</p>
                            <div class="d-flex gap-2 flex-wrap">
                                <img src="images/app-store.jpg" alt="app-store">
                                <img src="images/google-play.jpg" alt="google-play">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="inc/hightlight-product.jsp" />
    <jsp:include page="inc/suggest-other-detail.jsp" />

    <footer class="py-5">
        <jsp:include page="inc/footer.jsp" />
    </footer>
    <div id="footer-bottom">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 copyright">
                    <p>© 2025 Foodmart. All rights reserved.</p>
                </div>
                <div class="col-md-6 credit-link text-start text-md-end">

                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="js/plugins.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
