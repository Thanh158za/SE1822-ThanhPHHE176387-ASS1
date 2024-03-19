<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Topbar Start -->
<div class="container-fluid">
    <div class="row bg-secondary py-2 px-xl-5">
        <div class="col-lg-6 d-none d-lg-block">
            <div class="d-inline-flex align-items-center">
                <a class="text-dark" href="">1</a>
                <span class="text-muted px-2">|</span>
                <a class="text-dark" href="">2</a>
                <span class="text-muted px-2">|</span>
                <a class="text-dark" href="">3</a>
            </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                <a class="text-dark px-2" href="https://www.facebook.com/" target="_blank">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a class="text-dark px-2" href="https://www.instagram.com/" target="_blank">
                    <i class="fab fa-instagram"></i>
                </a>
                <a class="text-dark pl-2" href="https://www.youtube.com/" target="_blank">
                    <i class="fab fa-youtube"></i>
                </a>
            </div>
        </div>
    </div>
    <div class="row align-items-center py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="home" class="text-decoration-none">
                <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
            </a>
        </div>
        <div class="col-lg-6 col-6 text-left">
            <form action="search" method="post">
                <div class="input-group">
                    <input name="txt" type="text" class="form-control" placeholder="Search for products">
                    <div class="input-group-append">
                        <button type="submit" class="input-group-text bg-transparent text-primary">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-3 col-6 text-right">
            <a href="show" class="btn border">
                <i class="fas fa-shopping-cart text-primary">${requestScope.size}</i>
                <span class="badge"></span>
            </a>
        </div>
    </div>
</div>
<!-- Topbar End -->
