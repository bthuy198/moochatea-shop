<%-- 
    Document   : header
    Created on : Sep 3, 2022, 8:35:36 AM
    Author     : LAPTOP KIM ANH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- header -->
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
                                <li><button type="submit" class="btn btn-outline-dark icon-btn" href="LogoutServlet">Logout</button></li>
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
