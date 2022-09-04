<%-- 
    Document   : checkout
    Created on : Aug 26, 2022, 4:34:28 PM
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
        <title>Infomation - Moocha - Tea Shop</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
              integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="/css/base.css">
        <link rel="stylesheet" href="/css/checkout.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <section class="checkout-page">
            <div class="container-fluid">
                <div id="first-row">
                    <div class="info-left col-md-7">
                        <h1>Moocha- Tea Shop & Organic Store Responsive Shopify Theme</h1>
                        <div class="checkout-tag">
                            <p><a href="#">Cart</a> > Infomation > <a href="">Shipping</a> > <a href="">Payment</a> </p>
                        </div>
                        <div class="login-question">
                            <div class="row">
                                <div class="col-md-6">
                                    <h2>Contact infomation</h2>
                                </div>
                                <div class="col-md-6">
                                    <p>Already have an account? &nbsp;<a href="">Log in</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="checkout-form">
                            <form action="" class="info-form">
                                <div class="form-floating mb-3">
                                    <input type="email" class="form-control" id="floatingInput"
                                           placeholder="Email or mobile phone number">
                                    <label for="floatingInput">Email or mobile phone number</label>
                                </div>
                                <div class="checkbox-div">
                                    <input type="checkbox" id="checkbox1">
                                    <label for="checkbox1">Email me with news and offers</label>
                                </div>
                                <h2>Shipping address</h2>
                                <div class="form-floating">
                                    <select class="form-select" id="floatingSelect"
                                            aria-label="Floating label select example">
                                        <option selected>Vietnam</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                    <label for="floatingSelect">Country/region</label>
                                </div>
                                <div class="row g-2">
                                    <div class="col-md">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid"
                                                   placeholder="First name">
                                            <label for="floatingInputGrid">First name (optional)</label>
                                        </div>
                                    </div>
                                    <div class="col-md">
                                        <div class="form-floating">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid2"
                                                       placeholder="Last name">
                                                <label for="floatingInputGrid">Last name</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-floating">
                                    <input type="text" id="address" class="form-control" placeholder="Address">
                                    <label for="address">Address</label>
                                </div>
                                <div class="form-floating">
                                    <input type="text" id="apart-num" class="form-control"
                                           placeholder="Apartment, suite, etc. (optional)">
                                    <label for="apart-num">Apartment, suite, etc. (optional)</label>
                                </div>
                                <div class="form-floating">
                                    <input type="text" id="city" class="form-control" placeholder="City">
                                    <label for="city">City</label>
                                </div>
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="code" placeholder="Postal code (optional)">
                                    <label for="code">Postal code (optional)</label>
                                </div>
                                <div class="checkbox-div">
                                    <input type="checkbox" id="checkbox2">
                                    <label for="checkbox2">Save this infomation for next time</label>
                                </div>
                                <div class=" row info-bottom">
                                    <div class="col-md-6"><a href="CartServlet">&#60 Return to cart</a></div>
                                    <div class="col-md-6"><button type="button" class="btn btn-primary" onclick="location.href = 'ProductsListServlet';">Continue to
                                            shipping</button></div>
                                </div>
                            </form>
                            <hr>
                            <div>
                                <p style="color: gray; font-size:13px;">All rights reserved Moocha- Tea Shop & Organic Store
                                    Responsive Shopify Theme</p>
                            </div>
                        </div>


                    </div>
                    <div class="info-right col-md-5">
                        <c:forEach items="${cart}" var="orderDetailSession">
                            <div class="product-name d-flex mb-3 ">
                                <div class="p-2 position-relative ">
                                    <img src="./public/images/${orderDetailSession.productId}/1.jpg" alt="product-img">
                                    <div>
                                        <span
                                            class=" top-0 start-100 translate-middle badge rounded-pill text-bg-secondary">
                                            ${orderDetailSession.quantity}
                                        </span>
                                    </div>
                                </div>

                                <div class="p-2">
                                    <h4>${orderDetailSession.productName}</h4>
                                    <p>50g /
                                    <p>Oolong tea</p>
                                    </p>
                                </div>
                                <div class="ms-auto p-2">$${orderDetailSession.price}</div>
                            </div>
                            <hr>
                            <div class="d-flex info-shipping">
                                <div class="p-2 w-100">Subtotal</div>
                                <div class="p-2 flex-shrink-1">$${orderDetailSession.price * orderDetailSession.quantity}</div>
                            </div>
                            <div class="d-flex info-shipping">
                                <div class="p-2 w-100">Shipping</div>
                                <div class="p-2 flex-shrink-1">Free</div>
                            </div>
                            <div class="d-flex info-shipping">
                                <div class="p-2 w-100">Taxes (estimated)</div>
                                <div class="p-2 flex-shrink-1">$2.40</div>
                            </div>
                            <hr>
                            <div class="total-price d-flex mb-3">
                                <div class="me-auto p-2">Total</div>
                                <div class="p-2">USD</div>
                                <div class="p-2">
                                    <h6>$${orderDetailSession.price * orderDetailSession.quantity + 2.40}</h6>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>


    </body>

</html>
