<%-- 
    Document   : sidebar
    Created on : Aug 13, 2022, 6:23:13 PM
    Author     : LAPTOP KIM ANH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <div class="sb-sidenav-menu-heading">Core</div>
                <a class="nav-link" href="DashboardServlet">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Dashboard
                </a>
                <div class="sb-sidenav-menu-heading">Interface</div>
                <a class="nav-link collapsed" href="IndexCategoryServlet" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Categories
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="IndexCategoryServlet">Categories</a>
                        <a class="nav-link" href="CreateCategoryServlet">Add New</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="IndexProductServlet" data-bs-toggle="collapse" data-bs-target="#collapseProducts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Products
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseProducts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="IndexProductServlet">Products</a>
                        <a class="nav-link" href="CreateProductServlet">Add New</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="IndexUserServlet" data-bs-toggle="collapse" data-bs-target="#collapseProducts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Users
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseProducts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="IndexUserServlet">Users</a>
                        <a class="nav-link" href="CreateUserServlet">Add New</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="IndexOrderServlet" data-bs-toggle="collapse" data-bs-target="#collapseProducts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Order
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseProducts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="IndexOrderServlet">Order</a>
                    </nav>
                </div>
                 <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseProducts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Order Detail
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseProducts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="IndexOrderDetailServlet">Order Detail</a>
                    </nav>
                </div>
            </div>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
            Adminstrator
        </div>
    </nav>
</div>
