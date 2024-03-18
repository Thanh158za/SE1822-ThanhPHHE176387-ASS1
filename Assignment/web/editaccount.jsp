<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Edit Account</title>

        <link rel="stylesheet" href="./css/login.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
    <!--        register-->
        <div id="login-container">
            <img class="wave" src="img/wave.png">
            <div class="container">
                <div class="img">
                    <img src="img/bg.svg">
                </div>
                <div class="login-content">
                    <form action="editaccount" method="post" >
                        <img src="img/avatar.svg">                   
                        <h2 class="title">Edit Account</h2>
                        <p class="text-danger">${ms}</p>
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-user"></i>
                            </div>                                                       
                            <div class="div">
                                <input value="${sessionScope.acc.id}" name="id" type="text" class="input" placeholder="ID" readonly="" required>
                            </div>
                            
                        </div>
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-user"></i>
                            </div>                                                       
                            <div class="div">
                                <input value="${sessionScope.acc.email}" name="email" type="email" class="input" placeholder="Email" required>
                            </div>
                            
                        </div>
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-user"></i>
                            </div>                                                       
                            <div class="div">
                                <input value="${sessionScope.acc.username}" name="username" type="text" class="input" placeholder="Username" required>
                            </div>
                            
                        </div>
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-user"></i>
                            </div>                                                       
                            <div class="div">
                                <input value="${sessionScope.acc.fullname}" name="fullname" type="text" class="input" placeholder="Full Name" required>
                            </div>
                            
                        </div>
                        <div class="input-div pass">
                            <div class="i"> 
                                <i class="fas fa-lock"></i>
                            </div>
                            <div class="div">
                                <input value="${sessionScope.acc.pass}" name="password" type="password" class="input" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="input-div pass">
                            <div class="i"> 
                                <i class="fas fa-lock"></i>
                            </div>
                            <div class="div">
                                <input name="newpassword" type="password" class="input" placeholder="New Password" required>
                            </div>
                        </div>                       
                        <input type="submit" class="btn" value="Edit">
                        <a href="login.jsp"><input type="button" class="btn" value="Login" ></a>
                        </div>
                    </form>
                        
                </div>
            </div>
        </div>
        
</body>
</html>
