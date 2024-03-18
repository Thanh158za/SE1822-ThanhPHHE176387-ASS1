<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
    <a href="home" class="text-decoration-none d-block d-lg-none">
        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
    </a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
        <div class="navbar-nav mr-auto py-0">
            <a href="home" class="nav-item nav-link active">Home</a>
            <a href="shop" class="nav-item nav-link">Shop</a>                                                             

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
                <a href="editaccount?id=${sessionScope.acc.getId()}" class="nav-item nav-link">Hello ${sessionScope.acc.username}</a>
                <a href="logout" class="nav-item nav-link">Logout</a>
            </c:if>
            <c:if test="${sessionScope.acc == null}">
                <a href="login.jsp" class="nav-item nav-link">Login</a>                               
            </c:if>
        </div>
    </div>
</nav>

