<%-- 
    Document   : product-list
    Created on : Aug 2, 2022, 9:49:49 AM
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
        <title>Search - Moocha Tea Shop</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
              integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="./public/css/base.css">
        <link rel="stylesheet" href="./public/css/product-list.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <section class="product-page">
            <!-- menu-bar -->
            <div class="menu-bar container-fluid">
                <!-- menu -->
                <div class="row fixed-top">
                    <div class="col-md-5">
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
                    <div class="col-md">
                        <div class="menu-logo">
                            <img src="./public/images/endlogo.jpeg" alt="logo" width="170px" height="49px">
                        </div>
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
                                        <ul class="user-menu">
                                            <li><button type="button" class="btn btn-outline-dark icon-btn" id="login-btn" onclick="location.href = 'AuthServlet'">Login</button></li>
                                            <li>
                                                <form action="LogoutServlet" method="get">
                                                    <button type="submit" class="btn btn-outline-dark icon-btn">Logout</button>
                                                </form></li>
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
            </div>
            <!-- banner -->
            <div class="banner">
                <div class="banner-heading">
                    <h1 class="title">Search</h1>
                </div>
                <div class="banner-tag">
                    <p><a href="HomeServlet" style="text-decoration:none; color:black">Home</a> > Search</p>
                </div>
            </div>
            <!-- button-select -->

            <div class="button-select">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col">
                            <div class="btn-left">
                                <button>
                                    <i class="fa-solid fa-filter"></i> FILTER
                                </button>
                            </div>
                        </div>
                        <div class="col">
                            <div class="btn-select">
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                        Featured
                                    </button>
                                    <div class="dropdown-box">
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">Featured</a></li>
                                            <li><a class="dropdown-item" href="#">Best Selling</a></li>
                                            <li><a class="dropdown-item" href="#">Alphabetically, A-Z</a></li>
                                            <li><a class="dropdown-item" href="#">Price, high to low</a></li>
                                            <li><a class="dropdown-item" href="#">Price, low to high</a></li>
                                            <li><a class="dropdown-item" href="#">Date, old to new</a></li>
                                            <li><a class="dropdown-item" href="#">Date, new to old</a></li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- product-list -->
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
                                <p>$ ${product.price} USD</p>
                            </div>

                        </div>
                    </c:forEach>
                </div>

                <!-- pagination -->

                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                    </ul>
                </nav>

                <!-- footer -->
                <%@include file="./include/footer.jsp" %>


        </section>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
                integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
                integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
        crossorigin="anonymous"></script>
    </body>

</html>
