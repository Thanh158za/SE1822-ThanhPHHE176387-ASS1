<%-- 
    Document   : editseller
    Created on : Mar 18, 2024, 4:41:30 PM
    Author     : ThanhPham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Seller</title>
        <link href="css/editproduct.css" rel="stylesheet">
    </head>

    <body>
        <!-- Main div code -->
        <div id="main">
            <div class="h-tag">
                <h2>Edit Seller</h2>
            </div>
            <!-- create account div -->
            <div class="login">
                <form action="editseller" method="post">
                    <table cellspacing="2" align="center" cellpadding="8" border="0">
                        <tr>
                            <td align="right">ID :</td>
                            <td><input name="id" value="${detail.id}" type="text" placeholder="ID" class="tb" readonly=""/></td>
                        </tr>
                        
                        <tr>
                            <td align="right">User Name :</td>
                            <td><input name="name" value="${detail.username}" type="text" placeholder="Name" class="tb" readonly=""/></td>
                        </tr>
                        <tr>
                            <td align="right">Full Name :</td>
                            <td><input name="image" value="${detail.fullname}" type="text" placeholder="Image" class="tb" readonly=""/></td>
                        </tr>
                        <tr>
                            <td align="right">Email :</td>
                            <td><input name="price" value="${detail.email}" type="number" placeholder="Price" class="tb" readonly=""/></td>
                        </tr>
                        <tr>
                            <td align="right">Seller :</td>
                            <td><input name="sell" value="${detail.isSell}" type="text" placeholder="ID" class="tb"/></td>
                        </tr>                      
                        <tr>
                            <td></td>
                            <td>                           
                                <input type="submit" value="Edit" class="btn" /></td>
                        </tr>
                    </table>
                </form>
            </div>
            <!-- create account box ending here.. -->
        </div>
        <!-- Main div ending here... -->
    </body>
</html>
