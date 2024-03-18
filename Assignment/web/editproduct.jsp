<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Product</title>
        <link href="css/editproduct.css" rel="stylesheet">
    </head>

    <body>
        <!-- Main div code -->
        <div id="main">
            <div class="h-tag">
                <h2>Edit Product</h2>
            </div>
            <!-- create account div -->
            <div class="login">
                <form action="edit" method="post">
                    <table cellspacing="2" align="center" cellpadding="8" border="0">
                        <tr>
                            <td align="right">ID :</td>
                            <td><input name="id" value="${detail.id}" type="text" placeholder="ID" class="tb" readonly=""/></td>
                        </tr>
                        
                        <tr>
                            <td align="right">Name :</td>
                            <td><input name="name" value="${detail.name}" type="text" placeholder="Name" class="tb" /></td>
                        </tr>
                        <tr>
                            <td align="right">Image :</td>
                            <td><input name="image" value="${detail.image}" type="text" placeholder="Image" class="tb" /></td>
                        </tr>
                        <tr>
                            <td align="right">Price :</td>
                            <td><input name="price" value="${detail.price}" type="number" placeholder="Price" class="tb" /></td>
                        </tr>
                        <tr>
                            <td align="right">Title :</td>
                            <td><textarea id="title" name="title" required>${detail.title}</textarea></td>

                        </tr>
                        <tr>
                            <td align="right">Description :</td>                        
                            <td><textarea id="description" name="description" required>${detail.description}</textarea></td>
                        </tr>
                        <tr>
                            <td align="right">Color :</td>
                            <td><input name="color" value="${detail.color}" type="text" placeholder="Color" class="tb" /></td>
                        </tr>
                        <tr>
                            <td align="right">Quantity :</td>
                            <td><input name="quantity" value="${detail.quantity}" type="number" placeholder="Quantity" class="tb" /></td>
                        </tr>
                        <tr>
                            <td align="right">Category :</td>
                            <td class="category">
                                <select id="category" name="category" required>
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.cid}">${o.cName}</option>
                                    </c:forEach>
                                    <!-- Add more options as needed -->
                                </select><br><br>
                            </td>
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