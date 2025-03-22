<%-- 
    Document   : CheckOut
    Created on : Mar 20, 2025, 6:18:56 AM
    Author     : daoho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="inc/header.jsp" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Check Out</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <jsp:include page="inc/config-header.jsp" />
    </head>
    <body class="bg-gray">

        <div class="min-h-screen flex items-center justify-center">
            <div class="container mx-auto px-4 py-10 max-w-4xl">
                <div class="bg-white shadow-lg rounded-lg p-6">

                    <!-- 🎉 Toast Notification -->
                    <div class="flex items-center bg-yellow-200 text-yellow-900 p-3 rounded-lg">
                        <img src="https://svgsilh.com/svg/151889.svg" class="w-8 mr-2">
                        <span class="text-sm">🎉 Congrats! You're eligible for a <b>Best Price</b> in this order.</span>
                    </div>

                    <!-- 🛒 Order Summary -->
                    <h2 class="text-xl font-bold mt-5">Order Summary</h2>

                    <!-- 🏷️ Product Item 1 -->
                    <div class="flex justify-between items-center border p-4 mt-4 rounded-lg bg-gray-50">
                        <img src="https://images-na.ssl-images-amazon.com/images/I/41KufN65f8L.jpg" class="w-16 rounded">
                        <div class="flex-1 ml-4">
                            <h3 class="text-lg font-semibold">Black Jacket XL</h3>
                            <p class="text-sm text-gray-600">Sold by <b>Aashir Khan</b></p>
                            <p class="text-xs text-red-600 mt-1">Only 2 left in stock</p>
                        </div>
                        <div class="text-right">
                            <h4 class="text-xl font-bold text-purple-700">$89</h4>
                            <p class="text-xs text-gray-500">30% OFF</p>
                        </div>
                    </div>

                    <!-- 🏷️ Product Item 2 -->
                    <div class="flex justify-between items-center border p-4 mt-4 rounded-lg bg-gray-50">
                        <img src="https://cdn11.bigcommerce.com/s-tboh32g/images/stencil/1280x1280/products/385314/492280/104C_BlackBlackHQ__07610.1557157866.jpg?c=2?imbypass=on" class="w-16 rounded">
                        <div class="flex-1 ml-4">
                            <h3 class="text-lg font-semibold">Black Hat</h3>
                            <p class="text-sm text-gray-600">Sold by <b>Taha Dildar</b></p>
                            <p class="text-xs text-red-600 mt-1">Only 1 left in stock</p>
                        </div>
                        <div class="text-right">
                            <h4 class="text-xl font-bold text-purple-700">$20</h4>
                            <p class="text-xs text-gray-500">40% OFF</p>
                        </div>
                    </div>

                    <!-- 🏷️ Total Price Breakdown -->
                    <div class="bg-orange-200 p-4 rounded-lg mt-6">
                        <h3 class="text-lg font-bold text-orange-900">Price Breakdown</h3>
                        <div class="flex justify-between mt-2">
                            <p class="text-orange-900 font-semibold">Amount</p>
                            <p class="font-bold">$102</p>
                        </div>
                        <div class="flex justify-between mt-2">
                            <p class="text-orange-900 font-semibold">VAT (15%)</p>
                            <p class="font-bold">$12</p>
                        </div>
                        <div class="border-t border-orange-400 my-2"></div>
                        <div class="flex justify-between mt-2 text-xl font-bold text-orange-900">
                            <p>Total Amount</p>
                            <p>$114</p>
                        </div>
                    </div>

                    <!-- 🏷️ Checkout Button -->
                    <button class="w-full mt-4 py-3 bg-purple-700 text-white font-bold rounded-lg hover:bg-purple-900">
                        Proceed to Checkout
                    </button>
                </div>

                <!-- 🎉 Thank You Message -->
                <div class="mt-6 bg-white shadow-lg rounded-lg p-6 text-center">
                    <h3 class="text-lg font-bold text-purple-700">Thank You, Alex! 🎊</h3>
                    <p class="text-gray-600 text-sm">Your order #5624 has been placed successfully.</p>
                    <img src="https://image.flaticon.com/icons/svg/1611/1611768.svg" class="w-16 mx-auto mt-2">
                </div>
            </div>
        </div>
        <jsp:include page="inc/best-selling-product.jsp" />
        <jsp:include page="inc/suggest-other-detail.jsp" />
        <jsp:include page="inc/footer.jsp" />
    </body>
</html>
