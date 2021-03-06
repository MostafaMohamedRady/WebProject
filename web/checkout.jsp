
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!--header-->
<jsp:include page="header.jsp"></jsp:include>
<jsp:useBean id="user" class="entity.Users" scope="session"/>  
<!-- grow -->
<div class="grow">
    <div class="container">
        <h2>Checkout</h2>
    </div>
</div>
<!-- grow -->
<div class="container">
    <div class="check">	 
        <h1>My Shopping Bag (${user.cartProductCollection.size()})</h1>
        <div class="col-md-9 cart-items">

            <script>$(document).ready(function (c) {
                    $('.close1').on('click', function (c) {
                        $('.cart-header').fadeOut('slow', function (c) {
                            $('.cart-header').remove();
                        });
                    });
                });
            </script>
            <c:set var="totalpayment" value="0" scope="page"/>
            <c:forEach items="${user.cartProductCollection}" var="productList">
                <c:if test="${productList.paymentIdpayment.idpayment!=0}">
                    <div class="cart-header">
                        <div class="close1"> </div>
                        <div class="cart-sec simpleCart_shelfItem">
                            <div class="cart-item cyc">
                                <img src="${productList.product.productImg}" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">
                                <h3><a href="#">${productList.product.productName}</a><span>Category:${productList.product.categories.categoryName}</span></h3>
                                <ul class="qty">
                                    <li><p>Size : ${productList.productsize}</p></li>
                                    <li><p>Qty : ${productList.cartProductMount}</p></li>
                                    <li><p>Color : ${productList.productColor}</p></li>
                                    <li><p>Total : ${productList.totalProduct}</p></li>
                                        ${totalpay=totalpay+productList.totalProduct}
                                </ul>

                                <div class="delivery">
                                    <p>Last Modification : ${productList.cartProductDate}</p>
                                    <span><a href="single.jsp?id=${productList.product.idproduct}">Edit</a></span>
                                    <span><a href="single.jsp?idcartProduct=${productList.idcartProduct}">Delete</a></span>
                                    <div class="clearfix"></div>
                                </div>	
                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                </c:if>
            </c:forEach>
            <script>$(document).ready(function (c) {
                    $('.close2').on('click', function (c) {
                        $('.cart-header2').fadeOut('slow', function (c) {
                            $('.cart-header2').remove();
                        });
                    });
                });
            </script>

        </div>
        <div class="col-md-3 cart-total">
            <a class="continue" href="#">Payment</a>
            <div class="price-details">
                <h3>Price Details</h3>
                <span>Total</span>
                <span class="total1">${totalpayment}</span>
                <span>Discount</span>
                <span class="total1">---</span>
                <span>Delivery Charges</span>
                <span class="total1">150.00</span>
                <div class="clearfix"></div>				 
            </div>	
            <ul class="total_price">
                <li class="last_price"> <h4>TOTAL</h4></li>	
                <li class="last_price"><span>6350.00</span></li>
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
