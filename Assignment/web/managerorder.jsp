<%-- 
    Document   : managerorder.jsp
    Created on : Mar 20, 2024, 6:26:34 PM
    Author     : ThanhPham
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Manager Order</title>
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
        <link href="css/add.css" rel="stylesheet">
    </head>

    <body>

        <jsp:include page="topbar.jsp"></jsp:include>
        
        <div style="margin: 0px 50px;">
        <jsp:include page="menu.jsp"></jsp:include>
        </div>
            <!-- Page Header Start -->
            <div class="container-fluid bg-secondary mb-5">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Manager Order</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="home">Home</a></p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0">Manager Order</p>
                    </div>
                </div>
            </div>
        
            <!-- Page Header End -->


            <!-- Cart Start -->

            <div class="container-fluid pt-5">                 
                <div class="row px-xl-5">
                    <div class="col-lg-12 table-responsive mb-5">
                        <table class="table table-bordered text-center mb-0">
                            <thead class="bg-secondary text-dark">
                                <tr>                           
                                    <th>Full Name</th>
                                    <th>Email</th>
                                    <th>Product Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Total Price</th>
                                </tr>
                            </thead>
                            <tbody class="align-middle">
                            <c:forEach items="${list}" var="o">
                                <tr>
                                    <td class="align-middle">${o.fullname}</td>
                                    <td class="align-middle">${o.email}</td>
                                    <td class="align-middle">${o.productName}</td>
                                    <td class="align-middle">${o.quantity}</td>
                                    <td class="align-middle">${o.price}</td>
                                    <td class="align-middle">${o.price * o.quantity}</td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                </div>                                 
            </div>
            <div class="col-lg-12">              
                <div class="card border-secondary mb-5">                    
                    <div class="card-footer border-secondary bg-transparent">                       
                        <a href="home"><button class="btn btn-block btn-primary my-3 py-3">Home</button><a/>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart End -->
 
        <!--    footer-->
        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

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

