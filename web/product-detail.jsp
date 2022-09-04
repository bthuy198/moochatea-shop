<%-- 
    Document   : product-detail
    Created on : Aug 4, 2022, 7:10:24 PM
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
        <title>${product.name} - Moocha Tea Shop </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
              integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="./public/css/base.css">
        <link rel="stylesheet" href="./public/css/product-detail.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <section class="product-detail">
            <!-- header -->
            <header class="header-menu">
                <div class="container-fluid">
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
                                        <form action="SearchServlet">
                                            <input type="text" placeholder="Search here" name="search">
                                            <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                                        </form>
                                    </div>

                                </li>
                                <li class="icon">
                                    <div>
                                        <a href=""><i class="fa-solid fa-user"></i>
                                            <ul class="user-menu">
                                                <li><button type="button" class="btn btn-outline-dark icon-btn" id="login-btn" onclick="location.href = 'AuthServlet'">Login</button></li>
                                                <li>
                                                    <form action="LogoutServlet" method="get">
                                                    <button type="button" class="btn btn-outline-dark icon-btn">Logout</button>
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
                </div>
            </header>
            <!-- sub-menu -->
            <div class="sub-menu container-fluid">
                <div class="row">
                    <div class="sub-menu-left col">
                        <p><a href="home.jsp" style="text-decoration:none">Home</a> > Anxi Tie Guan Yin</p>
                    </div>
                    <div class="col">
                        <div class="sub-menu-right">
                            <a href="" style="text-decoration:none"> &#60 &#160; Pre </a>
                            <p style="color:#a8a8a8"> &ensp; | &ensp;</p> <a href="" style="text-decoration:none"> Next
                                &#160; ></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-info & sidebar -->
            <form action="OrderServlet" method="post">
                <input type="hidden" name="action" value="creat"/>
                <input type="hidden" name="productId" value="${product.id}"/>
                <input type="hidden" name="productName" value="${product.name}"/>
                <input type="hidden" name="price" value="${product.price}"/>
                <input type="hidden" name="img" value="${product.img}"/>
                <div class="main-content">
                    <div class="container-fluid text-center">
                        <div class="row justify-content-md-center">
                            <div class="col-md-5">
                                <div class="gallery-control">
                                    <div class="small-img">
                                        <img src="${product.img}" alt="" onclick="myFunction(this)">
                                        <img src="./public/images/${product.id}/2.jpg" alt="" onclick="myFunction(this)">
                                        <img src="./public/images/${product.id}/3.jpg" alt="" onclick="myFunction(this)">
                                        <img src="./public/images/${product.id}/1.jpg" alt="" onclick="myFunction(this)">
                                    </div>
                                    <div class="img-container">
                                        <img id="imageBox" src="${product.img}" alt="">
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="detail-info">
                                    <h3>${product.name}</h3>
                                    <p class="price">$${product.price} USD</p>
                                    <p class="rate">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        No reviews
                                    </p>
                                    <hr>
                                    <p class="desc">${product.desc}</p>
                                    <div class="size-box">
                                        <p>SIZE:</p>
                                        <div class="size">50G</div>
                                        <div class="size">100G</div>
                                        <div class="size">250G</div>
                                        <div class="size">500G</div>
                                    </div>
                                    <div class="type">
                                        <p>TYPE:</p>
                                        <div class="type-name">${product.id}</div>
                                    </div>
                                    <div class="quantity">
                                        <div class="number-input">
                                            <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                    class="minus"></button>
                                            <input class="quantity-num" min="1" name="quantity" value="1" type="number">
                                            <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                    class="plus"></button>
                                        </div>
                                        <button type="submit" id="add-to-cart">ADD TO CART</button>
                                    </div>
                                    <div class="btn-box">
                                        <button>BUY IT NOW</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="sidebar">
                                    <div class="sidebar-content">
                                        <div class="choose">
                                            <h4>Why Choose Us?</h4>
                                            <p>Official Herschel stockist Australian warranty assistance & support Australian
                                                shipping &
                                                returns.Customer first experience environmentally focused</p>
                                        </div>
                                    </div>
                                    <div class="sidebar-content">
                                        <div class="return">
                                            <h4>Returns</h4>
                                            <p>Return this product within 100 days if you change your mind. Get a
                                                refund/replacement
                                                & free return shipping if it arrives damaged or not as described</p>
                                        </div>
                                    </div>
                                    <div class="sidebar-content">
                                        <div class="shipping">
                                            <h4>Shipping</h4>
                                            <p>Free if stated near price. $9.95 Australia wide (up to 10 items). $18.95 for
                                                Express
                                                Post (generally 1 business day).</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </form>
            <!-- description tabs-->
            <hr>
            <div class="container-fluid tabs-cont">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#desc">Description</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#add-info">Additional Information</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#review">Review</a>
                    </li>
                </ul>
                <hr>
                <div class="tab-content">
                    <div class="tab-pane active" id="desc">
                        <div class="row desc-tab">
                            <div class="col p-4">
                                <p>${product.desc}</p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="add-info">
                        <div class="row info-tab">
                            <div class="content-title">
                                <p>MORE INFORMATION TO YOU</p>
                                <h3>Things You Need To Know</h3>
                            </div>
                            <div class="content-add-info">
                                <div class="col-md-4 info-left">
                                    <div class="content-center">
                                        <p>We use industry standard SSL encryption to protect your details. Potentially
                                            sensitive information such as your name, address and card details are encoded so
                                            they can only be read on the secure server.</p>
                                    </div>
                                    <br>
                                    <div class="content-bottom">
                                        <ul>
                                            <li>Safe Payment</li>
                                            <li>Accept Credit Cart</li>
                                            <li>Different Payment Method</li>
                                            <li>Price Include VAT</li>
                                            <li>Easy To Order</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="delivery-info">
                                        <div class="info-top">
                                            <h4>Express Delivery</h4>
                                            <ul>
                                                <li>Europe & USA within 2-4 days</li>
                                                <li>Rest of the world within 3-7 days</li>
                                                <li>Selected locations</li>
                                            </ul>
                                        </div>
                                        <div class="info-under">
                                            <h4>Need More Information</h4>
                                            <ul>
                                                <li><a href="">Orders & Shipping</a></li>
                                                <li><a href="">Returns & Refunds</a></li>
                                                <li><a href="">Payments</a></li>
                                                <li><a href="">Your Orders</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="add-img">
                                        <img src="./public/images/${product.id}/1.jpg" alt="" height="430px">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="review">
                        <div class="row review-tab">
                            <div class="col p-4">
                                <div class="review-row">
                                    <p>No reviews yet</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <hr>
            <!-- relate products -->
            <!-- footer -->
            <%@include file="./include/footer.jsp" %>
        </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
        crossorigin="anonymous"></script>
        <script>
                                                function myFunction(smallImg) {
                                                    var fullImg = document.getElementById('imageBox');
                                                    fullImg.src = smallImg.src;
                                                }
        </script>
    </body>

</html>
