<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page  session="false" contentType="text/html" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Musican Shop</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
        <!-- start menu -->
        <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/memenu.js"></script>
        <script>$(document).ready(function () {
                $(".memenu").memenu();
            });</script>
        <script src="js/simpleCart.min.js"></script>
    </head>
    <body>

        <%--<jsp:useBean id="user" class="entity.Users" scope="session"/>--%>               
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="social">
                        <ul>
                            <li><a href="#"><i class="facebok"> </i></a></li>
                            <li><a href="#"><i class="twiter"> </i></a></li>
                            <li><a href="#"><i class="inst"> </i></a></li>
                            <li><a href="#"><i class="goog"> </i></a></li>
                            <li><i id="visitor" style="color: #ffffff">Visitor:${applicationScope.visitor}</i></li>
                            <li><i id="online" style="color: #ffffff">Online:${applicationScope.online}</i></li>
                            <div class="clearfix"></div>	
                        </ul>
                    </div>
                    <div class="header-left">

                        <div class="search-box">
                            <div id="sb-search" class="sb-search">
                                <form>
                                    <input class="sb-search-input" placeholder="Enter your search term..." type="search"  id="search">
                                    <input class="sb-search-submit" type="submit" value="">
                                    <span class="sb-icon-search"> </span>
                                </form>
                            </div>
                        </div>

                        <!-- search-scripts -->
                        <script src="js/classie.js"></script>
                        <script src="js/uisearch.js"></script>
                        <script>
            new UISearch(document.getElementById('sb-search'));
                        </script>
                        <!-- //search-scripts -->

                        <div class="ca-r">
                            <div class="cart box_1">
                                <a href="checkout.jsp">
                                    <h3> <div class="total">
                                            <span class="simpleCart_total"></span> </div>
                                        <img src="images/cart.png" alt=""/></h3>
                                </a>
                                <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                </div>
            </div>
            <div class="container">
                <div class="head-top">
                    <div class="logo">
                        <h1><a href="index.jsp">Musican</a></h1>
                    </div>
                    <div class=" h_menu4">
                        <ul class="memenu skyblue">
                            <li><a class="color8" href="index.jsp">Categories</a>                               
                                <div class="mepanel">
                                    <div class="row">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <c:forEach items="${requestScope.categoryList}" var="category">
                                                        <li><a href="SingleCategoryController?idcategory=${category.idcategory}">${category.categoryName}</a></li>
                                                        </c:forEach>
                                                </ul>	
                                            </div>							
                                        </div>				
                                    </div>								
                                </div>                                

                            </li>	
                            <c:if test="${!empty sessionScope.user}">
                                <li><a class="color4" href="login.jsp">${sessionScope.user.userEmail}</a></li>				
                                </c:if>
                                <c:if test="${empty sessionScope.user}">
                                <li><a class="color4" href="login.jsp">Login</a></li>
                                </c:if>
                            <li><a class="color4" href="login.jsp">${sessionScope.user.userEmail}</a></li>				

                            <li><a class="color6" href="contact.jsp">Contact</a></li>
                        </ul> 
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
