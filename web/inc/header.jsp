<%-- 
    Document   : header.jsp
    Created on : Mar 15, 2025, 12:11:27 AM
    Author     : daoho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<script>
        function toggleMenu() {
            var menu = document.getElementById("dropdownMenu");
            menu.style.display = menu.style.display === "block" ? "none" : "block";
        }
        
        // Đóng menu khi click ra ngoài
        window.onclick = function(event) {
            if (!event.target.closest('.menu-container')) {
                document.getElementById("dropdownMenu").style.display = "none";
            }
        }
    </script>
    <style>
        /* CSS cơ bản */
        body {
            font-family: Arial, sans-serif;
        }
        .menu-container {
            position: relative;
            display: inline-block;
        }
        .user-icon {
            background-color: #f8f9fa;
            padding: 3px;
            border-radius: 50%;
            cursor: pointer;
            display: inline-block;
        }
        .menu {
            display: none;
            position: absolute;
            top: 45px;
            right: 0;
            background-color: white;
            border: 1px solid #ddd;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            min-width: 200px;
            z-index: 1000;
        }
        .menu a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: black;
        }
        .menu a:hover {
            background-color: #f1f1f1;
        }
    </style>
 <div class="container-fluid">
            <div class="row py-3 border-bottom">

                <div class="col-sm-4 col-lg-3 text-center text-sm-start">
                    <div class="main-logo">
                        <a href="/GroceryShop/home">
                            <img src="images/logo.png" alt="logo" class="img-fluid">
                        </a>
                    </div>
                </div>

                <div class="col-sm-6 offset-sm-2 offset-md-0 col-lg-5 d-none d-lg-block">
                    <div class="search-bar row bg-light p-2 my-2 rounded-4">
                        <div class="col-md-4 d-none d-md-block">
                            <select class="form-select border-0 bg-transparent">
                                <option>All Categories</option>
                                <c:forEach items = "${listC}" var="o">
                                    <option>${o.name}</option>  
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-11 col-md-7">
                            <form id="search-form" class="text-center" action="index.html" method="post">
                                <input type="text" class="form-control border-0 bg-transparent" placeholder="Search for more than 20,000 products" />
                            </form>
                        </div>
                        <div class="col-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z"/></svg>
                        </div>
                    </div>
                </div>

                <div class="col-sm-8 col-lg-4 d-flex justify-content-end gap-5 align-items-center mt-4 mt-sm-0 justify-content-center justify-content-sm-end">
                    <div class="support-box text-end d-none d-xl-block">
                        <span class="fs-6 text-muted">For Support?</span>
                        <h5 class="mb-0">+980-34984089</h5>
                    </div>

                    <ul class="d-flex justify-content-end list-unstyled m-0">
                        <li>
                            <div class="menu-container">
                                <a class="user-icon" onclick="toggleMenu()" class="rounded-circle bg-light p-2 mx-1">
                                    <svg width="20" height="20" viewBox="0 0 20 20">
                                        <use xlink:href="#user"></use>
                                    </svg>
                                </a>

                                <div class="menu" id="dropdownMenu">
                                    <%
                                        String username = (String) session.getAttribute("username");
                                        if (username != null) {
                                    %>
                                            <p>Xin chào, <%= username %>!</p>
                                    <%
                                        } else {
                                    %>
                                            <p>Vui lòng đăng nhập!</p>
                                    <%
                                        }
                                    %>
                                    <a href="sign-in">🔑 Đăng nhập</a>
                                    <a href="sign-up">📝 Đăng ký</a>
                                    <a href="cart">🛒 Giỏ hàng</a>
                                    <a href="management-user">⚙️ Cài đặt</a>
                                    <a href="check-out">💳 Thanh toán</a>
                                    <a href="my-account">👤 Tài khoản của tôi</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="wish-list" class="rounded-circle bg-light p-2 mx-1" style="padding-top: 1vh;" >
                                <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#heart"></use></svg>
                            </a>
                        </li>
                        <li class="d-lg-none">
                            <a href="cart" class="rounded-circle bg-light p-2 mx-1" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart" aria-controls="offcanvasCart">
                                <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#cart"></use></svg>
                            </a>
                        </li>
                        <li class="d-lg-none">
                            <a href="#" class="rounded-circle bg-light p-2 mx-1" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSearch" aria-controls="offcanvasSearch">
                                <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#search"></use></svg>
                            </a>
                        </li>
                    </ul>

                    <div class="cart text-end d-none d-lg-block dropdown">
                        <button class="border-0 bg-transparent d-flex flex-column gap-2 lh-1" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart" aria-controls="offcanvasCart">
                            <span class="fs-6 text-muted dropdown-toggle">Your Cart</span>
                            <span class="cart-total fs-5 fw-bold">$1290.00</span>
                        </button>
                    </div>
                </div>

            </div>
        </div>
        <div class="container-fluid">
            <div class="row py-3">
                <div class="d-flex  justify-content-center justify-content-sm-between align-items-center">
                    <nav class="main-menu d-flex navbar navbar-expand-lg">

                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                                aria-controls="offcanvasNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                            <div class="offcanvas-header justify-content-center">
                                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                            </div>

                            <div class="offcanvas-body">

                                <select class="filter-categories border-0 mb-0 me-5">
                                    <option>Shop by Departments</option>
                                    <option>Groceries</option>
                                    <option>Drinks</option>
                                    <option>Chocolates</option>
                                </select>

                                <ul class="navbar-nav justify-content-end menu-list list-unstyled d-flex gap-md-3 mb-0">
                                    <li class="nav-item active">
                                        <a href="#women" class="nav-link">Women</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a href="#men" class="nav-link">Men</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#kids" class="nav-link">Kids</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#accessories" class="nav-link">Accessories</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" role="button" id="pages" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>
                                        <ul class="dropdown-menu" aria-labelledby="pages">
                                            <li><a href="index.html" class="dropdown-item">About Us </a></li>
                                            <li><a href="index.html" class="dropdown-item">Shop </a></li>
                                            <li><a href="index.html" class="dropdown-item">Single Product </a></li>
                                            <li><a href="index.html" class="dropdown-item">Cart </a></li>
                                            <li><a href="index.html" class="dropdown-item">Checkout </a></li>
                                            <li><a href="index.html" class="dropdown-item">Blog </a></li>
                                            <li><a href="index.html" class="dropdown-item">Single Post </a></li>
                                            <li><a href="index.html" class="dropdown-item">Styles </a></li>
                                            <li><a href="index.html" class="dropdown-item">Contact </a></li>
                                            <li><a href="index.html" class="dropdown-item">Thank You </a></li>
                                            <li><a href="index.html" class="dropdown-item">My Account </a></li>
                                            <li><a href="index.html" class="dropdown-item">404 Error </a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#brand" class="nav-link">Brand</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#sale" class="nav-link">Sale</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#blog" class="nav-link">Blog</a>
                                    </li>
                                </ul>

                            </div>

                        </div>
                </div>
            </div>
        </div>
