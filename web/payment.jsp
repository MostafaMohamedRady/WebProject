<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="header.jsp"></jsp:include>
        <!-- grow -->
        <div class="grow">
            <div class="container">
                <h2>Payment</h2>
            </div>
        </div>
        <!-- grow -->
        <div class="container">
            <div class="check">	 
                <h1>Shopping Payment</h1>
                <div class="col-md-9 cart-items">
                    <c:forEach items="${sessionScope.payment.getCartProductCollection()}" var="row">

                        
                        
                        <script>$(document).ready(function (c) {
                            $('.close1').on('click', function (c) {
                                $('.cart-header').fadeOut('slow', function (c) {
                                    $('.cart-header').remove();
                                });
                            });
                        });
                    </script>

                      
                    <div class="cart-header">
                        
                        <div class="cart-sec simpleCart_shelfItem">
                           
                            <div class="cart-item-info">
                                <h3><a href="#"><c:out value="${row.getProduct().getProductName()}"/></a></h3>
                                <ul class="qty">
                                     <li><p>Quantity : <c:out value="${row.getCartProductMount()}"/></p></li>
                                <li><p>price : <c:out value="${row.getProduct().getProductPrice()}"/></p></li>
                                </ul>

                                	
                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                    </c:forEach> 
                 		
                </div>
                <div class="col-md-3 cart-total">
                    <a class="continue" href="#"></a>
                    <div class="price-details">
                        <h3>Price Details</h3>
                        <span>Total</span>
                        <span class="total1"><c:out value="${sessionScope.p_total}"/></span>
                        <span>Discount</span>
                        <span class="total1"><c:out value="${sessionScope.payment.getPaymentDiscount()}"/></span>
                        <div class="clearfix"></div>				 
                    </div>
                      
                      
                    <ul class="total_price">
                        <li class="last_price"> <h4>TOTAL</h4></li>	
                        <li class="last_price"><span><fmt:formatNumber value="${sessionScope.p_total - sessionScope.payment.getPaymentDiscount()}" maxFractionDigits="2" /> </span></li>
                        <div class="clearfix"> </div>
                    </ul>


                    <div class="clearfix"></div>
                    <a class="order" href="#">Place Order</a>
                    <div class="total-item">
                        <h3>OPTIONS</h3>
                        <h4>COUPONS</h4>
                        <a class="cpns" href="#">Apply Coupons</a>
                        <p><a href="#">Log In</a> to use accounts - linked coupons</p>
                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>


        <!--//content-->
        <jsp:include page="footer.jsp"></jsp:include>
