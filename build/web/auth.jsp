<%-- 
    Document   : login
    Created on : Aug 2, 2022, 6:43:49 PM
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
        <title>Account - Moocha Tea Shop</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
              integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="./public/css/base.css">
        <link rel="stylesheet" href="./public/css/auth.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <section class="login-page">
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
            <!-- main -->
            <div class="form-box">
                <div class="container-fluid text-center">
                    <div class="row">
                        <div class="form-left col-md-6">

                            <form action="AuthServlet" method="post">
                                <input type="hidden" name="action" value="login"/>
                                <h2>LOGIN</h2>
                                <label>Email address</label>
                                <input name="email" type="email" value="" placeholder="Email address">
                                <br>
                                <label>Password</label>
                                <input id="pass" name="password" type="password" value="" placeholder="Password">
                                <br>
                                <div clas="btn-div"><button type="submit" class="btn-form">LOG IN</button></div>

                                <div class="form-help">
                                    <a href="ProductsListServlet">Return to Store</a>
                                    <a href="">Forgot your password?</a>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">

                            <form action="AuthServlet" method="post" class="form-right">
                                <input type="hidden" name="action" value="register"/>
                                <h2 id="register">REGISTER</h2>
                                <label>Email address</label>
                                <input name="email" type="email" value="" placeholder="Email address">
                                <br>
                                <label>Password</label>
                                <input id="pass" name="password" type="password" value="" placeholder="Password">
                                <br>
                                <div clas="btn-div"><button type="submit" class="btn-form">REGISTER</button></div>
                                <div class="form-help">
                                    <a href="ProductsList">Return to Store</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer -->
            <%@include file="/include/footer.jsp" %>
        </section>


    </body>

</html>