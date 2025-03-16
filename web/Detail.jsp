<%-- 
    Document   : Detail
    Created on : Jan 6, 2025, 5:20:00 PM
    Author     : daoho
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products Detail</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/vendor.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
        <style>
            .product-image {
                max-height: 400px;
                object-fit: cover;
            }
            .thumbnail {
                width: 80px;
                height: 80px;
                object-fit: cover;
                cursor: pointer;
                opacity: 0.6;
                transition: opacity 0.3s ease;
            }
            .thumbnail:hover, .thumbnail.active {
                opacity: 1;
            }
        </style>
        <script>
               function changeImage(event, src) {
                                document.getElementById('mainImage').src = src;
                                document.querySelectorAll('.thumbnail').forEach(thumb => thumb.classList.remove('active'));
                                event.target.classList.add('active');
                        }
        </script>
        <jsp:include page="inc/config-header.jsp" />
    </head>
    <body>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
        <jsp:include page="inc/header.jsp" />
        <div class="container mt-5">
            <div class="row">
                <!-- Product Images -->
                <div class="col-md-6 mb-4">
                    <c:forEach items = "${listP}" var="o">
                    <img src="${o.img}" alt="Product" class="img-fluid rounded mb-3 product-image" id="mainImage">
                    <div class="d-flex justify-content-between">
                        
                        <img src="${o.img}" alt="Thumbnail 1" class="thumbnail rounded active" onclick="changeImage(event, this.src)">
                        <img src="https://images.unsplash.com/photo-1528148343865-51218c4a13e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NzEyNjZ8MHwxfHNlYXJjaHwzfHxoZWFkcGhvbmV8ZW58MHwwfHx8MTcyMTMwMzY5MHww&ixlib=rb-4.0.3&q=80&w=1080" alt="Thumbnail 2" class="thumbnail rounded" onclick="changeImage(event, this.src)">
                        <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NzEyNjZ8MHwxfHNlYXJjaHwxfHxoZWFkcGhvbmV8ZW58MHwwfHx8MTcyMTMwMzY5MHww&ixlib=rb-4.0.3&q=80&w=1080" alt="Thumbnail 3" class="thumbnail rounded" onclick="changeImage(event, this.src)">
                        <img src="https://images.unsplash.com/photo-1528148343865-51218c4a13e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NzEyNjZ8MHwxfHNlYXJjaHwzfHxoZWFkcGhvbmV8ZW58MHwwfHx8MTcyMTMwMzY5MHww&ixlib=rb-4.0.3&q=80&w=1080" alt="Thumbnail 4" class="thumbnail rounded" onclick="changeImage(event, this.src)">
                    </div>
                </div>

                <!-- Product Details -->
                <div class="col-md-6">  
                    <h2 class="mb-3">${o.name}</h2>
                    <p class="text-muted mb-4">SKU: ${o.id}</p>
                    <div class="mb-3">
                        <span class="h4 me-2">$${o.price * 0.8}</span>
                        <span class="text-muted"><s>$${o.price}</s></span>
                    </div>
                    <div class="mb-3">
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-fill text-warning"></i>
                        <i class="bi bi-star-half text-warning"></i>
                        <span class="ms-2">4.5 (120 reviews)</span>
                    </div>
                    <p class="mb-4">${o.description}</p>
                    <div class="mb-4">
                        <h5>Color:</h5>
                        <div class="btn-group" role="group" aria-label="Color selection">
                            <input type="radio" class="btn-check" name="color" id="black" autocomplete="off" checked>
                            <label class="btn btn-outline-dark" for="black">Black</label>
                            <input type="radio" class="btn-check" name="color" id="silver" autocomplete="off">
                            <label class="btn btn-outline-secondary" for="silver">Silver</label>
                            <input type="radio" class="btn-check" name="color" id="blue" autocomplete="off">
                            <label class="btn btn-outline-primary" for="blue">Blue</label>
                        </div>
                    </div>
                    <div class="mb-4">
                        <label for="quantity" class="form-label">Quantity:</label>
                        <input type="number" class="form-control" id="quantity" value="1" min="1" style="width: 80px;">
                    </div>
                    <button class="btn btn-primary btn-lg mb-3 me-2">
                        <i class="bi bi-cart-plus"></i> Add to Cart
                    </button>
                    <button class="btn btn-outline-secondary btn-lg mb-3">
                        <i class="bi bi-heart"></i> Add to Wishlist
                    </button>
                    <div class="mt-4">
                        <h5>Key Features:</h5>
                        <ul>
                            <li>Industry-leading noise cancellation</li>
                            <li>30-hour battery life</li>
                            <li>Touch sensor controls</li>
                            <li>Speak-to-chat technology</li>
                        </ul>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>  
    </body>
    <jsp:include page="inc/best-selling-product.jsp" />
    <jsp:include page="inc/suggest-other-detail.jsp" />
    <jsp:include page="inc/footer.jsp" />
</html>
