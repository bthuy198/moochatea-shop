<%-- 
    Document   : cart
    Created on : Aug 6, 2022, 4:37:13 PM
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
        <title>Your Shopping Cart - Moocha Tea Shop</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
              integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="./public/css/base.css">
        <link rel="stylesheet" href="./public/css/product-list.css">
        <link rel="stylesheet" href="./public/css/cart.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <section class="cart-page">
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
            <!-- content-menu -->
            <div class="content-menu">
                <div class="content-menu-heading">
                    <h1 class="title">Cart</h1>
                </div>
                <div class="content-menu-tag">
                    <p><a href="#" style="text-decoration:none;">Home</a> > Your Shopping Cart</p>
                </div>
            </div>
            <!-- cart-control -->

            <div class="cart-control">
                <table width="100%">
                    <thead>
                        <tr>
                            <th>PRODUCT NAME</th>
                            <th></th>
                            <th>PRICE</th>
                            <th>QUANTITY</th>
                            <th>TOTAL</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${cart}" var="orderDetailSession">
                            <tr>
                                <td>
                                    <img src="./public/images/${orderDetailSession.productId}/1.jpg" alt="product image" height="100px">
                                <td><a href="">${orderDetailSession.productName}</a>
                                    <p>${orderDetailSession.productName}</p>
                                </td>
                                </td>
                                <td>$${orderDetailSession.price}</td>
                                <td class="quantity">${orderDetailSession.quantity}</td>
                                <td>$${orderDetailSession.price * orderDetailSession.quantity}</td>
                                <td>
                                    <form action="OrderServlet" method="post" >
                                        <input type="hidden" name="action" value="delete"/>
                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                        <button style="border-style: none; background: none" type="submit"><i class="fa-solid fa-xmark" style="font-size:20px"></i></button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <!-- cart-button -->
            <div class="cart-button">
                <button>UPDATE CART</button>
                <button onclick="location.href = 'ProductsListServlet';">CONTINUE SHOPPING</button>
            </div>
            <!-- checkout -->

            <div class="checkout">
                <table width="100%">
                    <c:forEach items="${cart}" var="orderDetailSession">
                        <thead>
                            <tr>
                                <th>CART TOTALS
                                    <br>
                                    <hr>
                                </th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <h5>Total:</h5>
                                    <p>$${orderDetailSession.price * orderDetailSession.quantity}</p>
                                </td>

                            </tr>
                            <tr>
                                <td><button onclick="location.href = 'CheckoutServlet';">PROCEED TO CHECKOUT</button></td>
                            </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </div>
            <!-- footer -->
            <%@include file="/include/footer.jsp" %>
        </section>
    </body>

</html>
