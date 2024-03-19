
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Shopping Cart</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <link href="img/favicon.ico" rel="icon">

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <link href="css/style.css" rel="stylesheet">
        <link href="css/add.css" rel="stylesheet">
    </head>

    <body>

        <jsp:include page="topbar.jsp"></jsp:include>

            <div style="margin: 0px 50px;">
            <jsp:include page="menu.jsp"></jsp:include>
            </div>
            <div class="container-fluid bg-secondary mb-5">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="home">Home</a></p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0">Cart</p>
                    </div>
                </div>
            </div>

            <div class="container-fluid pt-5">
                <div class="row px-xl-5">
                    <div class="col-lg-12 table-responsive mb-5">

                        <table class="table table-bordered text-center mb-0">
                            <thead class="bg-secondary text-dark">
                                <tr>                           
                                    <th>ID</th>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th>Quantity</th>
                                    <th>Color</th>
                                    <th>Total Price</th>
                                    <th>Remove</th>

                                </tr>
                            </thead>
                        <c:set var="o" value="${requestScope.cart}"/>
                        <c:set var="tt" value="0"/>
                        <c:forEach items="${o.items}" var="i">
                            <c:set var="tt" value="${tt+1}"/>
                            <tbody class="align-middle">
                                <tr>
                                    <td>${tt}</td>   
                                    <td class="align-middle"><img src="./img/${i.product.image}" alt="" style="width: 50px;"> ${i.product.name}</td>
                                    <td class="align-middle">${i.product.price}</td>
                                    <td class="align-middle">${i.product.title}</td>
                                    <td class="align-middle">${i.product.description}</td>                                            
                                    <td class="align-middle" style="width: 170px;">
                                        <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                                        ${i.quantity}
                                        <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                                    </td>
                                    <td class="align-middle">${i.product.color}</td>
                                    <td class="align-middle">
                                        ${i.price * i.quantity}
                                    </td>                           
                                    <td class="align-middle ">
                                        <form action="process" method="post">
                                            <input type="hidden" name="id" value="${i.product.id}"/>
                                            <input type="submit" class="btn btn-sm btn-primary" value="X"/>
                                        </form>
                                    </td>

                                </tr> 
                            </tbody>
                        </c:forEach>    
                    </table>                   
                </div>                                 
            </div>
            <div  class="col-lg-12">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                    </div>
                    <!--                    <div class="card-body">
                                            <div class="d-flex justify-content-between mb-3 pt-1">
                                                <h6 class="font-weight-medium">Subtotal</h6>
                                                <h6 class="font-weight-medium">$150</h6>
                                            </div>              
                                        </div>-->
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            <h5 class="font-weight-bold">
                                $ ${o.totalMoney}
                            </h5>
                        </div>
                        <form action="checkout" method="post">
                            <input type="submit" value="Check Out" class="btn btn-block btn-primary my-3 py-3" />
                        </form>
                        <a href="home">CLICK HERE TO CONTINUE SHOPPING</a>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

        Back to Top 
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

        JavaScript Libraries 
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        Contact Javascript File 
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        Template Javascript 
        <script src="js/main.js"></script>
    </body>

</html>


<!-------------------------------------------------------------------------------------------------------------->





