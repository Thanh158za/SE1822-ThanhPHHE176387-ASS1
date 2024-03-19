
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Detail Product</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <jsp:include page="topbar.jsp"></jsp:include>


            <!-- Navbar Start -->
            <div class="container-fluid">
                <div class="row border-top px-xl-5">

                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                            <a href="" class="text-decoration-none d-block d-lg-none">
                                <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                            </a>
                            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                                <div class="navbar-nav mr-auto py-0">
                                    <a href="home" class="nav-item nav-link">Home</a>
                                    <a href="shop" class="nav-item nav-link">Shop</a>                                    
                                    <a href="detail?pid=${o.id}" class="nav-item nav-link active">Shop Detail</a>                                   
                                <div class="nav-item dropdown">
                                    <c:if test="${sessionScope.acc.isSell == 1 || sessionScope.acc.isAdmin == 1}" >
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Manager</a>
                                    </c:if>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <c:if test="${sessionScope.acc.isSell == 1}">
                                            <a href="manager" class="dropdown-item">Manager Product</a>
                                        </c:if>
                                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                                            <a href="checkout.html" class="dropdown-item">Manager Account</a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                            <div class="navbar-nav ml-auto py-0">
                                <c:if test="${sessionScope.acc != null}">
                                    <a href="#" class="nav-item nav-link">Hello ${sessionScope.acc.username}</a>
                                    <a href="logout" class="nav-item nav-link">Logout</a>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}">
                                    <a href="login.jsp" class="nav-item nav-link">Login</a>                               
                                </c:if>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Page Header Start -->
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Shop Detail</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="home">Home</a></p>
                    <p class="m-0 px-2">-</p>
                    <p class="m-0">Shop Detail</p>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Shop Detail Start -->
        <div class="container-fluid py-5">
            <div class="row px-xl-5">
                <div class="col-lg-5 pb-5">
                    <div id="product-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner border">
                            <div class="carousel-item active">
                                <img class="w-100 h-100" src="img/${detail.image}" alt="Image">
                            </div>

                        </div>
                        <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                            <i class="fa fa-2x fa-angle-left text-dark"></i>
                        </a>
                        <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                            <i class="fa fa-2x fa-angle-right text-dark"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-7 pb-5">
                    <h3 class="font-weight-semi-bold">${detail.name}</h3>

                    <h3 class="font-weight-semi-bold mb-4">${detail.price}</h3>
                    <p class="mb-4">${detail.title}</p>

                    <div class="d-flex mb-4">
                        <p class="text-dark font-weight-medium mb-0 mr-3">Colors:</p>
                        <form>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="color-1" name="color">
                                <label class="custom-control-label" for="color-1">${detail.color}</label>
                            </div>

                        </form>
                    </div>
                    <div class="d-flex align-items-center mb-4 pt-2">
                        <div class="input-group quantity mr-3" style="width: 130px;">
                            <div class="input-group-btn">
                                <button class="btn btn-primary btn-minus" style="padding: 5px 10px" >
                                    <i class="fa fa-minus"></i>
                                </button>
                            </div>
                            <input type="text" class="form-control bg-secondary text-center" value="1">
                            <div class="input-group-btn">
                                <button class="btn btn-primary btn-plus" style="padding: 5px 10px">
                                    <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <button class="btn btn-primary px-3" style="padding-bottom: 5px;padding-top: 5px;"><i class="fa fa-shopping-cart mr-1"></i>Add To Cart</button>
                    </div>

                </div>
            </div>
            <div class="row px-xl-5">
                <div class="col">
                    <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                        <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Description</a>

                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab-pane-1">
                            <h4 class="mb-3">Product Description</h4>
                            <p>${detail.description}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Detail End -->


        <!-- Products Start -->
        <div class="container-fluid py-5">
            <div class="text-center mb-4">
                <h2 class="section-title px-5"><span class="px-2">You May Also Like</span></h2>
            </div>
            <div class="row px-xl-5">

                <div class="col">

                    <div class="owl-carousel related-carousel">
                        <c:forEach items="${newList}" var="o">
                            <div class="card product-item border-0">
                                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                    <img class="img-fluid w-100" src="./img/${o.image}" alt="">
                                </div>
                                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                    <h6 class="text-truncate mb-3">${o.name}</h6>
                                    <div class="d-flex justify-content-center">
                                        <h6>${o.price}</h6><h6 class="text-muted ml-2"><del>${o.price}</del></h6>
                                    </div>
                                </div>
                                <div class="card-footer d-flex justify-content-between bg-light border">
                                    <a href="detail?pid=${o.id}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                                    <a href="cart.jsp" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>

            </div>
        </div>

        <!-- Products End -->


        <jsp:include page="footer.jsp"></jsp:include>


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up" style="padding: 10px; border: none;"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>
