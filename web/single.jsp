
<!DOCTYPE html>
        <!--header-->
        <jsp:include  page="header.jsp"></jsp:include>
        <!-- grow -->
        <div class="grow">
            <div class="container">
                <h2>Single</h2>
            </div>
        </div>
        <!-- grow -->
        <div class="product">
            <div class="container">

                <div class="product-price1">
                    <div class="top-sing">
                        <div class="col-md-7 single-top">	
                            <div class="flexslider">
                                <ul class="slides">
                                    <li data-thumb="images/si.jpg">
                                        <div class="thumb-image"> <img src="${requestScope.pImage}" data-imagezoom="true" class="img-responsive"> </div>
                                    </li>
                                    <!--<li data-thumb="images/si1.jpg">
                                        <div class="thumb-image"> <img src="images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                    </li>
                                    <li data-thumb="images/si2.jpg">
                                        <div class="thumb-image"> <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                    </li> 
                                    <li data-thumb="images/si3.jpg">
                                        <div class="thumb-image"> <img src="images/si3.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                    </li>-->
                                </ul>
                            </div>

                            <div class="clearfix"> </div>
                            <!-- slide -->


                            <!-- FlexSlider -->
                            <script defer src="js/jquery.flexslider.js"></script>
                            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                            <script>
                            // Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
                            </script>
                        </div>	
                        <div class="col-md-5 single-top-in simpleCart_shelfItem">
                            <div class="single-para ">
                                <h4>${requestScope.pName}</h4>
                                <div class="star-on">

                                    <div class="review">
                                        <a href="#"> 1 customer review </a>

                                    </div>
                                    <div class="clearfix"> </div>
                                </div>

                                <h5 class="item_price">$ ${requestScope.pPrice}</h5>
                                <p>${requestScope.pDescription}</p>
                                <div class="available">
                                    <ul>
                                        <li>Color
                                            <select>
                                                <option>${requestScope.pColor}</option>
                                                <option>Black</option>
                                                <option>Dark Black</option>
                                                <option>Red</option>
                                            </select></li>
                                        <li class="size-in">Size<select>
                                                <option>${requestScope.pSize}</option>
                                                <option>Medium</option>
                                                <option>small</option>
                                                <option>Large</option>
                                                <option>small</option>
                                            </select></li>
                                        <div class="clearfix"> </div>
                                    </ul>
                                </div>

                                <a href="AddToCardController" class="add-cart item_add">ADD TO CART</a>

                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <!---->

                    <div class=" bottom-product">
                        <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                            <div class="product-at ">
                                <a href="#"><img class="img-responsive" src="images/pi3.jpg" alt="">
                                    <div class="pro-grid">
                                        <span class="buy-in">Buy Now</span>
                                    </div>
                                </a>	
                            </div>
                            <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                            <div class="ca-rt">
                                <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
                            </div>						
                        </div>
                        <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                            <div class="product-at ">
                                <a href="#"><img class="img-responsive" src="images/pi1.jpg" alt="">
                                    <div class="pro-grid">
                                        <span class="buy-in">Buy Now</span>
                                    </div>
                                </a>	
                            </div>
                            <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                            <div class="ca-rt">
                                <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
                            </div>					</div>
                        <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                            <div class="product-at ">
                                <a href="#"><img class="img-responsive" src="images/pi4.jpg" alt="">
                                    <div class="pro-grid">
                                        <span class="buy-in">Buy Now</span>
                                    </div>
                                </a>	
                            </div>
                            <p class="tun"><span>Lorem ipsum establish</span><br>CLARISSA</p>
                            <div class="ca-rt">
                                <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
                            </div>					</div>
                        <div class="clearfix"> </div>
                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
        <!--//content-->
        <jsp:include page="footer.jsp"></jsp:include>