<%-- 
    Document   : home
    Created on : Jul 30, 2022, 7:21:35 PM
    Author     : LAPTOP KIM ANH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Moocha Shop</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
              integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="./public/css/base.css">
        <link rel="stylesheet" href="./public/css/home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <section class="website">
            <!-- header -->
            <div class="header container-fluid">
                <!-- menu -->
                <div class="row fixed-top">
                    <div class="col-md">
                        <div class="menu-logo">
                            <img src="./public/images/logo.jpeg" alt="logo" width="170px" height="49px">
                        </div>

                    </div>
                    <div class="col-md-6">
                        <ul class="menu-list">
                            <li class="menu-list-items">
                                <a class="menu-items-link" href="HomeServlet">HOME</a>
                            </li>
                            <li class="menu-list-items">
                                <a class="menu-items-link" href="ProductsListServlet">SHOP</a>
                            </li>
                            <li class="menu-list-items">
                                <a class="menu-items-link" href="ProductsListServlet">FEATURED</a>
                            </li>
                            <li class="menu-list-items">
                                <a class="menu-items-link" href="HomeServlet">PAGES</a>
                            </li>
                            <li class="menu-list-items">
                                <a class="menu-items-link" href="HomeServlet">BLOGS</a>
                            </li>
                        </ul>
                    </div>
                    <div class=" menu-right col-md" id="menu">
                        <ul class="menu-icons">
                            <li class="icon" id="topnav">
                                <div class="search-container">
                                    <form action="SearchServlet" method="get">
                                        <input type="text" placeholder="Search here" name="productName">
                                        <button type="submit" ><i class="fa-solid fa-magnifying-glass"></i></button>
                                    </form>
                                </div>

                            </li>
                            <li class="icon">
                                <div>
                                    <a><i class="fa-solid fa-user"></i>
                                        <ul class="sub-menu">
                                            <li><button type="button" class="btn btn-outline-dark icon-btn" id="login-btn" onclick="location.href = 'AuthServlet'">Login</button></li>
                                            <li>
                                                <form action="LogoutServlet" method="get">
                                                    <button class="btn btn-outline-dark icon-btn" onclick="location.href = 'LogoutServlet'">Logout</button>
                                                </form>
                                            </li>
                                        </ul>
                                    </a>
                                </div>
                            </li>
                            <li class="icon">
                                <a href="ProductsListServlet"><i class="fa-solid fa-heart"></i></a>
                            </li>
                            <li class="icon">
                                <a href="CartServlet"><i class="fa-solid fa-cart-shopping"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- heading shop now -->
                <div class="content-heading">
                    <div class="sub-heading">
                        <h3>HEALTH BENEFITS OF GREEN TEA</h3>
                    </div>
                    <div class="heading">
                        <h1>Green tea Japanese</h1>
                    </div>
                    <div class="heading-content">
                        <p>About green tea for your health</p>
                    </div>
                    <button type="button" class="btn" onclick="location.href = 'ProductsListServlet'">SHOP NOW</button>
                </div>
            </div>

            <!-- boxcontent menu -->
            <div class="box-content">
                <div class="row">
                    <div class="content-left col-md-6">
                        <div class="banner-content">
                            <a href="#">
                                <img src="./public/images/banner1.jpeg" alt="banner1" width="645px" height="385px">
                                <div class="content">
                                    <h3 style="font-size:30px">Matcha <br>Powder Natural</h3>
                                    <button type="button" class="btn-banner" onclick="location.href = 'ProductsListServlet'">Shop now</button>
                                </div>
                            </a>

                        </div>
                    </div>
                    <div class="content-right col-md-6">
                        <div class="banner-content">
                            <a href="#">
                                <img src="./public/images/banner2.jpeg" alt="" width="645px" height="385px">
                                <div class="content">
                                    <h3 style="font-size:30px">100% Organic</h3>
                                    <button type="button" class="btn-banner" onclick="location.href = 'ProductsListServlet'">Shop now</button>
                                </div>

                            </a>

                        </div>

                    </div>

                </div>
            </div>
            <!-- best seller -->
            <div class="best-seller">

                <div class="row row-cols-4">
                    <c:forEach items="${productList}" var="product">
                        <div class="col" width="337px" height="423px">
                            <div class="img">
                                <a href="ProductDetailServlet?id=${product.id}">
                                    <img src="${product.img}" alt="best-seller" width="307px" height="316px">
                                </a>
                            </div>
                            <div class="items-info">
                                <a href="ProductDetailServlet?id=${product.id}">
                                    <h4>${product.name}</h4>
                                </a>
                                <p>$${product.price}</p>
                            </div>

                        </div>
                    </c:forEach>
                </div>

            </div>
            <!-- greentea -->
            <div class="greentea container-fluid">
                <div class="row image-left" style="background-image:url(./public/images/bg-greentea.jpeg);height: 425px;">
                    <div class="col">
                        <div class="greentea-content">
                            <h1 class="title-content" style="font-size:40px">Green Tea</h1>
                            <p class="subtitle">Green tea lovers raise your hands! The many health benefits and most
                                importantly its role in aiding weight loss has made green tea one of the most popular
                                beverages of the millennium. While the beverage is relatively new and just about picking
                                up
                                in India, green tea has been consumed in Japan and China for centuries.</p>
                            <button type="button" class="greentea-btn" onclick="location.href = 'ProductsListServlet'">Shop now</button>
                        </div>
                    </div>
                    <div class="col">
                        <div class="image-right">
                            <img src="./public/images/cốc trà.jpeg" alt="" height="425px">
                        </div>
                    </div>
                </div>
            </div>
            <!-- new arrivals -->
            <div class="arrival">

            </div>
            <!-- our blogs -->
            <div class="blogs">
                <h1 class="blog-title">Our Blogs</h1>
                <div class="row">
                    <div class="blog-content col">
                        <div class="blog-img">
                            <img src="./public/images/blog1.jpeg" alt="" width="420px" height="374px">
                        </div>

                        <div class="blog-paragraph">
                            <a href="" class="blog-news" style="color: #9A9A9A; font-size: 15px;">NEWS</a>
                            <a href="" style="text-decoration:none">
                                <h3 class="blog-heading">How To Learn More About Tea</h3>
                            </a>
                            <p>Alishan is a region of Taiwan well known for its high mountain olong. The name might
                                seemingly refer to a single mountain...</p>
                            <a href="">
                                <p style="text-decoration:underline; color:black">Readmore</p>
                            </a>
                        </div>
                    </div>
                    <div class="blog-content col">
                        <div class="blog-img">
                            <img src="./public/images/blog2.jpeg" alt="" width="420px" height="374px">
                        </div>

                        <div class="blog-paragraph">
                            <a href="" class="blog-news" style="color: #9A9A9A;font-size: 15px;">NEWS</a>
                            <a href="" style="text-decoration:none">
                                <h3 class="blog-heading">Oscar Brekell's tea Selection Misty Mountain</h3>
                            </a>
                            <p>Alishan is a region of Taiwan well known for its high mountain olong. The name might
                                seemingly refer to a single mountain...</p>
                            <a href="">
                                <p style="text-decoration:underline; color:black">Readmore</p>
                            </a>
                        </div>
                    </div>
                    <div class="blog-content col">
                        <div class="blog-img">
                            <img src="./public/images/blog3.jpeg" alt="" width="420px" height="374px">
                        </div>

                        <div class="blog-paragraph">
                            <a href="" class="blog-news" style="color: #9A9A9A; font-size: 15px;">NEWS</a>
                            <a href="" style="text-decoration:none">
                                <h3 class="blog-heading">Quntizhong: China's Heirloom Tea Plants</h3>
                            </a>
                            <p>Alishan is a region of Taiwan well known for its high mountain olong. The name might
                                seemingly refer to a single mountain...</p>
                            <a href="">
                                <p style="text-decoration:underline; color:black">Readmore</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer -->
            <%@include file="/include/footer.jsp" %>
        </section>

    </body>

</html>
