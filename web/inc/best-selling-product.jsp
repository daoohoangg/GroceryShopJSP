<%-- 
    Document   : best-selling-product
    Created on : Mar 15, 2025, 8:31:01 PM
    Author     : daoho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page import="entity.Product, dao.ProductDAO" %>
<%@page import="java.util.List, java.util.ArrayList" %>
<!DOCTYPE html>
<section class="py-5 overflow-hidden">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="section-header d-flex justify-content-between">

                    <h2 class="section-title">Best selling products</h2>

                    <div class="d-flex align-items-center">
                        <a href="#" class="btn-link text-decoration-none">View All Categories →</a>
                        <div class="swiper-buttons">
                            <button class="swiper-prev products-carousel-prev btn btn-primary">❮</button>
                            <button class="swiper-next products-carousel-next btn btn-primary">❯</button>
                        </div>  
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="products-carousel swiper">
                    <div class="swiper-wrapper">
                        <%
                            ProductDAO productDAO = new ProductDAO();
                            List<Product> listP = productDAO.get8Products();
                            for (Product p : listP) {
                        %>
                        <div class="product-item swiper-slide">
                            <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                            <figure>
                                <a href="detail-product?dpid= <%= p.getId()%>" title="Product Title">
                                    <img src="<%= p.getImg()%>"  class="tab-image">
                                </a>
                            </figure>
                            <h3><%= p.getName() %></h3>
                            <span class="qty"><%= p.getQuanity()%> Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                            <span class="price">$<%= p.getPrice() %></span>
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
                        <%}%>


                    </div>
                </div>
                <!-- / products-carousel -->

            </div>
        </div>
    </div>
</section>
